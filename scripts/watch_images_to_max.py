"""Monitor a folder, identify the main cooking subject, and send its name to Max.

The API key is read from DASHSCOPE_API_KEY. It is never stored or printed.
"""

from __future__ import annotations

import argparse
import base64
import io
import json
import math
import os
import queue
import re
import stat
import sys
import subprocess
import threading
import time
from dataclasses import dataclass
from pathlib import Path
from typing import Any

import requests
from PIL import Image, ImageChops, ImageFilter, ImageOps, ImageStat
from urllib3.util import Timeout as HTTPTimeout
from pythonosc.dispatcher import Dispatcher
from pythonosc.osc_server import ThreadingOSCUDPServer
from pythonosc.udp_client import SimpleUDPClient

from runtime_display import format_runtime_summary, SpecialProgressReport, ReportingOSCClient
from solo_fry_progress import SoloFryTimeline, ChopTimeline
from cooking_stage import ServingPlan, CookingStageTracker, is_serving_observation
from startup_frame import cache_first_frame, resolve_startup_video
from live_event_capture import LiveEventCapture
from analysis_pipeline import AnalysisCompletion, AnalysisPipeline, DEFAULT_ANALYSIS_INTERVAL_SECONDS
from recognition_trace import RecognitionTrace, TracingOSCClient, source_fingerprints
from fast_events import (CaptureMarker, EventAnalyzer, EventTask, FastEventChannel,
                         TokenLedger, EVENT_IMAGE_NAME, EVENT_MODEL, EVENT_INTERVAL,
                         event_image_url)

from cooking_fusion import (
    ALLOWED_INGREDIENTS,
    ALLOWED_INGREDIENT_TOKENS,
    PlaybackMapping,
    PlaybackState,
    SubjectStabilizer,
    TimelineGuide,
    WholeCountStabilizer,
    allowed_subject_group,
    clamp_confidence,
    infer_playback_mapping,
    playback_mapping_for_clip,
    normalize_count_observations,
    subject_group_to_english,
    subject_to_english,
)


if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8", errors="replace")
if hasattr(sys.stderr, "reconfigure"):
    sys.stderr.reconfigure(encoding="utf-8", errors="replace")


# You can fill this in later, or pass --folder when starting the script.
WATCH_FOLDER = r""

POLL_INTERVAL_SECONDS = 0.1
PROGRESS_OSC_INTERVAL_SECONDS = 0.1
PLAYBACK_PROGRESS_JUMP_TOLERANCE_SECONDS = 0.25
PROCESS_EXISTING_IMAGES = True
DROP_OLD_PENDING_IMAGES = True
MAX_IMAGE_EDGE = 960
JPEG_QUALITY = 88
API_REQUEST_BUDGET_SECONDS = 4.0
MAX_RESULT_AGE_SECONDS = 4.0

OSC_HOST = "127.0.0.1"
OSC_PORT = 9000
DEFAULT_MODEL = "qwen3.7-flash"
PROJECT_ROOT = Path(__file__).resolve().parents[1]
USAGE_STATE_PATH = PROJECT_ROOT / "analysis" / "token_usage.json"
LEGACY_TIMELINE_PATH = (
    PROJECT_ROOT
    / "analysis"
    / "variants"
    / "qwen3.7-flash-1fps-labels"
    / "timeline.json"
)
WHOLE_COUNT_TIMELINE_PATH = (
    PROJECT_ROOT
    / "analysis"
    / "variants"
    / "whole-count-preanalysis"
    / "timeline.json"
)
DEFAULT_TIMELINE_PATH = (
    WHOLE_COUNT_TIMELINE_PATH if WHOLE_COUNT_TIMELINE_PATH.is_file() else LEGACY_TIMELINE_PATH
)

SUPPORTED_EXTENSIONS = {".jpg", ".jpeg", ".png", ".webp", ".bmp", ".gif"}
OSC_INGREDIENT_COUNT_ADDRESS = "/ingredient/count"
OSC_RAW_SUBJECT_ADDRESS = "/ingredient/raw"
OSC_TIMELINE_SUBJECT_ADDRESS = "/ingredient/timeline"
OSC_REALTIME_COLOR_ADDRESS = "/realtime/color"
OSC_REALTIME_SHAPE_ADDRESS = "/realtime/shape"
OSC_REALTIME_AREA_ADDRESS = "/realtime/area"
OSC_REALTIME_CUTTING_ADDRESS = "/realtime/cutting"
OSC_REALTIME_CONFIDENCE_ADDRESS = "/realtime/confidence"
OSC_CURRENT_TOKENS_ADDRESS = "/token/current"
OSC_CUMULATIVE_TOKENS_ADDRESS = "/token/total"
OSC_PLAYBACK_PROGRESS_ADDRESS = "/playback/progress"
PLAYBACK_OSC_HOST = "127.0.0.1"
PLAYBACK_OSC_PORT = 9001

# Short OSC addresses used by the Max interface.  Ingredient presence and its
# remembered cooking stage share one deliberately direct message:
# /ingredient <name> <whole_count> <stage> <stage_progress>
OSC_INGREDIENT_ADDRESS = "/ingredient"
OSC_PROCESS_ADDRESS = "/process"
OSC_EVENT_ADDRESS = "/event"

SYSTEM_PROMPT = """分析当前做菜图片，严格返回单行紧凑JSON，无缩进、解释或多余字段。所有判断仅用本帧明确可见证据，不猜画外、历史或时间线；清晰食材字幕可优先参考。仅识别""" + ", ".join(ALLOWED_INGREDIENT_TOKENS) + """；其他食材不报，也不可冒充菜单食材。"""

USER_PROMPT = """用短键按模板输出全部字段。sc食材判断、cc计数、各对象c均为0～1置信度；名称/类型用下述英文标签；可见证据true/false，不确定null。
{"i":[{"n":"pork","l":"active_container","w":null,"cc":0.9,"b":"uncertain"}],"is":"visible","sc":0.9,"p":{"a":"chop","t":["pork"],"pan":false,"add":false,"empty":false,"c":0.9},"d":{"transfer":false,"serve":false,"done":false,"s":"not_finished","c":0.9}}

i全列、去重，包括旁边备料，不限动作目标。n：pork猪肉；green_pepper较大青椒；garlic大蒜；egg含蛋液/炒蛋；small_chili小米椒/小米辣，细小尖椒可红可绿，依据形状而非仅颜色。小米辣、蒜末等会被肉菜遮盖，留意边缘和翻动露出的小块。同批已确认名单仅辅助查找，不能冒充本帧可见证据；连续烹饪中的漏检/遮挡不代表移除或换批，持续保留由脚本维护。is：visible有可辨食材，none明确无菜单食材（i=[]），uncertain遮挡/模糊。
l位置：active_container主体工作区/容器内；held_container展示/待倒入的手持盘碗；background未操作的旁边备料；unknown不明。w原始完整个数：可靠确认的正整数，否则null；两半/多片/碎末不能重复计数。b计数依据：whole_visible完整可见，reconstructed_whole可还原，uncertain不确定。
p.a按实际操作：wash洗；chop须看见刀在砧板上切割，锅铲拨动、勺子刮碗、已切块均不算；marinate生肉与调料抓拌/腌制；stir_fry受热煎炒；transfer熟菜从锅中盛出；plate兼容装盘标签；idle无动作/展示；unknown不明。p.t仅直接处理的食材，不含背景备料。只报本帧动作，不猜盛出后备用还是上桌，不分类容器；最终用途由脚本结合完整视频前后文判断。
加料方向：盘碗中的肉/菜/蛋进入锅→p.add=true，不是切菜、腌制或装盘；已在锅内煎炒才报stir_fry，否则idle。勺刮碗不等于刀切，手持碗不替代主体锅。egg须有可区分的蛋液或独立蛋块；肉表面黄色挂浆、裹粉及油光不另报egg，遮挡不猜。
盛出优先：满载熟菜的勺向接收位置送菜、倾锅倒菜、或勺朝已装同种熟菜的位置移动→transfer、d.serve=true、p.pan=false；单纯抬勺/旁边有碗/手扶盘不算盛出。d.transfer指熟菜正被盛到锅外。p.add指食材正进入锅，展示不算。p.pan指确在受热煎炒，盛取不算；false不能报stir_fry。p.empty=true仅限清楚看到当前操作锅的空底，油/残渣不算食材；没有锅、漏认、遮挡均不能算空锅，无法确认用null；洗切、腌制、盛出及成品展示时用null。
d.s：plating正在盛出，not_finished备料/烹饪，uncertain不明；盛菜已结束且明确在展示最终成品→finished、d.done=true、idle，端盘移动也算。盛出备用、锅内熟菜、只有盘子不算成品；仍在补菜/刮锅必须d.done=false。"""


def expand_main_response(raw: dict[str, Any]) -> dict[str, Any]:
    """Restore full field names before the existing recognition/OSC logic."""
    def require(value, keys):
        if not isinstance(value, dict) or not set(keys).issubset(value):
            raise ValueError("Incomplete recognition response")

    def expand(value, names):
        if not isinstance(value, dict):
            return value
        return {names.get(key, key): item for key, item in value.items()}

    result = expand(raw, {"i": "ingredients", "is": "ingredient_status",
                         "sc": "subject_confidence", "p": "process",
                         "d": "dish_status"})
    # Ignore an old sender's removed vessel block; it is not recognition input.
    for obsolete in ("v", "container", "容器"):
        result.pop(obsolete, None)
    if isinstance(result.get("ingredients"), list):
        result["ingredients"] = [expand(item, {
            "n": "name", "l": "location", "w": "whole_count",
            "cc": "count_confidence", "b": "count_basis"}) for item in result["ingredients"]]
    for key, names in (
        ("process", {"a": "action", "t": "target_ingredients", "pan": "in_pan_cooking_visible",
                     "add": "ingredient_addition_visible", "empty": "empty_vessel_visible", "c": "confidence"}),
        ("dish_status", {"transfer": "food_transfer_visible", "serve": "serving_sequence_visible",
                         "done": "finished_dish_visible", "s": "status", "c": "confidence"}),
    ):
        if key in result:
            result[key] = expand(result[key], names)
    require(result, ("ingredients", "ingredient_status", "subject_confidence", "process",
                     "dish_status"))
    if not isinstance(result["ingredients"], list):
        raise ValueError("Invalid recognition arrays")
    for ingredient in result["ingredients"]:
        require(ingredient, ("name", "location"))
        if not {"whole_count", "count_confidence", "count_basis"}.issubset(ingredient):
            # An incomplete auxiliary count is unknown, not a reason to lose
            # valid current food/action evidence or guess a count confidence.
            ingredient.update(whole_count=None, count_confidence=0.0, count_basis="uncertain")
    require(result["process"], ("action", "target_ingredients", "in_pan_cooking_visible",
                                "ingredient_addition_visible", "empty_vessel_visible", "confidence"))
    require(result["dish_status"], ("food_transfer_visible", "serving_sequence_visible",
                                    "finished_dish_visible", "status", "confidence"))
    return result


@dataclass(frozen=True)
class ImageTask:
    path: Path
    signature: tuple[int, int]
    generation: int = 0
    playback_seconds: float | None = None
    image_data_url: str | None = None
    captured_at: float = 0.0


class LatestCapturedFrame:
    """Keep a newer frozen capture while its API request is still pending."""

    def __init__(self) -> None:
        self._latest: ImageTask | None = None
        self._lock = threading.Lock()

    def record(self, task: ImageTask) -> None:
        if task.image_data_url is None or task.playback_seconds is None:
            return
        with self._lock:
            self._latest = task

    def after(self, analyzed: ImageTask) -> ImageTask | None:
        with self._lock:
            latest = self._latest
        if (latest is None or latest.generation != analyzed.generation
                or latest.path != analyzed.path or latest.signature == analyzed.signature
                or analyzed.playback_seconds is None or latest.playback_seconds is None
                or latest.playback_seconds <= analyzed.playback_seconds
                or latest.captured_at <= analyzed.captured_at
                or time.monotonic() - latest.captured_at > 2.0):
            return None
        return latest


