"""Bounded final-dish recognition, independent of full recognition."""
from __future__ import annotations

import base64
import io
import queue
import threading
import time
from dataclasses import dataclass
from pathlib import Path

import requests
from PIL import Image, ImageOps
from urllib3.util import Timeout

from analysis_pipeline import AnalysisPipeline, AnalysisCompletion
from runtime_display import EVENT_LABELS

EVENT_IMAGE_NAME = "event_frame.jpg"
EVENT_MODEL = "qwen3.6-flash"
EVENT_INTERVAL = 0.5
EVENT_MAX_AGE = 4.0
FINAL_REVEAL_EVENT = "final_reveal_pulse"
EVENT_CODES = {0: (), 1: (FINAL_REVEAL_EVENT,)}
EVENT_SYSTEM = "只判断盛菜结束后的最终成品展示；端盘移动允许。只输出0或1。"
EVENT_PROMPT = """1=熟菜已装在最终上桌盘碗中，烹饪和盛菜均已结束，仅展示成品。
0=仍在锅内煎炒、腌制/备料、加料、正从锅盛出/装盘、备用碗中的菜、空盘，或无法确认。
锅铲/勺仍贴着盘内食物盛菜、跨盘沿送菜、刮锅或补菜时必须0，即使盘已装满、被端起也不算结束。
盛菜结束后手持盘子平移、抬高、转动展示可为1，不要求画面静止。背景锅中静放的器具不妨碍成品展示。
锅内熟菜、勺中食物和正在倒菜均为0。不凭视频时长或盘里已满推断。只输出0或1。"""


def event_image_url(data: bytes) -> str:
    """Decode a frozen complete image; Max already exports an aspect-correct thumbnail."""
    if data.startswith(b"\xff\xd8") and not data.rstrip().endswith(b"\xff\xd9"):
        raise ValueError("Incomplete event JPEG")
    with Image.open(io.BytesIO(data)) as image:
        image.load()
        image = ImageOps.exif_transpose(image).convert("RGB")
        image.thumbnail((512, 512), Image.Resampling.LANCZOS)
        stream = io.BytesIO()
        image.save(stream, format="JPEG", quality=85)
    return "data:image/jpeg;base64," + base64.b64encode(stream.getvalue()).decode("ascii")


@dataclass(frozen=True)
class EventTask:
    path: Path
    signature: tuple[int, int]
    generation: int
    playback_seconds: float
    image_data_url: str
    captured_at: float


class CaptureMarker:
    """An independent frame marker, so a fast capture cannot relabel a main capture."""
    def __init__(self, playback_state):
        self.state = playback_state
        self._frame = None

    def mark(self):
        with self.state._lock:
            self._frame = (self.state.generation, self.state.current_seconds(), time.monotonic())

    def snapshot(self):
        with self.state._lock:
            return self._frame


class TokenLedger:
    """Share the existing usage total across the two result threads."""
    def __init__(self, total, save):
        self.total = total
        self.save = save
        self.lock = threading.Lock()

    def record(self, count):
        with self.lock:
            self.total += max(0, int(count))
            self.save(self.total)
            return self.total


class EventAnalyzer:
    def __init__(self, api_key, base_url, model=EVENT_MODEL, token_ledger=None):
        self.api_key, self.base_url, self.model = api_key, base_url.rstrip("/"), model
        self.ledger = token_ledger
        self.session = requests.Session()

    def analyze(self, task):
        remaining = min(EVENT_MAX_AGE, EVENT_MAX_AGE - (time.monotonic() - task.captured_at))
        if remaining <= 0:
            raise TimeoutError("Event frame expired before request")
        response = self.session.post(self.base_url + "/chat/completions",
            headers={"Authorization": "Bearer " + self.api_key, "Content-Type": "application/json"},
            json={"model": self.model, "messages": [
                {"role": "system", "content": EVENT_SYSTEM},
                {"role": "user", "content": [
                    {"type": "image_url", "image_url": {"url": task.image_data_url}},
                    {"type": "text", "text": EVENT_PROMPT}]}],
                "enable_thinking": False, "temperature": 0.0, "max_tokens": 8},
            timeout=Timeout(total=remaining, connect=remaining, read=remaining))
        response.raise_for_status()
        envelope = response.json()
        if self.ledger is not None:
            self.ledger.record(envelope.get("usage", {}).get("total_tokens", 0))
        content = envelope.get("choices", [{}])[0].get("message", {}).get("content")
        if not isinstance(content, str) or content.strip() not in {"0", "1"}:
            raise ValueError("Invalid event code")
        return int(content.strip())