class MainFrameInput:
    """Feed current decoder frames; keep Max screenshots as a fallback."""

    def __init__(self, incoming, playback_state, recent_frames, trace=None, drop_old=True,
                 *, continuous=False):
        self.incoming, self.state, self.recent = incoming, playback_state, recent_frames
        self.trace, self.drop_old = trace, drop_old
        self.generation = None
        self.continuous = continuous
        self._last_video = None
        self._lock = threading.Lock()

    def submit(self, task, source="max_capture", *, first_only=False):
        with self.state._lock, self._lock:
            if (self.state.running is False or task.generation != self.state.generation
                    or task.playback_seconds is None
                    or not 0 <= time.monotonic() - task.captured_at <= MAX_RESULT_AGE_SECONDS):
                return False
            if first_only and self.generation == task.generation:
                return False
            self.generation = task.generation
            self.recent.record(task)
            if self.trace is not None:
                self.trace.task("capture_queued", task, source=source)
            enqueue_latest(self.incoming, task, self.drop_old)
            return True

    def from_video(self, task):
        accepted = self.submit(ImageTask(task.path, task.signature, task.generation,
                                         task.playback_seconds, task.image_data_url, task.captured_at),
                               "live_video_frame" if self.continuous else "startup_current_video_frame",
                               first_only=not self.continuous)
        if accepted:
            with self._lock:
                self._last_video = (task.generation, task.captured_at)
        return accepted

    def live_capture_active(self):
        with self.state._lock, self._lock:
            return (self.continuous and self.state.running is not False
                    and self._last_video is not None
                    and self._last_video[0] == self.state.generation
                    and 0 <= time.monotonic() - self._last_video[1] <= 1.5)


class QwenImageAnalyzer:
    def __init__(self, api_key: str, model: str, base_url: str) -> None:
        self.api_key = api_key
        self.model = model
        self.base_url = base_url.rstrip("/")
        self.session = requests.Session()

    def analyze(self, image_path: Path, image_data_url: str | None = None,
                *, confirmed_foods: str = "未知") -> tuple[dict[str, Any], dict[str, int]]:
        image_data_url = image_data_url or make_image_data_url(image_path)
        hint = allowed_subject_group(confirmed_foods)
        prompt = USER_PROMPT
        if hint != "未知":
            prompt += "\n本批已确认（仅辅助查找）：" + subject_group_to_english(hint) + "。"
        payload = {
            "model": self.model,
            "messages": [
                {"role": "system", "content": SYSTEM_PROMPT},
                {
                    "role": "user",
                    "content": [
                        {"type": "text", "text": prompt},
                        {"type": "image_url", "image_url": {"url": image_data_url}},
                    ],
                },
            ],
            # JSON mode was measured to force expanded multi-line output on
            # this endpoint. The prompt requests compact JSON instead; parse
            # and field validation reject incomplete responses before OSC.
            "enable_thinking": False,
            "temperature": 0.0,
            "max_tokens": 700,
        }

        response: requests.Response | None = None
        deadline = time.monotonic() + API_REQUEST_BUDGET_SECONDS
        for attempt in range(3):
            remaining = deadline - time.monotonic()
            if remaining <= 0:
                break
            response = self.session.post(
                f"{self.base_url}/chat/completions",
                headers={
                    "Authorization": f"Bearer {self.api_key}",
                    "Content-Type": "application/json",
                },
                json=payload,
                timeout=HTTPTimeout(total=remaining, connect=remaining, read=remaining),
            )
            if response.status_code not in {429, 500, 502, 503, 504}:
                break
            if attempt < 2:
                remaining = deadline - time.monotonic()
                if remaining <= 0:
                    break
                time.sleep(min(2**attempt, remaining))

        assert response is not None
        if not response.ok:
            raise RuntimeError(f"Qwen API {response.status_code}: {response.text[:500]}")

        envelope = response.json()
        content = normalize_content(envelope.get("choices", [{}])[0].get("message", {}).get("content"))
        return normalize_result(expand_main_response(extract_json(content))), normalize_usage(envelope.get("usage"))


def make_image_data_url(image_path: Path) -> str:
    # Decode a frozen, fully written snapshot. A complete JPEG needs no fixed
    # 300 ms stability delay; incomplete/changing writes retry briefly.
    deadline = time.monotonic() + 1.0
    while True:
        try:
            signature = image_signature(image_path)
            snapshot = image_path.read_bytes()
            if image_signature(image_path) != signature:
                raise ValueError("图片在读取时发生变化")
            if snapshot.startswith(b"\xff\xd8") and not snapshot.endswith(b"\xff\xd9"):
                raise ValueError("JPEG尚未写完")
            with Image.open(io.BytesIO(snapshot)) as source:
                source.load()
                image = ImageOps.exif_transpose(source)
                if image.mode != "RGB":
                    image = image.convert("RGB")
                if max(image.size) > MAX_IMAGE_EDGE:
                    image.thumbnail((MAX_IMAGE_EDGE, MAX_IMAGE_EDGE), Image.Resampling.LANCZOS)
                buffer = io.BytesIO()
                image.save(buffer, format="JPEG", quality=JPEG_QUALITY, optimize=True)
            encoded = base64.b64encode(buffer.getvalue()).decode("ascii")
            return f"data:image/jpeg;base64,{encoded}"
        except (OSError, ValueError):
            if time.monotonic() >= deadline:
                raise ValueError("图片文件尚未完整写入") from None
            time.sleep(0.02)


def wait_until_file_is_stable(image_path: Path, timeout: float = 5.0) -> None:
    deadline = time.monotonic() + timeout
    previous_size = -1
    stable_checks = 0
    while time.monotonic() < deadline:
        try:
            current_size = image_path.stat().st_size
        except FileNotFoundError:
            time.sleep(0.15)
            continue
        if current_size > 0 and current_size == previous_size:
            stable_checks += 1
            if stable_checks >= 2:
                return
        else:
            stable_checks = 0
        previous_size = current_size
        time.sleep(0.15)
    raise RuntimeError(f"图片文件仍未写入完成：{image_path}")


def normalize_content(content: Any) -> str:
    if isinstance(content, str):
        return content
    if isinstance(content, list):
        return "".join(
            item if isinstance(item, str) else str(item.get("text", ""))
            for item in content
        )
    raise RuntimeError("API响应中没有可读取的文本内容")


def extract_json(text: str) -> dict[str, Any]:
    cleaned = re.sub(r"```(?:json)?|```", "", text, flags=re.IGNORECASE).strip()
    start = cleaned.find("{")
    end = cleaned.rfind("}")
    if start < 0 or end <= start:
        raise RuntimeError(f"模型没有返回JSON：{cleaned[:300]}")
    parsed = json.loads(cleaned[start : end + 1])
    if not isinstance(parsed, dict):
        raise RuntimeError("模型JSON不是对象")
    return parsed


COLOR_ALIASES = {
    "red": "red", "红": "red", "红色": "red",
    "orange": "orange", "橙": "orange", "橙色": "orange",
    "yellow": "yellow", "黄": "yellow", "黄色": "yellow",
    "green": "green", "绿": "green", "绿色": "green",
    "brown": "brown", "棕": "brown", "棕色": "brown", "褐色": "brown",
    "beige": "beige", "米色": "beige", "浅棕色": "beige",
    "white": "white", "白": "white", "白色": "white",
    "purple": "purple", "紫": "purple", "紫色": "purple",
    "mixed": "mixed", "混合": "mixed", "混合色": "mixed",
    "unknown": "unknown", "未知": "unknown",
}

FORM_ALIASES = {
    "whole": "whole", "整块": "whole", "完整": "whole",
    "halved": "cut", "sliced": "cut", "shredded": "cut", "diced": "cut",
    "cut": "cut", "薄片": "cut", "细丝": "cut", "小块": "cut", "切片": "cut", "切丝": "cut", "切丁": "cut",
    "fine": "fine", "minced": "fine", "碎末": "fine", "切碎": "fine",
    "paste": "paste", "酱": "paste", "酱状": "paste",
    "liquid": "liquid", "液体": "liquid",
    "mixed": "mixed", "混合": "mixed", "混合物": "mixed",
    "unknown": "unknown", "未知": "unknown", "其他": "unknown",
}

COOKED_ALIASES = {
    "raw": "raw", "生": "raw", "生的": "raw",
    "cooking": "cooking", "烹饪中": "cooking", "正在烹饪": "cooking",
    "cooked": "cooked", "熟": "cooked", "熟的": "cooked",
    "unknown": "unknown", "未知": "unknown",
}

PROCESS_ALIASES = {
    "wash": "wash", "washing": "wash", "清洗": "wash", "洗菜": "wash",
    "chop": "chop", "cut": "chop", "cutting": "chop", "chopping": "chop", "切菜": "chop",
    "marinate": "marinate", "marinating": "marinate", "marinated": "marinate", "腌肉": "marinate", "腌制": "marinate",
    "stir_fry": "stir_fry", "stir-fry": "stir_fry", "stirring": "stir_fry", "frying": "stir_fry", "炒菜": "stir_fry", "翻炒": "stir_fry",
    "plate": "plate", "plating": "plate", "装盘": "plate",
    "transfer": "transfer", "盛出备用": "transfer",
    "idle": "idle", "none": "idle", "静止": "idle", "无": "idle",
    "unknown": "unknown", "uncertain": "unknown", "未知": "unknown",
}

FINAL_REVEAL_EVENT = "final_reveal_pulse"
FINAL_REVEAL_PREVIEW_SIZE = (96, 54)
FINAL_REVEAL_MAX_MEAN_CHANGE = 0.03
FINAL_REVEAL_CHANGED_PIXEL_LEVEL = 16
FINAL_REVEAL_MAX_CHANGED_FRACTION = 0.12
FINAL_REVEAL_ALIGNED_MAX_MEAN_CHANGE = 0.05
FINAL_REVEAL_ALIGNED_MAX_CHANGED_FRACTION = 0.25

# API actions remain descriptive.  These shorter ingredient stages are the
# persistent states sent to Max for per-instrument timbre changes.
ACTION_TO_INGREDIENT_STAGE = {
    "wash": "washing",
    "chop": "cutting",
    "marinate": "marinating",
    "stir_fry": "cooking",
    "plate": "finished",
}

INGREDIENT_STAGE_TOKENS = (
    "untouched",
    "washing",
    "cutting",
    "marinating",
    "cooking",
    "finished",
    "unknown",
)

# Used only when the pre-analysis timeline has no matching time window.  The
# values make progress continuous and editable without asking the vision model
# to invent a percentage.
DEFAULT_ACTION_DURATION_SECONDS = {
    "wash": 20.0,
    "chop": 30.0,
    "marinate": 30.0,
    "stir_fry": 60.0,
    "plate": 15.0,
}

DISH_STATUS_ALIASES = {
    "finished": "finished", "final_dish": "finished", "complete": "finished", "成品": "finished", "已完成": "finished",
    "plating": "plating", "plating_in_progress": "plating", "装盘": "plating", "正在装盘": "plating",
    "not_finished": "not_finished", "not_final": "not_finished", "unfinished": "not_finished", "未完成": "not_finished",
    "uncertain": "uncertain", "unknown": "uncertain", "未知": "uncertain", "不确定": "uncertain",
}


def normalized_token(value: Any, aliases: dict[str, str], default: str) -> str:
    text = re.sub(r"\s+", " ", str(value or "")).strip().lower()
    return aliases.get(text, default)


def optional_unit_float(value: Any) -> float:
    if value is None or value == "":
        return -1.0
    try:
        numeric = float(value)
    except (TypeError, ValueError):
        return -1.0
    if not 0.0 <= numeric <= 1.0:
        return -1.0
    return round(numeric, 4)


def normalize_process_action(value: Any) -> str:
    return normalized_token(value, PROCESS_ALIASES, "unknown")


def normalize_process_targets(value: Any) -> tuple[str, ...]:
    """Return all clearly targeted menu ingredients in stable menu order."""
    group = allowed_subject_group(value)
    selected = set([] if group == "未知" else group.split("、"))
    return tuple(item for item in ALLOWED_INGREDIENTS if item in selected)


def normalize_dish_status(value: Any) -> str:
    return normalized_token(value, DISH_STATUS_ALIASES, "uncertain")


def normalize_visual_observations(
    value: Any,
    fallback_subject: Any = None,
    fallback_color: Any = None,
    fallback_form: Any = None,
    fallback_area: Any = None,
) -> list[dict[str, Any]]:
    items = value if isinstance(value, list) else []
    selected: dict[str, dict[str, Any]] = {}
    for item in items:
        if not isinstance(item, dict):
            continue
        ingredient = allowed_subject_group(
            [item.get("名称", item.get("name", item.get("ingredient")))],
            limit=1,
        )
        if ingredient == "未知":
            continue
        selected[ingredient] = {
            "名称": ingredient,
            "颜色": normalized_token(
                item.get("颜色", item.get("color", item.get("dominant_color"))),
                COLOR_ALIASES,
                "unknown",
            ),
            "加工状态": normalized_token(
                item.get("加工状态", item.get("form", item.get("shape"))),
                FORM_ALIASES,
                "unknown",
            ),
            "熟度": normalized_token(
                item.get("熟度", item.get("cooked", item.get("cooked_state"))),
                COOKED_ALIASES,
                "unknown",
            ),
            "面积比例": optional_unit_float(item.get("面积比例", item.get("area", item.get("area_ratio")))),
            "水平位置": optional_unit_float(item.get("水平位置", item.get("x", item.get("center_x")))),
        }

    if not selected:
        normalized_subject = allowed_subject_group(fallback_subject)
        subjects = [] if normalized_subject == "未知" else normalized_subject.split("、")
        for ingredient in subjects:
            selected[ingredient] = {
                "名称": ingredient,
                "颜色": normalized_token(fallback_color, COLOR_ALIASES, "unknown"),
                "加工状态": normalized_token(fallback_form, FORM_ALIASES, "unknown"),
                "熟度": "unknown",
                "面积比例": optional_unit_float(fallback_area),
                "水平位置": -1.0,
            }

    return [selected[item] for item in ALLOWED_INGREDIENTS if item in selected]


@dataclass(frozen=True)
class ProcessState:
    action: str
    active: int
    elapsed_seconds: float
    progress: float
    event: str
    targets: tuple[str, ...] = ()


class ProcessTracker:
    """Keep a coarse cooking stage and derive timing outside the vision API."""

    def __init__(self, confidence_floor: float = 0.55) -> None:
        self.confidence_floor = confidence_floor
        self.action = "idle"
        self.targets: tuple[str, ...] = ()
        self.confidence = 0.0
        self.started_playback_seconds: float | None = None
        self.started_monotonic = time.monotonic()

    def update(
        self,
        action: Any,
        confidence: Any,
        playback_seconds: float | None,
        timeline_guide: TimelineGuide,
        targets: Any = (),
    ) -> ProcessState:
        candidate = normalize_process_action(action)
        normalized_targets = normalize_process_targets(targets)
        score = clamp_confidence(confidence)
        event = "none"
        if candidate not in {"unknown"} and score >= self.confidence_floor:
            target_changed = bool(normalized_targets) and normalized_targets != self.targets
            if candidate != self.action or target_changed:
                self.action = candidate
                self.targets = normalized_targets
                self.confidence = score
                self.started_playback_seconds = playback_seconds
                self.started_monotonic = time.monotonic()
            else:
                if normalized_targets:
                    self.targets = normalized_targets
                self.confidence = score

            if candidate == "idle":
                self.targets = ()

        now = time.monotonic()
        elapsed = max(0.0, now - self.started_monotonic)
        progress = -1.0
        if playback_seconds is not None:
            if self.started_playback_seconds is not None:
                elapsed = max(0.0, playback_seconds - self.started_playback_seconds)
            window = self._matching_timeline_window(timeline_guide, playback_seconds)
            if window is not None:
                start, end = window
                elapsed = max(0.0, playback_seconds - start)
                progress = max(0.0, min(1.0, elapsed / max(0.001, end - start)))

        if progress < 0.0 and self.action not in {"idle", "unknown"}:
            expected_seconds = DEFAULT_ACTION_DURATION_SECONDS.get(self.action)
            if expected_seconds is not None:
                progress = max(0.0, min(1.0, elapsed / expected_seconds))

        return ProcessState(
            action=self.action,
            active=0 if self.action in {"idle", "unknown"} else 1,
            elapsed_seconds=round(elapsed, 3),
            progress=round(progress, 4),
            event=event,
            targets=self.targets,
        )

    def _matching_timeline_window(
        self,
        timeline_guide: TimelineGuide,
        playback_seconds: float,
    ) -> tuple[float, float] | None:
        candidates: list[tuple[float, float, float]] = []
        for item in timeline_guide.events:
            try:
                start = float(item.get("start", 0.0))
                end = float(item.get("end", start))
            except (TypeError, ValueError):
                continue
            if not start <= playback_seconds <= end:
                continue
            label = normalize_process_action(item.get("action_group", item.get("action")))
            if label != self.action:
                continue
            timeline_targets = set(normalize_process_targets(
                item.get("target_ingredients", item.get("ingredient", ()))
            ))
            if self.targets and not set(self.targets).issubset(timeline_targets):
                continue
            candidates.append((start, end, clamp_confidence(item.get("confidence"))))
        if not candidates:
            return None
        start, end, _confidence = max(candidates, key=lambda item: item[2])
        return start, end

    def expected_duration_seconds(
        self,
        playback_seconds: float | None,
        timeline_guide: TimelineGuide,
    ) -> float | None:
        """Return the current timeline-window length, or the editable fallback."""
        if playback_seconds is not None:
            window = self._matching_timeline_window(timeline_guide, playback_seconds)
            if window is not None:
                start, end = window
                return max(0.001, end - start)
        return DEFAULT_ACTION_DURATION_SECONDS.get(self.action)


class SceneControlGuard:
    """Reject contradictory controls and confirm a return from cooking to prep.

    Runs before all stateful trackers, so a rejected frame cannot change food
    gates, identity memory, counts, progress or the music section independently.
    Normal cooking, ingredient additions and serving need no extra observation.
    """

    PREPARATION_ACTIONS = {"wash", "chop", "marinate"}

    def __init__(self) -> None:
        self.context = "unknown"
        self.pending: str | None = None
        self.pending_at = 0.0

    def rejection_reason(self, result: dict, captured_at: float) -> str | None:
        process = result["过程"]
        action = process.get("当前动作", process["动作"])
        scene = result.get("食材场景", {})
        score = clamp_confidence(process.get("置信度"))
        is_preparation = action in self.PREPARATION_ACTIONS
        if action in {"plate", "transfer"} and scene.get("加入食材可见") is True:
            self.pending = None
            return "scene_evidence_conflict"
        if is_preparation and (
            scene.get("加入食材可见") is True
            or scene.get("锅内烹饪可见") is True
        ):
            self.pending = None
            return "scene_evidence_conflict"

        if is_preparation and self.context in {"cooking", "serving"}:
            key = action
            if score < .70:
                self.pending = None
                return "scene_transition_weak_evidence"
            # Only consecutive, fresh observations confirm a real return to
            # preparation. Never lock out later preparation or use video times.
            if (self.pending != key or not 0 < captured_at - self.pending_at <= 10.0):
                self.pending, self.pending_at = key, captured_at
                return "scene_transition_pending"

        self.pending = None
        if score >= .70:
            if is_preparation:
                self.context = "preparation"
            elif (action in {"plate", "transfer"}
                  or result.get("成品判断", {}).get("状态") == "finished"):
                self.context = "serving"
            elif action == "stir_fry" or scene.get("锅内烹饪可见") is True or scene.get("加入食材可见") is True:
                self.context = "cooking"
        return None


def final_reveal_preview(image_data_url: str | None) -> Image.Image | None:
    """Use the immutable image sent to the API, never the overwritten JPEG."""
    if not image_data_url or not image_data_url.startswith("data:image/"):
        return None
    try:
        header, encoded = image_data_url.split(",", 1)
        if not header.endswith(";base64"):
            return None
        with Image.open(io.BytesIO(base64.b64decode(encoded, validate=True))) as source:
            return ImageOps.exif_transpose(source).convert("L").resize(
                FINAL_REVEAL_PREVIEW_SIZE, Image.Resampling.LANCZOS
            ).filter(ImageFilter.GaussianBlur(1))
    except (OSError, ValueError):
        return None


def final_reveal_frame_change(previous: Image.Image, current: Image.Image) -> tuple[float, float]:
    """Measure overall change and the fraction of visibly changed pixels."""
    difference = ImageChops.difference(previous, current)
    histogram = difference.histogram()
    mean_change = ImageStat.Stat(difference).mean[0] / 255.0
    changed_fraction = sum(histogram[FINAL_REVEAL_CHANGED_PIXEL_LEVEL + 1:]) / sum(histogram)
    return mean_change, changed_fraction


def final_reveal_aligned_change(previous: Image.Image, current: Image.Image):
    """Register a carried plate's bounded translation, rotation and scale.

    Only called after finished-dish evidence and a failed ordinary stillness
    check. The central overlap avoids using the moving frame border as food
    motion. A coarse fit plus local refinement keeps work on tiny thumbnails.
    """
    def transformed(image, angle, scale, dx, dy):
        theta = math.radians(angle)
        cosine, sine = math.cos(theta) * scale, math.sin(theta) * scale
        x, y = image.width / 2, image.height / 2
        return image.transform(image.size, Image.Transform.AFFINE,
            (cosine, -sine, x - cosine*x + sine*y + dx,
             sine, cosine, y - sine*x - cosine*y + dy), Image.Resampling.BILINEAR)

    first = previous.resize((48, 27), Image.Resampling.BILINEAR)
    second = current.resize((48, 27), Image.Resampling.BILINEAR)
    reference = first.crop((8, 4, 40, 23))
    best, parameters = float("inf"), None
    for angle in (-16, -8, 0, 8, 16):
        for scale in (.9, 1., 1.1):
            for dy in (-6, -3, 0, 3, 6):
                for dx in (-10, -5, 0, 5, 10):
                    image = transformed(second, angle, scale, dx, dy).crop((8, 4, 40, 23))
                    score = ImageStat.Stat(ImageChops.difference(reference, image)).mean[0]
                    if score < best:
                        best, parameters = score, (angle, scale, dx*2, dy*2)
    angle, scale, dx, dy = parameters
    reference = previous.crop((16, 8, 80, 46))
    best_mean, best_fraction, best_transform = float("inf"), 1., None
    for da in (-4, -2, 0, 2, 4):
        for ds in (-.05, 0, .05):
            for xx in (-4, -2, 0, 2, 4):
                for yy in (-4, -2, 0, 2, 4):
                    candidate = (angle+da, scale+ds, dx+xx, dy+yy)
                    image = transformed(current, *candidate).crop((16, 8, 80, 46))
                    mean, fraction = final_reveal_frame_change(reference, image)
                    if mean < best_mean:
                        best_mean, best_fraction, best_transform = mean, fraction, candidate
    return best_mean, best_fraction, best_transform


class FinalRevealTracker:
    """Trigger once after one successful comparison of two finished-dish frames."""

    def __init__(self) -> None:
        self._previous_frame: Image.Image | None = None
        self._fired = False
        self._last_playback_seconds: float | None = None
        self.last_check: dict[str, Any] = {}

    def reset_observations(self) -> None:
        """Discard a pair across a seek while preserving this round's one-shot."""
        self._previous_frame = None
        self._last_playback_seconds = None
        self.last_check = {}

    def update(
        self,
        result: dict[str, Any],
        playback_seconds: float | None,
        mapping: PlaybackMapping,
        image_data_url: str | None = None,
        confirmation_frame: ImageTask | None = None,
    ) -> tuple[str, ...]:
        self.last_check = {"reason": "waiting_for_new_frame"}
        if (
            playback_seconds is not None
            and self._last_playback_seconds is not None
            and playback_seconds + 1.0 < self._last_playback_seconds
        ):
            self.reset_observations()
        if playback_seconds is None or (
            self._last_playback_seconds is not None
            and playback_seconds <= self._last_playback_seconds
        ):
            return ()
        self._last_playback_seconds = playback_seconds
        if self._fired:
            self.last_check = {"reason": "already_fired"}
            return ()

        dish_status = result.get("成品判断", {})
        if not isinstance(dish_status, dict):
            dish_status = {}
        process = result.get("过程", {})
        if not isinstance(process, dict):
            process = {}
        finished_confidence = clamp_confidence(dish_status.get("置信度"))
        valid_scene = (
            mapping.duration_seconds > 0
            and dish_status.get("状态") == "finished"
            and finished_confidence >= 0.70
            and process.get("动作") == "idle"
            and result.get("食材状态") == "visible"
            and dish_status.get("食物转移可见") is not True
            and dish_status.get("盛出过程可见") is not True
            and dish_status.get("成品菜肴可见") is not False
            and result.get("食材场景", {}).get("锅内烹饪可见") is not True
            and result.get("食材场景", {}).get("加入食材可见") is not True
        )
        current_frame = final_reveal_preview(image_data_url) if valid_scene else None
        if current_frame is None:
            self._previous_frame = None
            self.last_check = {"reason": "not_a_confirmed_finished_dish"}
            return ()

        previous_frame = self._previous_frame
        self._previous_frame = current_frame
        if confirmation_frame is not None:
            # The API has confirmed the dish. Stillness needs only the pixels
            # of a newer capture, not another remote classification round-trip.
            if (confirmation_frame.playback_seconds is None
                    or confirmation_frame.playback_seconds <= playback_seconds):
                return ()
            newer_frame = final_reveal_preview(confirmation_frame.image_data_url)
            if newer_frame is None:
                return ()
            mean_change, changed_fraction = final_reveal_frame_change(current_frame, newer_frame)
        elif previous_frame is not None:
            mean_change, changed_fraction = final_reveal_frame_change(previous_frame, current_frame)
        else:
            self.last_check = {"reason": "waiting_for_second_finished_frame"}
            return ()
        still = (mean_change <= FINAL_REVEAL_MAX_MEAN_CHANGE
                 and changed_fraction <= FINAL_REVEAL_MAX_CHANGED_FRACTION)
        self.last_check = {"reason": "still" if still else "motion",
                           "mean_change": mean_change, "changed_fraction": changed_fraction}
        if not still:
            first = current_frame if confirmation_frame is not None else previous_frame
            second = newer_frame if confirmation_frame is not None else current_frame
            mean, fraction, transform = final_reveal_aligned_change(first, second)
            still = (mean <= FINAL_REVEAL_ALIGNED_MAX_MEAN_CHANGE
                     and fraction <= FINAL_REVEAL_ALIGNED_MAX_CHANGED_FRACTION
                     and mean <= mean_change * .5
                     and abs(transform[2]) <= 12 and abs(transform[3]) <= 9)
            self.last_check.update(reason="carried_plate" if still else "motion",
                aligned_mean_change=mean, aligned_changed_fraction=fraction,
                transform=transform)
        if still:
            self._fired = True
            return (FINAL_REVEAL_EVENT,)
        return ()