class FastEventChannel:
    def __init__(self, playback_state, stop_event, analyze, client, trace=None,
                 interval=EVENT_INTERVAL, max_age=EVENT_MAX_AGE, output=print,
                 *, final_tracker_factory):
        self.state, self.stop, self.client, self.trace = playback_state, stop_event, client, trace
        self.max_age, self.output = max_age, output
        self.incoming, self.completed = queue.Queue(maxsize=1), queue.Queue()
        self.pipeline = AnalysisPipeline(self.incoming, self.completed, stop_event, analyze,
                                         interval_seconds=interval, max_parallel=2, is_current=self.is_current)
        self.worker = threading.Thread(target=self._commit_loop, name="fast-event-results", daemon=True)
        self.final_tracker_factory = final_tracker_factory
        self.tracker = final_tracker_factory()
        self.playback_round = playback_state.playback_round
        self.generation = None
        self.last_sequence = 0
        self.last_evidence_at = float("-inf")
        self.pending_report = set()
        self.last_submitted = None
        self.last_dedicated_capture = None
        self.submit_lock = threading.Lock()

    def is_current(self, task):
        with self.state._lock:
            return (not self.stop.is_set() and self.state.running is not False
                    and self.state.current_seconds() is not None
                    and task.generation == self.state.generation
                    and 0 <= time.monotonic() - task.captured_at <= self.max_age)

    def submit(self, task, *, dedicated=True):
        if not self.is_current(task):
            return False
        with self.submit_lock:
            identity = (task.generation, task.playback_seconds)
            if self.last_submitted is not None and identity[0] == self.last_submitted[0] and identity[1] <= self.last_submitted[1]:
                return False  # paused/end-of-video thumbnails are not new actions
            self.last_submitted = identity
            if dedicated:
                self.last_dedicated_capture = (task.generation, task.captured_at)
            try:
                old = self.incoming.get_nowait()
            except queue.Empty:
                pass
            else:
                self.incoming.task_done()
                self._trace("event_capture_replaced", old)
            self.incoming.put_nowait(task)
            self._trace("event_capture_queued", task)
            return True

    def dedicated_capture_active(self):
        with self.submit_lock:
            marker = self.last_dedicated_capture
        return (marker is not None and marker[0] == self.state.generation
                and 0 <= time.monotonic() - marker[1] <= self.max_age)

    def start(self):
        self.worker.start()
        self.pipeline.start()

    def join(self, timeout=3):
        deadline = time.monotonic() + timeout
        self.pipeline.join(timeout)
        self.worker.join(max(0, deadline - time.monotonic()))

    def _trace(self, event, task, **fields):
        if self.trace is not None:
            self.trace.task(event, task, **fields)

    def report_events(self):
        with self.state._lock:
            if self.generation != self.state.generation or self.state.running is False:
                self.pending_report.clear()
                return ()
            result = tuple(e for e in EVENT_CODES[1] if e in self.pending_report)
            self.pending_report.clear()
            return result

    def _prepare_generation(self, generation):
        if self.generation != generation:
            self.generation = generation
            self.last_sequence = 0
            self.last_evidence_at = float("-inf")
            if self.playback_round != self.state.playback_round:
                self.tracker = self.final_tracker_factory()
                self.playback_round = self.state.playback_round
            else:
                self.tracker.reset_observations()
            self.pending_report.clear()

    def main_events(self, task, result, confirmation_frame=None):
        """Both analyzers share the same stillness check and one-per-round latch."""
        with self.state._lock:
            if not self.is_current(task):
                return ()
            self._prepare_generation(task.generation)
            if task.captured_at < self.last_evidence_at:
                return ()
            self.last_evidence_at = task.captured_at
            return self.tracker.update(result, task.playback_seconds, self.state.mapping,
                                       task.image_data_url, confirmation_frame)

    def commit(self, completion):
        # Check freshness before resolving even a failed/out-of-order response.
        with self.state._lock:
            if not self.is_current(completion):
                self._trace("event_result_discarded", completion, reason="generation_stop_or_age")
                return ()
            self._prepare_generation(completion.generation)
            if completion.sequence <= self.last_sequence:
                self._trace("event_result_discarded", completion, reason="out_of_order")
                return ()
            self.last_sequence = completion.sequence
            code = completion.resolve()
            if type(code) is not int or code not in EVENT_CODES:
                raise ValueError("Invalid event code")
            if (completion.captured_at < self.last_evidence_at
                    or (completion.captured_at == self.last_evidence_at and not EVENT_CODES[code])):
                self._trace("event_result_discarded", completion, reason="newer_event_evidence")
                return ()
            self.last_evidence_at = completion.captured_at
            self._trace("event_analysis_returned", completion, code=code,
                        api_seconds=completion.completed_at - completion.started_at,
                        capture_age_seconds=time.monotonic() - completion.captured_at)
            result = ({"食材状态": "visible",
                       "成品判断": {"状态": "finished", "置信度": 1.0},
                       "过程": {"动作": "idle"}}
                      if code == 1 else {})
            events = self.tracker.update(result, completion.playback_seconds, self.state.mapping,
                                         completion.image_data_url)
            if code == 1:
                self._trace("event_completion_check", completion,
                            check=getattr(self.tracker, "last_check", None))
            for event in events:
                self.client.send_message("/event", event)
            if events:
                self.state.mark_ending()
            self.pending_report.update(events)
            if events:
                self._trace("event_triggered", completion, events=list(events),
                            capture_age_seconds=time.monotonic() - completion.captured_at)
                labels = "、".join(EVENT_LABELS[event] for event in events)
                self.output(f"5.结束事件：已触发（{labels}）", flush=True)
            return events

    def _commit_loop(self):
        while not self.stop.is_set():
            try:
                completion = self.completed.get(timeout=.1)
            except queue.Empty:
                continue
            try:
                self.commit(completion)
            except Exception as error:
                # No console flood or raw API/connection details; keep diagnostic evidence.
                self._trace("event_analysis_failed", completion, error_type=type(error).__name__)
            finally:
                self.completed.task_done()