@dataclass(frozen=True)
class IngredientOscState:
    ingredient: str
    present: int
    stage: str
    progress: float


class IngredientStageTracker:
    """Remember what happened to each ingredient without asking AI for a score."""

    def __init__(self) -> None:
        self._visible: set[str] = set()
        self._stage: dict[str, str] = {}
        self._progress: dict[str, float] = {}

    def update(
        self,
        stable_subject: Any,
        process_state: ProcessState,
    ) -> tuple[IngredientOscState, ...]:
        normalized = allowed_subject_group(stable_subject)
        current = set([] if normalized == "未知" else normalized.split("、"))
        cleared = self._visible - current

        for ingredient in current:
            self._stage.setdefault(ingredient, "untouched")
            self._progress.setdefault(ingredient, 0.0)

        targets = set(process_state.targets) & current
        # A single visible ingredient is a safe fallback.  With two or more,
        # an unclear target must not change every instrument at once.
        if not targets and process_state.active and len(current) == 1:
            targets = set(current)

        next_stage = ACTION_TO_INGREDIENT_STAGE.get(process_state.action)
        if next_stage is not None:
            next_progress = process_state.progress if process_state.progress >= 0.0 else 0.0
            for ingredient in targets:
                if self._stage.get(ingredient) == next_stage:
                    self._progress[ingredient] = max(
                        self._progress.get(ingredient, 0.0),
                        next_progress,
                    )
                else:
                    self._stage[ingredient] = next_stage
                    self._progress[ingredient] = next_progress

        states: list[IngredientOscState] = []
        for ingredient in ALLOWED_INGREDIENTS:
            if ingredient in cleared:
                states.append(
                    IngredientOscState(
                        ingredient,
                        0,
                        self._stage.get(ingredient, "unknown"),
                        round(self._progress.get(ingredient, -1.0), 4),
                    )
                )
            if ingredient in current:
                states.append(
                    IngredientOscState(
                        ingredient,
                        1,
                        self._stage.get(ingredient, "untouched"),
                        round(self._progress.get(ingredient, 0.0), 4),
                    )
                )

        self._visible = current
        return tuple(states)


@dataclass(frozen=True)
class IngredientProgressClock:
    ingredient: str
    whole_count: int
    stage: str
    base_progress: float
    anchor_playback_seconds: float | None
    anchor_monotonic: float
    duration_seconds: float | None
    active: bool


class IngredientProgressInterpolator:
    """Interpolate each target ingredient between slower vision responses."""

    def __init__(self) -> None:
        self._lock = threading.Lock()
        self._clocks: dict[str, IngredientProgressClock] = {}
        self._progress_floor: dict[str, float] = {}
        self._generation: int | None = None

    def synchronize_generation(self, generation: int) -> None:
        with self._lock:
            if self._generation != generation:
                self._clocks.clear()
                self._progress_floor.clear()
                self._generation = generation

    def clear(self) -> None:
        with self._lock:
            self._clocks.clear()
            self._progress_floor.clear()

    @staticmethod
    def _progress_at(
        clock: IngredientProgressClock,
        playback_seconds: float | None,
        now_monotonic: float,
    ) -> float:
        if not clock.active or clock.duration_seconds is None:
            return clock.base_progress
        if clock.anchor_playback_seconds is not None:
            # When Max is paused it keeps reporting the same position.  If its
            # report becomes stale and returns None, hold instead of advancing.
            if playback_seconds is None:
                delta_seconds = 0.0
            else:
                playback_delta = max(0.0, playback_seconds - clock.anchor_playback_seconds)
                wall_delta = max(0.0, now_monotonic - clock.anchor_monotonic)
                # reportprogress or a seek can occasionally jump forward.  Do
                # not let one bad playback packet finish an ingredient stage
                # faster than real time; the small allowance absorbs jitter.
                delta_seconds = min(
                    playback_delta,
                    wall_delta + PLAYBACK_PROGRESS_JUMP_TOLERANCE_SECONDS,
                )
        else:
            delta_seconds = max(0.0, now_monotonic - clock.anchor_monotonic)
        return min(1.0, clock.base_progress + delta_seconds / clock.duration_seconds)

    def _remember_progress(
        self,
        clock: IngredientProgressClock,
        playback_seconds: float | None,
        now_monotonic: float,
    ) -> float:
        # A stale playback packet or delayed frame must not undo a value already
        # published for this stage. The caller holds self._lock.
        progress = max(
            self._progress_floor.get(clock.ingredient, clock.base_progress),
            self._progress_at(clock, playback_seconds, now_monotonic),
        )
        self._progress_floor[clock.ingredient] = progress
        return progress

    def update(
        self,
        ingredient_states: tuple[IngredientOscState, ...],
        stable_counts: tuple[tuple[str, int], ...],
        process_state: ProcessState,
        playback_seconds: float | None,
        duration_seconds: float | None,
        now_monotonic: float | None = None,
    ) -> tuple[IngredientOscState, ...]:
        now = time.monotonic() if now_monotonic is None else now_monotonic
        count_map = dict(stable_counts)
        targets = set(process_state.targets) if process_state.active else set()
        visible = [item.ingredient for item in ingredient_states if item.present != 0]
        if not targets and process_state.active and len(visible) == 1:
            targets = set(visible)
        reconciled: list[IngredientOscState] = []
        with self._lock:
            for item in ingredient_states:
                previous = self._clocks.get(item.ingredient)
                base_progress = item.progress
                same_stage = previous is not None and previous.stage == item.stage
                if same_stage:
                    base_progress = self._remember_progress(previous, playback_seconds, now)
                else:
                    self._progress_floor[item.ingredient] = max(0.0, min(1.0, base_progress))
                whole_count = count_map.get(item.ingredient, 0) if item.present != 0 else 0
                active = (
                    item.present != 0
                    and item.ingredient in targets
                    and duration_seconds is not None
                    and base_progress < 1.0
                )
                continuing = same_stage and previous.active and active
                # Preserve the original anchors and duration while this target
                # is active. Re-anchoring on each API commit mixes frame time
                # with response time and can rewind or stall the local clock.
                self._clocks[item.ingredient] = IngredientProgressClock(
                    ingredient=item.ingredient,
                    whole_count=whole_count,
                    stage=item.stage,
                    base_progress=previous.base_progress if continuing else max(0.0, min(1.0, base_progress)),
                    anchor_playback_seconds=previous.anchor_playback_seconds if continuing else playback_seconds,
                    anchor_monotonic=previous.anchor_monotonic if continuing else now,
                    duration_seconds=previous.duration_seconds if continuing else duration_seconds,
                    active=active,
                )
                reconciled.append(
                    IngredientOscState(
                        ingredient=item.ingredient,
                        present=item.present,
                        stage=item.stage,
                        progress=round(max(0.0, min(1.0, base_progress)), 4),
                    )
                )
        return tuple(reconciled)

    def snapshot(
        self,
        playback_seconds: float | None,
        now_monotonic: float | None = None,
    ) -> tuple[tuple[str, int, str, float], ...]:
        now = time.monotonic() if now_monotonic is None else now_monotonic
        with self._lock:
            return tuple(
                (
                    clock.ingredient,
                    clock.whole_count,
                    clock.stage,
                    round(self._remember_progress(clock, playback_seconds, now), 4),
                )
                for clock in self._clocks.values()
                if clock.active
            )


def ingredient_progress_loop(
    stop_event: threading.Event,
    interpolator: IngredientProgressInterpolator,
    playback_state: PlaybackState,
    osc_client: SimpleUDPClient,
    interval_seconds: float = PROGRESS_OSC_INTERVAL_SECONDS,
    solo_fry_timeline: SoloFryTimeline | None = None,
    chop_timeline: ChopTimeline | None = None,
) -> None:
    """Send smooth local progress without making additional API requests."""
    last_sent: dict[str, tuple[int, str, float, float]] = {}
    last_solo_sent: dict[str, float] = {}
    last_chop_sent: dict[str, float] = {}
    last_generation = playback_state.generation
    last_round = playback_state.playback_round
    last_mapping_revision = playback_state.mapping_revision
    while not stop_event.wait(interval_seconds):
        with playback_state._lock:
            if last_generation != playback_state.generation:
                interpolator.synchronize_generation(playback_state.generation)
                last_sent.clear()
                last_solo_sent.clear()
                last_chop_sent.clear()
                last_generation = playback_state.generation
            if (last_round != playback_state.playback_round
                    or last_mapping_revision != playback_state.mapping_revision):
                last_round = playback_state.playback_round
                last_mapping_revision = playback_state.mapping_revision
                report = getattr(osc_client, "progress_report", None)
                if report is not None:
                    report.reset()
                if solo_fry_timeline is not None:
                    solo_fry_timeline.reset()
                    last_solo_sent.clear()
                    solo_fry_timeline.send_changed(osc_client, -1.0, last_solo_sent)
                if chop_timeline is not None:
                    chop_timeline.reset()
                    last_chop_sent.clear()
                    chop_timeline.send_changed(osc_client, -1.0, last_chop_sent)
            playback_seconds = playback_state.current_seconds()
            if playback_seconds is None or playback_state.running is False:
                continue
            if solo_fry_timeline is not None:
                solo_fry_timeline.send_changed(osc_client, playback_seconds, last_solo_sent)
            if chop_timeline is not None:
                chop_timeline.send_changed(osc_client, playback_seconds, last_chop_sent)
            solo_values = dict(solo_fry_timeline.snapshot(playback_seconds)) if solo_fry_timeline else {}
            for ingredient, whole_count, stage, progress in interpolator.snapshot(playback_seconds):
                payload = (whole_count, stage, progress, solo_values.get(subject_to_english(ingredient), 0.0))
                if last_sent.get(ingredient) == payload:
                    continue
                osc_client.send_message(
                    OSC_INGREDIENT_ADDRESS,
                    [subject_to_english(ingredient), whole_count, stage, progress, 1],
                )
                last_sent[ingredient] = payload


def normalize_result(raw: dict[str, Any]) -> dict[str, Any]:
    def short_value(value: Any, default: str, limit: int = 30) -> str:
        value = re.sub(r"\s+", " ", str(value or default)).strip()
        return (value or default)[:limit]

    raw_ingredients = raw.get("食材列表", raw.get("ingredients"))
    count_observations = normalize_count_observations(raw_ingredients)
    observed_names = [item.ingredient for item in count_observations]
    subject = allowed_subject_group(
        observed_names or raw.get("主体名称列表", raw.get("主体名称"))
    )
    visuals = normalize_visual_observations(
        raw_ingredients,
        fallback_subject=subject,
        fallback_color=raw.get("颜色", raw.get("color")),
        fallback_form=raw.get("形状", raw.get("form")),
        fallback_area=raw.get("面积比例", raw.get("area_ratio")),
    )

    visual_areas = [item["面积比例"] for item in visuals if item["面积比例"] >= 0.0]
    raw_area = raw.get("面积比例", raw.get("area_ratio"))
    try:
        area_ratio = max(0.0, min(1.0, float(raw_area)))
    except (TypeError, ValueError):
        area_ratio = min(1.0, sum(visual_areas)) if visual_areas else 0.0

    process_raw = raw.get("过程", raw.get("process", {}))
    if not isinstance(process_raw, dict):
        process_raw = {"action": process_raw}
    process_action = normalize_process_action(
        process_raw.get("动作", process_raw.get("action", raw.get("烹饪动作")))
    )
    process_targets = normalize_process_targets(
        process_raw.get(
            "目标食材",
            process_raw.get("target_ingredients", process_raw.get("targets")),
        )
    )
    process_confidence = clamp_confidence(
        process_raw.get("置信度", process_raw.get("confidence", raw.get("动作置信度")))
    )
    dish_status_raw = raw.get("成品判断", raw.get("dish_status", {}))
    if not isinstance(dish_status_raw, dict):
        dish_status_raw = {"status": dish_status_raw}
    dish_status = normalize_dish_status(
        dish_status_raw.get("状态", dish_status_raw.get("status"))
    )
    dish_confidence = clamp_confidence(
        dish_status_raw.get("置信度", dish_status_raw.get("confidence"))
    )
    transfer_visible = dish_status_raw.get(
        "food_transfer_visible", dish_status_raw.get("食物转移可见")
    )
    finished_visible = dish_status_raw.get(
        "finished_dish_visible", dish_status_raw.get("成品菜肴可见")
    )
    serving_sequence_visible = dish_status_raw.get("serving_sequence_visible")
    in_pan_cooking_visible = process_raw.get("in_pan_cooking_visible")
    prep_transfer = (
        process_action == "transfer"
        and process_confidence >= 0.70
        and in_pan_cooking_visible is not True
        and process_raw.get("ingredient_addition_visible") is not True
    )
    # These are current-image observations, not a playback-time or previous-
    # frame shortcut. Missing evidence keeps older API responses compatible.
    if (transfer_visible is True
            or (serving_sequence_visible is True and dish_confidence >= 0.70)
            or prep_transfer):
        dish_status = "plating"
        process_action = "plate"
        process_confidence = max(process_confidence, dish_confidence)
    elif (
        transfer_visible is False
        and finished_visible is True
        and serving_sequence_visible is not True
        and dish_confidence >= 0.70
        and in_pan_cooking_visible is not True
        and (process_action in {"idle", "plate", "unknown"} or in_pan_cooking_visible is False)
    ):
        dish_status = "finished"
        process_action = "idle"
        process_targets = ()
        process_confidence = max(process_confidence, dish_confidence)
    elif transfer_visible is False and (
        dish_status == "plating" or process_action in {"plate", "transfer"}
    ):
        # No visible transfer means there is no support for an active plating
        # action. Without positive finished-dish evidence, remain uncertain.
        dish_status = "uncertain"
        process_action = "unknown"
        process_targets = ()
    elif dish_status == "finished" and (
        finished_visible is False
        or in_pan_cooking_visible is True
        or process_raw.get("ingredient_addition_visible") is True
        or (
            transfer_visible is None
            and ("food_transfer_visible" in dish_status_raw or "食物转移可见" in dish_status_raw)
        )
    ):
        # A finished label cannot overrule an explicit negative observation or
        # an unknown transfer state in the new evidence-bearing response.
        dish_status = "uncertain"
        if process_action == "plate":
            process_action = "unknown"
            process_targets = ()
    if dish_status == "finished" and process_action == "plate":
        process_action = "idle"
        process_targets = ()

    if process_action == "stir_fry" and in_pan_cooking_visible is False:
        # A spoon in a dish or explicit absence of cooking is not pan frying.
        # Without positive serving evidence, report uncertainty, not a guess.
        process_action = "unknown"
        process_targets = ()

    display_action = process_action
    if process_action == "plate" and prep_transfer:
        # Removing a separate batch into a prep bowl is visible serving, but
        # must not send Max into the final plating section of the performance.
        display_action = "transfer"
        process_action = "idle"
        dish_status = "not_finished"

    cutting_raw = raw.get("切菜动作", False)
    if isinstance(cutting_raw, str):
        cutting_action = cutting_raw.strip().lower() in {"1", "true", "yes", "是", "切菜", "正在切"}
    else:
        cutting_action = bool(cutting_raw)
    cutting_action = cutting_action or process_action == "chop"

    status = str(raw.get("食材状态") or raw.get("ingredient_status") or "").strip().lower()
    if status not in {"visible", "none", "uncertain"}:
        status = "visible" if subject != "未知" else "uncertain"

    first_visual = visuals[0] if visuals else None
    focused_names = None
    if isinstance(raw_ingredients, list):
        locations = {}
        for item in raw_ingredients:
            if not isinstance(item, dict):
                continue
            name = allowed_subject_group([item.get("名称", item.get("name"))], limit=1)
            if name == "未知":
                continue
            location = str(item.get("location", "unknown")).strip().lower()
            # A repeated object cannot hide an active observation as background.
            if locations.get(name) != "active_container":
                locations[name] = location
        if any(location in {"active_container", "held_container", "background"}
               for location in locations.values()):
            focused_names = [name for name in ALLOWED_INGREDIENTS
                             if name in locations and locations[name] != "background"]

    def visual_flag(value):
        return value if isinstance(value, bool) else None

    legacy_color = raw.get("颜色", raw.get("color"))
    if not legacy_color and first_visual is not None:
        legacy_color = first_visual["颜色"]
    legacy_form = raw.get("形状", raw.get("form"))
    if not legacy_form and first_visual is not None:
        legacy_form = first_visual["加工状态"]

    return {
        "主体名称": subject,
        "食材计数": [
            {
                "名称": item.ingredient,
                "完整个数": item.whole_count,
                "数量置信度": item.confidence,
                "计数依据": item.basis,
            }
            for item in count_observations
        ],
        "食材视觉": visuals,
        "食材状态": status,
        "主体置信度": clamp_confidence(raw.get("主体置信度", raw.get("subject_confidence"))),
        "食材场景": {
            "当前食材": focused_names,
            "加入食材可见": visual_flag(process_raw.get("ingredient_addition_visible")),
            "锅内烹饪可见": visual_flag(in_pan_cooking_visible),
            "空锅可见": visual_flag(process_raw.get("empty_vessel_visible")),
        },
        "颜色": short_value(legacy_color, "unknown", 20),
        "形状": short_value(legacy_form, "unknown", 20),
        "面积比例": round(area_ratio, 4),
        "切菜动作": 1 if cutting_action else 0,
        "过程": {
            "动作": process_action,
            "当前动作": display_action,
            "目标食材": list(process_targets),
            "置信度": process_confidence,
        },
        "成品判断": {
            "状态": dish_status,
            "置信度": dish_confidence,
            "食物转移可见": visual_flag(transfer_visible),
            "盛出过程可见": visual_flag(serving_sequence_visible),
            "成品菜肴可见": visual_flag(finished_visible),
        },
    }


def format_observation_summary(
    recognition_number: int,
    result: dict,
    subject: str,
    events=(),
    *,
    progress_report: SpecialProgressReport | None = None,
    serving_role: str | None = None,
) -> str:
    """The console describes this image, not a previously held control state."""
    process = result["过程"]
    action = process.get("当前动作", process["动作"])
    if clamp_confidence(process["置信度"]) < 0.55:
        action = "unknown"
    elif serving_role is not None and is_serving_observation(result):
        action = "transfer"
    marinate, solo = progress_report.report_values() if progress_report is not None else (None, {})
    # Actual visible foods and current cooking gates have different meanings.
    display_subject = allowed_subject_group([subject, result["主体名称"]])
    return format_runtime_summary(
        recognition_number, action, display_subject,
        events=events,
        dish_status=result.get("成品判断", {}).get("状态", "uncertain"),
        marinate_progress=marinate, solo_fry_progress=solo,
        serving_role=serving_role,
    )


def normalize_usage(raw: Any) -> dict[str, int]:
    usage = raw if isinstance(raw, dict) else {}

    def non_negative_int(name: str) -> int:
        try:
            return max(0, int(usage.get(name, 0)))
        except (TypeError, ValueError):
            return 0

    prompt_tokens = non_negative_int("prompt_tokens")
    completion_tokens = non_negative_int("completion_tokens")
    total_tokens = non_negative_int("total_tokens")
    if total_tokens == 0:
        total_tokens = prompt_tokens + completion_tokens
    return {
        "prompt_tokens": prompt_tokens,
        "completion_tokens": completion_tokens,
        "total_tokens": total_tokens,
    }


def load_cumulative_tokens() -> int:
    try:
        state = json.loads(USAGE_STATE_PATH.read_text(encoding="utf-8"))
        return max(0, int(state.get("cumulative_tokens", 0)))
    except (FileNotFoundError, OSError, ValueError, TypeError, json.JSONDecodeError):
        return 0


def save_cumulative_tokens(cumulative_tokens: int) -> None:
    USAGE_STATE_PATH.parent.mkdir(parents=True, exist_ok=True)
    state = {
        "cumulative_tokens": max(0, int(cumulative_tokens)),
        "note": "仅统计启用本功能后的成功API调用，不代表阿里云账户官方余额",
    }
    temporary_path = USAGE_STATE_PATH.with_suffix(".json.tmp")
    temporary_path.write_text(
        json.dumps(state, ensure_ascii=False, indent=2),
        encoding="utf-8",
    )
    temporary_path.replace(USAGE_STATE_PATH)


def read_environment(name: str) -> str:
    value = os.getenv(name, "").strip()
    if value or os.name != "nt":
        return value
    try:
        import winreg

        with winreg.OpenKey(winreg.HKEY_CURRENT_USER, "Environment") as key:
            stored, _ = winreg.QueryValueEx(key, name)
            return str(stored).strip()
    except (FileNotFoundError, OSError):
        return ""


def resolve_base_url() -> str:
    explicit = read_environment("DASHSCOPE_BASE_URL")
    if explicit:
        return explicit
    workspace_id = read_environment("DASHSCOPE_WORKSPACE_ID")
    if workspace_id:
        return f"https://{workspace_id}.cn-beijing.maas.aliyuncs.com/compatible-mode/v1"
    return "https://dashscope.aliyuncs.com/compatible-mode/v1"


def resolve_default_max_patch() -> str:
    explicit = read_environment("MAX_PATCH_PATH")
    candidates = [
        Path(explicit) if explicit else None,
        PROJECT_ROOT / "Main_Patcher_0819.maxpat",
        PROJECT_ROOT / "Qwen_AI_OSC_Receiver.maxpat",
        Path(r"E:\Max 9\Saved\Qwen_AI_OSC_Receiver.maxpat"),
        Path.home() / "Documents" / "Max 9" / "Saved" / "Qwen_AI_OSC_Receiver.maxpat",
    ]
    for candidate in candidates:
        if candidate is not None and candidate.is_file():
            return str(candidate)
    return ""


def send_osc_result(
    client: SimpleUDPClient,
    result: dict[str, Any],
    stable_subject: str,
    timeline_subject: str,
    current_tokens: int,
    cumulative_tokens: int,
    stable_counts: tuple[tuple[str, int], ...] = (),
    cleared_ingredients: tuple[str, ...] = (),
    process_state: ProcessState | None = None,
    ingredient_states: tuple[IngredientOscState, ...] = (),
    one_shot_events: tuple[str, ...] = (),
) -> None:
    client.send_message(OSC_RAW_SUBJECT_ADDRESS, subject_group_to_english(result["主体名称"]))
    client.send_message(OSC_TIMELINE_SUBJECT_ADDRESS, subject_group_to_english(timeline_subject))
    client.send_message(OSC_REALTIME_COLOR_ADDRESS, result["颜色"])
    client.send_message(OSC_REALTIME_SHAPE_ADDRESS, result["形状"])
    client.send_message(OSC_REALTIME_AREA_ADDRESS, result["面积比例"])
    client.send_message(OSC_REALTIME_CUTTING_ADDRESS, result["切菜动作"])
    client.send_message(OSC_REALTIME_CONFIDENCE_ADDRESS, result["主体置信度"])
    for ingredient in cleared_ingredients:
        client.send_message(OSC_INGREDIENT_COUNT_ADDRESS, [subject_to_english(ingredient), 0])
    for ingredient, whole_count in stable_counts:
        client.send_message(
            OSC_INGREDIENT_COUNT_ADDRESS,
            [subject_to_english(ingredient), whole_count],
        )

    # 1. One direct per-ingredient message: name, whole-item count, remembered
    # stage and that ingredient's own persistent stage progress.  A count of 0
    # means not reliably countable; the final presence bit controls the voice.
    # Progress is derived by Python timing and target tracking, never guessed by
    # the API.
    stable_items = [] if stable_subject == "未知" else allowed_subject_group(stable_subject).split("、")
    stable_count_map = dict(stable_counts)
    if not ingredient_states:
        fallback_stage = ACTION_TO_INGREDIENT_STAGE.get(
            process_state.action if process_state is not None else "idle",
            "untouched",
        )
        fallback_progress = (
            process_state.progress
            if process_state is not None and process_state.progress >= 0.0
            else 0.0
        )
        ingredient_states = tuple(
            IngredientOscState(item, 1, fallback_stage, fallback_progress)
            for item in stable_items
        )
    for item in ingredient_states:
        whole_count = stable_count_map.get(item.ingredient, 0) if item.present != 0 else 0
        client.send_message(
            OSC_INGREDIENT_ADDRESS,
            [
                subject_to_english(item.ingredient),
                whole_count,
                item.stage,
                item.progress,
                int(item.present != 0),
            ],
        )

    # 2. Global cooking process carries only the coarse action and its active
    # gate.  Per-ingredient progress is sent above; one-shot events use /event.
    if process_state is None:
        process_state = ProcessState(
            action=result["过程"]["动作"],
            active=0 if result["过程"]["动作"] in {"idle", "unknown"} else 1,
            elapsed_seconds=0.0,
            progress=-1.0,
            event="none",
        )
    client.send_message(
        OSC_PROCESS_ADDRESS,
        [
            process_state.action,
            process_state.active,
        ],
    )

    # 4. Events are analyzed independently from the sustained process action.
    # The tracker passes only newly appearing events, never repeated "none".
    # Only the verified final reveal may leave the recognition process.
    if FINAL_REVEAL_EVENT in one_shot_events:
        client.send_message(OSC_EVENT_ADDRESS, FINAL_REVEAL_EVENT)

    client.send_message(OSC_CURRENT_TOKENS_ADDRESS, current_tokens)
    client.send_message(OSC_CUMULATIVE_TOKENS_ADDRESS, cumulative_tokens)


def dry_run_result(_image_path: Path) -> dict[str, Any]:
    return {
        "主体名称": "猪肉、青椒、大蒜、鸡蛋、小米辣",
        "食材计数": [
            {"名称": "猪肉", "完整个数": 1, "数量置信度": 0.94, "计数依据": "reconstructed_whole"},
            {"名称": "青椒", "完整个数": 2, "数量置信度": 0.95, "计数依据": "whole_visible"},
            {"名称": "大蒜", "完整个数": 2, "数量置信度": 0.92, "计数依据": "whole_visible"},
            {"名称": "鸡蛋", "完整个数": 1, "数量置信度": 0.95, "计数依据": "whole_visible"},
            {"名称": "小米辣", "完整个数": 1, "数量置信度": 0.93, "计数依据": "whole_visible"},
        ],
        "食材状态": "visible",
        "食材视觉": [
            {"名称": "猪肉", "颜色": "pink", "加工状态": "cut", "熟度": "raw", "面积比例": 0.22, "水平位置": 0.20},
            {"名称": "青椒", "颜色": "green", "加工状态": "cut", "熟度": "raw", "面积比例": 0.18, "水平位置": 0.38},
            {"名称": "大蒜", "颜色": "white", "加工状态": "cut", "熟度": "raw", "面积比例": 0.08, "水平位置": 0.54},
            {"名称": "鸡蛋", "颜色": "yellow", "加工状态": "cut", "熟度": "cooked", "面积比例": 0.07, "水平位置": 0.68},
            {"名称": "小米辣", "颜色": "red", "加工状态": "whole", "熟度": "raw", "面积比例": 0.12, "水平位置": 0.82},
        ],
        "主体置信度": 0.95,
        "颜色": "mixed",
        "形状": "cut",
        "面积比例": 0.67,
        "切菜动作": 1,
        "过程": {"动作": "chop", "目标食材": ["猪肉"], "置信度": 0.95},
        "成品判断": {"状态": "not_finished", "置信度": 0.95},
    }


def image_signature(image_path: Path) -> tuple[int, int]:
    stat = image_path.stat()
    return stat.st_mtime_ns, stat.st_size


def list_images(folder: Path) -> list[Path]:
    # A producer can replace a JPEG between discovery and stat(). Snapshot
    # metadata once, skip transiently unavailable files, and sort that snapshot.
    found = []
    for item in folder.iterdir():
        if item.suffix.lower() not in SUPPORTED_EXTENSIONS:
            continue
        try:
            info = item.stat()
        except (FileNotFoundError, PermissionError):
            continue
        if stat.S_ISREG(info.st_mode):
            found.append((info.st_mtime_ns, item.name.lower(), item))
    return [item for _, _, item in sorted(found, key=lambda value: value[:2])]


def enqueue_latest(work_queue: queue.Queue[ImageTask], task: ImageTask, drop_old: bool) -> None:
    if not drop_old:
        work_queue.put(task)
        return
    try:
        work_queue.put_nowait(task)
    except queue.Full:
        try:
            dropped = work_queue.get_nowait()
            work_queue.task_done()

        except queue.Empty:
            pass
        work_queue.put_nowait(task)


def reset_ingredient_presence(osc_client: SimpleUDPClient) -> None:
    """Clear every food gate when the round or current scene is invalidated."""
    for ingredient in ALLOWED_INGREDIENTS:
        token = subject_to_english(ingredient)
        # Explicit solo progress prevents the reporting wrapper from appending
        # an old timeline value while playback is being restarted.
        osc_client.send_message(OSC_INGREDIENT_ADDRESS, [token, 0, "untouched", 0.0, 0, 0.0])
        osc_client.send_message(OSC_INGREDIENT_COUNT_ADDRESS, [token, 0])


def worker_loop(
    work_queue: queue.Queue[ImageTask],
    stop_event: threading.Event,
    analyzer: QwenImageAnalyzer | None,
    osc_client: SimpleUDPClient,
    dry_run: bool,
    timeline_guide: TimelineGuide,
    playback_state: PlaybackState,
    progress_interpolator: IngredientProgressInterpolator,
    recent_frames: LatestCapturedFrame | None = None,
    trace: RecognitionTrace | None = None,
    fast_event_channel: FastEventChannel | None = None,
    token_ledger: TokenLedger | None = None,
    serving_plan: ServingPlan | None = None,
) -> None:
    cumulative_tokens = load_cumulative_tokens()
    recognition_number = 0
    stabilizer = SubjectStabilizer(history_size=5)
    count_stabilizer = WholeCountStabilizer()
    process_tracker = ProcessTracker()
    stage_tracker = CookingStageTracker(serving_plan if serving_plan and
        serving_plan.matches_source(playback_state.mapping.source_name) else None)
    scene_guard = SceneControlGuard()
    final_reveal_tracker = FinalRevealTracker()
    ingredient_stage_tracker = IngredientStageTracker()
    tracker_generation = playback_state.generation
    tracker_round = playback_state.playback_round
    last_result_sequence = 0
    while not stop_event.is_set():
        try:
            task = work_queue.get(timeout=0.25)
        except queue.Empty:
            continue
        started = time.monotonic()
        commit_locked = False
        try:
            if trace is not None:
                trace.set_context(sequence=getattr(task, "sequence", None),
                                  frame_seconds=task.playback_seconds)
            if not isinstance(task, AnalysisCompletion) and (
                    task.generation != playback_state.generation or playback_state.running is False):
                if trace is not None:
                    trace.task("result_discarded", task, reason="playback_not_current")
                continue
            if isinstance(task, AnalysisCompletion):
                result, usage = task.resolve()
            elif dry_run:
                result = dry_run_result(task.path)
                usage = normalize_usage({})
            else:
                result, usage = analyzer.analyze(task.path, task.image_data_url)  # type: ignore[union-attr]
            if trace is not None:
                trace.task("analysis_returned", task,
                           api_started_at=getattr(task, "started_at", started),
                           api_completed_at=getattr(task, "completed_at", time.monotonic()),
                           observed_foods=result["主体名称"],
                           ingredient_status=result["食材状态"],
                           confidence=result["主体置信度"],
                           action=result["过程"]["动作"],
                           targets=result["过程"]["目标食材"],
                           display_action=result["过程"].get("当前动作"),
                           process_confidence=result["过程"].get("置信度"),
                           ingredient_scene=result.get("食材场景"))
            current_tokens = usage["total_tokens"]
            if not dry_run:
                if token_ledger is not None:
                    cumulative_tokens = token_ledger.record(current_tokens)
                else:
                    cumulative_tokens += current_tokens
                    save_cumulative_tokens(cumulative_tokens)
            playback_state._lock.acquire()
            commit_locked = True
            if (stop_event.is_set() or task.generation != playback_state.generation
                    or playback_state.running is False
                    or (task.captured_at and time.monotonic() - task.captured_at > MAX_RESULT_AGE_SECONDS)):
                if trace is not None:
                    trace.task("result_discarded", task, reason="stopped_generation_or_age",
                               current_generation=playback_state.generation)
                continue
            if tracker_generation != task.generation:
                if tracker_round != playback_state.playback_round:
                    stabilizer = SubjectStabilizer(history_size=5)
                else:
                    # Seeking invalidates current scene membership. Max must
                    # receive the same clearing that Python applies internally.
                    reset_ingredient_presence(osc_client)
                    stabilizer.reset_observations()
                count_stabilizer = WholeCountStabilizer()
                process_tracker = ProcessTracker()
                stage_tracker = CookingStageTracker(serving_plan if serving_plan and
                    serving_plan.matches_source(playback_state.mapping.source_name) else None)
                scene_guard = SceneControlGuard()
                if tracker_round != playback_state.playback_round:
                    final_reveal_tracker = FinalRevealTracker()
                else:
                    final_reveal_tracker.reset_observations()
                ingredient_stage_tracker = IngredientStageTracker()
                progress_interpolator.synchronize_generation(task.generation)
                tracker_generation = task.generation
                tracker_round = playback_state.playback_round
            if isinstance(task, AnalysisCompletion):
                if task.sequence <= last_result_sequence:
                    # A valid response may arrive out of order. It must not
                    # replace current action, events or ingredient gates. A clear
                    # observation can enrich history without reopening a voice.
                    added = ()
                    if result["食材状态"] == "visible":
                        added = stabilizer.remember_cooking_frame(
                            result["主体名称"], result["主体置信度"],
                            result["过程"]["动作"],
                            cooking_visible=result.get("食材场景", {}).get("锅内烹饪可见"),
                        )
                    if trace is not None:
                        trace.task("result_discarded", task, reason="out_of_order",
                                   cooking_history_added=list(added),
                                   remembered_foods=stabilizer.remembered_subject)
                    continue
                last_result_sequence = task.sequence
            rejection = scene_guard.rejection_reason(
                result, task.captured_at or time.monotonic())
            if rejection is not None:
                if trace is not None:
                    trace.task("result_discarded", task, reason=rejection,
                               held_action=process_tracker.action,
                               held_foods=stabilizer.stable_subject)
                continue
            playback_seconds = task.playback_seconds
            cooking_stage = stage_tracker.update(result, playback_seconds)
            timeline_hint = timeline_guide.lookup(playback_seconds)
            decision = stabilizer.update(
                result["主体名称"],
                result["主体置信度"],
                timeline_hint,
                result["过程"].get("当前动作", result["过程"]["动作"]),
                targets=result["过程"]["目标食材"],
                process_confidence=result["过程"].get("置信度") or None,
                cooking_visible=result.get("食材场景", {}).get("锅内烹饪可见"),
                dish_status=result.get("成品判断", {}).get("状态", "uncertain"),
                visibility_status=result["食材状态"],
                focused_subject=result.get("食材场景", {}).get("当前食材"),
                addition_visible=result.get("食材场景", {}).get("加入食材可见"),
                empty_vessel_visible=result.get("食材场景", {}).get("空锅可见"),
                overall_stage=cooking_stage.name,
                serving_role=cooking_stage.role,
            )
            playback_state.set_batch_hint(task.generation, stabilizer.confirmed_batch_subject)
            count_visibility_status = result["食材状态"]
            if (
                count_visibility_status == "none"
                and decision.stable_subject != "未知"
                and stabilizer.context in {"cooking", "transfer", "serving"}
            ):
                # An occluded current batch may retain its counts. Explicit
                # empty-vessel evidence already cleared its current membership.
                count_visibility_status = "uncertain"
            count_decision = count_stabilizer.update(
                normalize_count_observations(result["食材计数"]),
                decision.stable_subject,
                result["主体置信度"],
                timeline_hint,
                count_visibility_status,
            )
            process_state = process_tracker.update(
                result["过程"]["动作"],
                result["过程"]["置信度"],
                playback_seconds,
                timeline_guide,
                result["过程"]["目标食材"],
            )
            confirmation = recent_frames.after(task) if recent_frames is not None else None
            if fast_event_channel is not None:
                one_shot_events = fast_event_channel.main_events(task, result, confirmation)
            else:
                one_shot_events = final_reveal_tracker.update(
                    result, playback_seconds, playback_state.mapping,
                    task.image_data_url, confirmation)
            progress_duration = process_tracker.expected_duration_seconds(
                playback_seconds,
                timeline_guide,
            )
            ingredient_states = ingredient_stage_tracker.update(
                decision.stable_subject,
                process_state,
            )
            ingredient_states = progress_interpolator.update(
                ingredient_states,
                count_decision.stable_counts,
                process_state,
                # Recognition belongs to the captured frame; live parameter
                # progress belongs to the current playback position.
                playback_state.current_seconds(),
                progress_duration,
            )
            if trace is not None:
                trace.task("recognition_commit", task,
                           stable_foods=decision.stable_subject, decision=decision.reason,
                           remembered_foods=stabilizer.remembered_subject,
                           ingredient_context=stabilizer.context,
                           cooking_batch=stabilizer.batch_id,
                           playback_round=playback_state.playback_round,
                           process_action=process_state.action,
                           cooking_stage=cooking_stage.name, serving_role=cooking_stage.role,
                           stage_reason=cooking_stage.reason,
                           ending_controls_held=playback_state.ending,
                           instrument_presence={subject_to_english(item.ingredient): item.present
                                                for item in ingredient_states})
            send_osc_result(
                osc_client,
                result,
                decision.stable_subject,
                decision.timeline_subject,
                current_tokens,
                cumulative_tokens,
                count_decision.stable_counts,
                count_decision.cleared_ingredients,
                process_state,
                ingredient_states,
                one_shot_events,
            )
            stage_tracker.send_changed(osc_client, cooking_stage)
            recognition_number += 1
            report_events = one_shot_events
            if fast_event_channel is not None:
                report_events += fast_event_channel.report_events()
            print(format_observation_summary(
                recognition_number, result, decision.stable_subject, report_events,
                progress_report=getattr(osc_client, "progress_report", None),
                serving_role=cooking_stage.role,
            ), flush=True)
        except Exception as error:  # Keep watching after one bad file or request.
            if trace is not None:
                trace.task("analysis_failed", task, error_type=type(error).__name__,
                           api_started_at=getattr(task, "started_at", started),
                           api_completed_at=getattr(task, "completed_at", time.monotonic()))
            message = f"{task.path.name}: {error}"
            print(f"分析失败：{message}")
        finally:
            if commit_locked:
                playback_state._lock.release()
            work_queue.task_done()
            if trace is not None:
                trace.clear_context()


def receive_live_playlist(stream, stop_event, playback_state, source_duration, trace=None):
    """Read occasional metadata changes from Node; never restart recognition."""
    for line in stream:
        if stop_event.is_set():
            return
        try:
            message = json.loads(line)
            clip = message["clip"]
            if message.get("type") != "playback_clip" or not isinstance(clip, dict):
                continue
            source = Path(str(clip.get("filename") or clip.get("absolutepath") or "")).name
            if source.casefold() != Path(playback_state.mapping.source_name).name.casefold():
                continue
            start, end = map(float, clip["selection"])
            if not (math.isfinite(start) and math.isfinite(end) and 0 <= start < end <= 1):
                continue
            mapping = playback_mapping_for_clip(PROJECT_ROOT, source_duration, clip)
            if playback_state.update_mapping(mapping) and trace is not None:
                trace.record("playback_mapping", source=source, selection=[start, end],
                             offset_seconds=mapping.offset_seconds,
                             duration_seconds=mapping.duration_seconds,
                             generation=playback_state.generation,
                             mapping_revision=playback_state.mapping_revision)
        except (ValueError, TypeError, KeyError):
            continue


def create_playback_server(
    host: str,
    port: int,
    playback_state: PlaybackState,
    analysis_pipeline: AnalysisPipeline | None = None,
    osc_client: SimpleUDPClient | None = None,
    trace: RecognitionTrace | None = None,
    event_capture_marker: CaptureMarker | None = None,
) -> ThreadingOSCUDPServer:
    dispatcher = Dispatcher()

    def receive_progress(_address: str, *values: Any) -> None:
        if not values:
            return
        if len(values) == 1:
            progress = values[0]
        elif str(values[0]).lower() == "progress":
            progress = values[-1]
        else:
            return
        generation = playback_state.generation
        playback_state.update_progress(progress)
        if trace is not None and generation != playback_state.generation:
            trace.record("playback_seek", generation=playback_state.generation,
                         playback_round=playback_state.playback_round,
                         playback_seconds=playback_state.current_seconds())

    def receive_state(_address: str, value: Any) -> None:
        with playback_state._lock:
            previous_round = playback_state.playback_round
            playback_state.set_running(value)
            if trace is not None:
                trace.record("playback_state", running=playback_state.running,
                             generation=playback_state.generation,
                             playback_round=playback_state.playback_round)
            if osc_client is not None and previous_round != playback_state.playback_round:
                reset_ingredient_presence(osc_client)

    def receive_restart(_address: str, *values: Any) -> None:
        with playback_state._lock:
            playback_state.restart()
            if trace is not None:
                trace.record("playback_restart", generation=playback_state.generation,
                             playback_round=playback_state.playback_round)
            if osc_client is not None:
                reset_ingredient_presence(osc_client)

    dispatcher.map(OSC_PLAYBACK_PROGRESS_ADDRESS, receive_progress)
    dispatcher.map("/playback/state", receive_state)
    dispatcher.map("/playback/frame", lambda _address, *values: playback_state.mark_frame())
    if event_capture_marker is not None:
        dispatcher.map("/playback/event_frame", lambda _address, *values: event_capture_marker.mark())
    dispatcher.map("/playback/restart", receive_restart)
    if analysis_pipeline is not None:
        def receive_interval(_address, value):
            analysis_pipeline.set_interval(value)
        dispatcher.map("/analysis/interval", receive_interval)
    return ThreadingOSCUDPServer((host, port), dispatcher)


def build_argument_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="每秒监控图片文件夹，使用Qwen分析并通过OSC发送给Max。")
    parser.add_argument("--folder", default=WATCH_FOLDER, help="目标图片文件夹")
    parser.add_argument("--interval", type=float, default=POLL_INTERVAL_SECONDS, help="扫描间隔，默认0.1秒")
    parser.add_argument("--analysis-interval", type=float, default=DEFAULT_ANALYSIS_INTERVAL_SECONDS,
                        help="API请求间隔，默认3秒；也可通过OSC实时调整")
    parser.add_argument("--osc-host", default=OSC_HOST, help="Max所在主机，默认127.0.0.1")
    parser.add_argument("--osc-port", type=int, default=OSC_PORT, help="Max接收端口，默认9000")
    parser.add_argument(
        "--timeline",
        default=str(DEFAULT_TIMELINE_PATH),
        help="预分析时间线JSON；只作为实时识别的辅助",
    )
    parser.add_argument(
        "--max-patch",
        default=resolve_default_max_patch(),
        help="实际Max主工程路径，用于把播放进度正确映射到当前视频或分段",
    )
    parser.add_argument("--disable-timeline", action="store_true", help="禁用时间线辅助，只使用实时多帧判断")
    parser.add_argument("--video", help="当前实际视频，避免读取旧工程保存的播放列表")
    parser.add_argument("--playlist-selection", nargs=2, type=float, metavar=("START", "END"),
                        help="当前Max播放选区，优先于工程文件里保存的旧选区")
    parser.add_argument("--live-playlist", action="store_true",
                        help="从Node标准输入接收播放选区更新")
    parser.add_argument("--playback-osc-host", default=PLAYBACK_OSC_HOST, help="接收Max播放进度的主机")
    parser.add_argument("--playback-osc-port", type=int, default=PLAYBACK_OSC_PORT, help="接收Max播放进度的端口")
    parser.add_argument("--model", default=read_environment("QWEN_MODEL") or DEFAULT_MODEL)
    parser.add_argument("--new-only", action="store_true", help="启动后只处理新出现或被修改的图片")
    parser.add_argument("--startup-first-frame", action="store_true",
                        help="每次开启先分析原视频第0秒的首帧，再分析播放截图")
    parser.add_argument("--keep-all", action="store_true", help="不丢帧，按顺序处理所有待分析图片")
    parser.add_argument("--once", help="只分析指定图片一次，然后退出")
    parser.add_argument("--dry-run", action="store_true", help="不调用API，只发送一组测试OSC参数")
    parser.add_argument("--fast-events", action="store_true", help="启用独立结束事件识别；不分析其他一次性事件")
    parser.add_argument("--event-model", default=EVENT_MODEL, help="独立结束事件模型，默认qwen3.6-flash")
    parser.add_argument("--event-interval", type=float, default=EVENT_INTERVAL,
                        help="结束检测请求间隔，默认0.5秒；最多两个请求在途")
    parser.add_argument("--runtime-trace-dir", default=str(PROJECT_ROOT / "analysis" / "runtime_diagnostics"),
                        help="后台识别时序记录目录；不会增加控制台报告")
    parser.add_argument("--no-runtime-trace", action="store_true", help="关闭后台识别时序记录")
    return parser


def main() -> int:
    args = build_argument_parser().parse_args()
    if args.interval <= 0:
        raise SystemExit("--interval必须大于0")
    if not .5 <= args.analysis_interval <= 60:
        raise SystemExit("--analysis-interval必须在0.5到60秒之间")
    if not .5 <= args.event_interval <= 60:
        raise SystemExit("--event-interval必须在0.5到60秒之间")
    if not 1 <= args.osc_port <= 65535:
        raise SystemExit("--osc-port必须在1到65535之间")
    if not 1 <= args.playback_osc_port <= 65535:
        raise SystemExit("--playback-osc-port必须在1到65535之间")

    api_key = "" if args.dry_run else read_environment("DASHSCOPE_API_KEY")
    if not args.dry_run and not api_key:
        raise SystemExit("没有找到DASHSCOPE_API_KEY环境变量")

    analyzer = None if args.dry_run else QwenImageAnalyzer(api_key, args.model, resolve_base_url())
    osc_client = SimpleUDPClient(args.osc_host, args.osc_port)
    timeline_path = None if args.disable_timeline else Path(args.timeline).expanduser().resolve()
    timeline_guide = TimelineGuide(timeline_path)
    max_patch_path = Path(args.max_patch).expanduser().resolve() if args.max_patch else None
    if max_patch_path is not None and not max_patch_path.is_file():
        raise SystemExit(f"找不到Max主工程：{max_patch_path}")
    playback_mapping = infer_playback_mapping(
        PROJECT_ROOT,
        timeline_guide.duration_seconds,
        max_patch_path,
    )
    if args.video:
        # Preserve the playlist selection when it belongs to this source.  Max
        # reports progress inside the selected range, not across the full file.
        requested_video_name = Path(args.video).name
        if Path(playback_mapping.source_name).name.casefold() == requested_video_name.casefold():
            playback_mapping = PlaybackMapping(
                playback_mapping.offset_seconds,
                playback_mapping.duration_seconds,
                requested_video_name,
            )
        else:
            playback_mapping = PlaybackMapping(
                0.0, timeline_guide.duration_seconds, requested_video_name,
            )
    if args.playlist_selection is not None:
        start, end = args.playlist_selection
        if not (math.isfinite(start) and math.isfinite(end) and 0 <= start < end <= 1):
            raise SystemExit("播放选区必须满足 0 <= start < end <= 1")
        playback_mapping = playback_mapping_for_clip(
            PROJECT_ROOT, timeline_guide.duration_seconds,
            {"filename": playback_mapping.source_name, "selection": [start, end]},
        )
    playback_state = PlaybackState(playback_mapping, mapping_ready=(
        not args.live_playlist or args.playlist_selection is not None
        or timeline_guide.duration_seconds <= 0))
    solo_fry_timeline = SoloFryTimeline(timeline_path)
    chop_timeline = ChopTimeline(timeline_path)
    try:
        stage_video = resolve_startup_video(args.video, max_patch_path, PROJECT_ROOT)
    except (OSError, ValueError, KeyError, StopIteration, IndexError):
        stage_video = None
    # Never attach another video's purpose annotations to the selected playback.
    serving_plan = ServingPlan(timeline_path, video=stage_video) if stage_video else ServingPlan()
    progress_report = SpecialProgressReport(tuple(solo_fry_timeline.windows))
    osc_client = ReportingOSCClient(osc_client, progress_report, solo_fry_timeline, playback_state)

    if args.once:
        image_path = Path(args.once).expanduser().resolve()
        if not image_path.is_file():
            raise SystemExit(f"找不到图片：{image_path}")
        if args.dry_run:
            result = dry_run_result(image_path)
            usage = normalize_usage({})
        else:
            result, usage = analyzer.analyze(image_path)  # type: ignore[union-attr]
        cumulative_tokens = load_cumulative_tokens()
        current_tokens = usage["total_tokens"]
        if not args.dry_run:
            cumulative_tokens += current_tokens
            save_cumulative_tokens(cumulative_tokens)
        count_decision = WholeCountStabilizer().update(
            normalize_count_observations(result["食材计数"]),
            result["主体名称"],
            result["主体置信度"],
            None,
            result["食材状态"],
        )
        process_state = ProcessTracker().update(
            result["过程"]["动作"],
            result["过程"]["置信度"],
            playback_state.current_seconds(),
            timeline_guide,
            result["过程"]["目标食材"],
        )
        one_shot_events = FinalRevealTracker().update(
            result,
            playback_state.current_seconds(),
            playback_state.mapping,
        )
        ingredient_states = IngredientStageTracker().update(
            result["主体名称"],
            process_state,
        )
        stage_tracker = CookingStageTracker(serving_plan)
        cooking_stage = stage_tracker.update(result, playback_state.current_seconds())
        send_osc_result(
            osc_client,
            result,
            result["主体名称"],
            "未知",
            current_tokens,
            cumulative_tokens,
            count_decision.stable_counts,
            count_decision.cleared_ingredients,
            process_state,
            ingredient_states,
            one_shot_events,
        )
        stage_tracker.send_changed(osc_client, cooking_stage)
        print(format_observation_summary(
            1, result, result["主体名称"], one_shot_events,
            progress_report=getattr(osc_client, "progress_report", None),
            serving_role=cooking_stage.role,
        ), flush=True)
        return 0

    if not args.folder:
        raise SystemExit("请填写脚本顶部WATCH_FOLDER，或使用 --folder \"D:\\你的图片文件夹\"")
    folder = Path(args.folder).expanduser().resolve()
    if not folder.is_dir():
        raise SystemExit(f"目标文件夹不存在：{folder}")

    trace = RecognitionTrace(None if args.no_runtime_trace else Path(args.runtime_trace_dir),
                             model=args.model, dry_run=args.dry_run, analysis_interval=args.analysis_interval,
                             osc_host=args.osc_host, osc_port=args.osc_port,
                             python_executable=sys.executable,
                             fast_events=args.fast_events, event_model=args.event_model if args.fast_events else None,
                             event_interval=args.event_interval if args.fast_events else None,
                             mapping={"offset_seconds": playback_mapping.offset_seconds,
                                      "duration_seconds": playback_mapping.duration_seconds,
                                      "source": playback_mapping.source_name},
                             source_fingerprints=source_fingerprints([
                                 Path(__file__), Path(__file__).with_name("cooking_fusion.py"),
                                 Path(__file__).with_name("analysis_pipeline.py"),
                                 Path(__file__).with_name("fast_events.py"),
                                 Path(__file__).with_name("live_event_capture.py"),
                                 *([max_patch_path] if max_patch_path else [])]))
    osc_client.client = TracingOSCClient(osc_client.client, trace, playback_state)

    drop_old = DROP_OLD_PENDING_IMAGES and not args.keep_all
    work_queue: queue.Queue[ImageTask] = queue.Queue(maxsize=1 if drop_old else 0)
    completed_queue = queue.Queue()
    stop_event = threading.Event()
    if args.live_playlist:
        threading.Thread(target=receive_live_playlist,
                         args=(sys.stdin, stop_event, playback_state,
                               timeline_guide.duration_seconds, trace),
                         name="max-playlist-metadata", daemon=True).start()
    progress_interpolator = IngredientProgressInterpolator()
    recent_frames = LatestCapturedFrame()
    main_frame_input = MainFrameInput(work_queue, playback_state, recent_frames, trace, drop_old,
                                     continuous=True)
    analysis_local = threading.local()
    event_capture_marker = CaptureMarker(playback_state) if args.fast_events else None
    token_ledger = TokenLedger(load_cumulative_tokens(), save_cumulative_tokens) if args.fast_events and not args.dry_run else None
    fast_event_channel = None
    event_analyzers = []
    if args.fast_events:
        event_local = threading.local()
        def analyze_event_task(task):
            if args.dry_run:
                return 0
            if not hasattr(event_local, "analyzer"):
                event_local.analyzer = EventAnalyzer(api_key, resolve_base_url(), args.event_model, token_ledger)
                event_analyzers.append(event_local.analyzer)
            return event_local.analyzer.analyze(task)
        event_client = TracingOSCClient(SimpleUDPClient(args.osc_host, args.osc_port),
                                       trace, playback_state, origin="fast_event")
        fast_event_channel = FastEventChannel(playback_state, stop_event, analyze_event_task,
                                              event_client, trace, args.event_interval,
                                              max_age=MAX_RESULT_AGE_SECONDS,
                                              final_tracker_factory=FinalRevealTracker)

    def analyze_task(task):
        if args.dry_run:
            return dry_run_result(task.path), normalize_usage({})
        if not hasattr(analysis_local, "analyzer"):
            analysis_local.analyzer = QwenImageAnalyzer(analyzer.api_key, analyzer.model, analyzer.base_url)
        return analysis_local.analyzer.analyze(task.path, task.image_data_url,
            confirmed_foods=playback_state.batch_hint(task.generation))

    def frame_is_current(task):
        with playback_state._lock:
            current = (task.generation == playback_state.generation and playback_state.running is not False
                       and (not task.captured_at or time.monotonic() - task.captured_at <= MAX_RESULT_AGE_SECONDS))
            if not current:
                trace.task("capture_discarded", task, reason="scheduler_generation_or_age")
            return current

    analysis_pipeline = AnalysisPipeline(work_queue, completed_queue, stop_event, analyze_task,
                                         args.analysis_interval, is_current=frame_is_current)
    worker = threading.Thread(
        target=worker_loop,
        args=(
            completed_queue,
            stop_event,
            analyzer,
            osc_client,
            args.dry_run,
            timeline_guide,
            playback_state,
            progress_interpolator,
            recent_frames,
            trace,
            fast_event_channel,
            token_ledger,
        ),
        name="qwen-image-worker",
        kwargs={"serving_plan": serving_plan},
        daemon=True,
    )
    reset_ingredient_presence(osc_client)
    worker.start()

    try:
        playback_server = create_playback_server(
            args.playback_osc_host,
            args.playback_osc_port,
            playback_state,
            analysis_pipeline,
            osc_client,
            trace,
            event_capture_marker,
        )
    except OSError as error:
        stop_event.set()
        raise SystemExit(f"无法监听播放进度端口{args.playback_osc_port}：{error}") from error
    playback_thread = threading.Thread(
        target=playback_server.serve_forever,
        name="max-playback-osc",
        daemon=True,
    )
    playback_thread.start()
    progress_osc_client = ReportingOSCClient(TracingOSCClient(SimpleUDPClient(args.osc_host, args.osc_port),
                                                            trace, playback_state, origin="progress"), progress_report,
                                            solo_fry_timeline, playback_state)
    progress_thread = threading.Thread(
        target=ingredient_progress_loop,
        args=(
            stop_event,
            progress_interpolator,
            playback_state,
            progress_osc_client,
        ),
        name="ingredient-progress-osc",
        kwargs={"solo_fry_timeline": solo_fry_timeline, "chop_timeline": chop_timeline},
        daemon=True,
    )
    progress_thread.start()
    analysis_pipeline.start()
    if fast_event_channel is not None:
        fast_event_channel.start()

    seen: dict[Path, tuple[int, int]] = {}
    if args.new_only or not PROCESS_EXISTING_IMAGES:
        for image_path in list_images(folder):
            try:
                seen[image_path] = image_signature(image_path)
            except (FileNotFoundError, PermissionError):
                continue

    startup_video = None
    startup_image = None
    if args.startup_first_frame:
        try:
            startup_video = resolve_startup_video(args.video, max_patch_path, PROJECT_ROOT)
            first_path = cache_first_frame(startup_video,
                                          folder / "analysis" / "startup_first_frame.jpg", folder)
            first_url = None if args.dry_run else make_image_data_url(first_path)
            startup_image = (first_path, image_signature(first_path), first_url)
        except (OSError, ValueError, KeyError, StopIteration, IndexError,
                subprocess.SubprocessError) as error:
            print(f"分析失败：视频首帧准备失败（{error}）；继续识别播放截图", flush=True)
    startup_waiting = False

    event_video_capture = None
    if fast_event_channel is not None:
        try:
            event_video = startup_video or resolve_startup_video(args.video, max_patch_path, PROJECT_ROOT)
            event_video_capture = LiveEventCapture(event_video, PROJECT_ROOT, playback_state,
                                                   stop_event, fast_event_channel,
                                                   interval=args.event_interval, trace=trace,
                                                   on_frame=(None if args.startup_first_frame
                                                             else main_frame_input.from_video))
            event_video_capture.start()
        except (OSError, ValueError, KeyError, StopIteration, IndexError) as error:
            trace.record("event_video_capture_unavailable", error_type=type(error).__name__)
            print("独立结束检测取帧不可用；继续使用播放截图", flush=True)

    print("识别已就绪", flush=True)

    try:
        while True:
            if startup_image is not None:
                # Bind the saved first frame to this playback round. Progress
                # packets arrive independently of the three-second image clock.
                with playback_state._lock:
                    if playback_state.running is False:
                        startup_image = None
                    elif playback_state.current_seconds() is not None:
                        first_path, first_signature, first_url = startup_image
                        first_task = ImageTask(first_path, first_signature,
                                               playback_state.generation, 0.0,
                                               first_url, time.monotonic())
                        trace.task("capture_queued", first_task, source="cached_original_first_frame")
                        enqueue_latest(work_queue, first_task, drop_old)
                        startup_image = None
                        startup_waiting = True
                if startup_image is not None or startup_waiting:
                    time.sleep(args.interval)
                    continue
            if startup_waiting:
                # Let the scheduler take the first frame before a live image can
                # replace it in the latest-image queue.
                if not work_queue.empty():
                    time.sleep(args.interval)
                    continue
                startup_waiting = False
            for image_path in list_images(folder):
                try:
                    signature = image_signature(image_path)
                except (FileNotFoundError, PermissionError):
                    continue
                if seen.get(image_path) == signature:
                    continue
                if image_path.name == EVENT_IMAGE_NAME:
                    if event_video_capture is not None and fast_event_channel.dedicated_capture_active():
                        seen[image_path] = signature
                        continue
                    if fast_event_channel is None:
                        seen[image_path] = signature
                        continue
                    snapshot = event_capture_marker.snapshot()
                    if snapshot is None:
                        continue
                    event_generation, event_seconds, event_captured_at = snapshot
                    if (event_seconds is None or event_generation != playback_state.generation
                            or playback_state.running is not True
                            or time.monotonic() - event_captured_at > MAX_RESULT_AGE_SECONDS):
                        continue
                    try:
                        event_url = None if args.dry_run else event_image_url(image_path.read_bytes())
                        if image_signature(image_path) != signature:
                            continue
                    except (OSError, ValueError):
                        continue
                    task = EventTask(image_path, signature, event_generation, event_seconds,
                                     event_url or "", event_captured_at)
                    fast_event_channel.submit(task)
                    seen[image_path] = signature
                    continue
                if main_frame_input.live_capture_active():
                    # The existing decoder supplies fresh frames every 0.5s.
                    # Do not re-encode and queue a competing 3s Max screenshot.
                    seen[image_path] = signature
                    continue
                generation, capture_seconds, captured_at = playback_state.frame_snapshot()
                if playback_state.running is False:
                    seen[image_path] = signature
                    continue
                if (capture_seconds is None or generation != playback_state.generation
                        or time.monotonic() - captured_at > MAX_RESULT_AGE_SECONDS):
                    # Retry after playback metadata arrives, rather than losing
                    # a fresh image during the startup race.
                    continue
                try:
                    image_data_url = None if args.dry_run else make_image_data_url(image_path)
                except (OSError, ValueError):
                    continue
                if image_signature(image_path) != signature:
                    continue
                image_task = ImageTask(
                    image_path, signature, generation, capture_seconds,
                    image_data_url, captured_at,
                )
                if not main_frame_input.submit(image_task):
                    continue
                if fast_event_channel is not None and not fast_event_channel.dedicated_capture_active():
                    # The independent Max capture may be disabled. Reuse this
                    # frozen image so event analysis still has a real input.
                    event_url = (event_image_url(base64.b64decode(image_data_url.split(",", 1)[1]))
                                 if image_data_url else "")
                    fast_event_channel.submit(EventTask(
                        image_path, signature, generation, capture_seconds, event_url, captured_at),
                        dedicated=False)
                seen[image_path] = signature
            time.sleep(args.interval)
    except KeyboardInterrupt:
        print("识别已停止", flush=True)
    finally:
        stop_event.set()
        if event_video_capture is not None:
            event_video_capture.join(timeout=3)
        analysis_pipeline.join(timeout=3)
        if fast_event_channel is not None:
            fast_event_channel.join(timeout=3)
        for event_analyzer in event_analyzers:
            # Closing an active HTTP session is unsafe; stopped daemon requests
            # expire on their own and are never allowed to commit.
            if not any(t.is_alive() for t in fast_event_channel.pipeline._threads):
                event_analyzer.session.close()
        worker.join(timeout=3)
        progress_thread.join(timeout=2)
        playback_server.shutdown()
        playback_server.server_close()
        playback_thread.join(timeout=2)
        trace.close()
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
