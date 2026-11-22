"""Timeline guidance and multi-frame stabilization for cooking recognition.

The timeline is only a weak prior. A stable subject is never created from the
timeline alone, and repeated real-time observations can always override it.
"""

from __future__ import annotations

import json
import math
import re
import threading
import time
from collections import deque
from dataclasses import dataclass
from pathlib import Path
from typing import Any


UNKNOWN_LABELS = {"", "未知", "unknown", "不确定", "无法确定", "无"}

INGREDIENT_ZH = {
    "pork": "猪肉",
    "pork tenderloin": "猪肉",
    "shredded pork": "猪肉",
    "sliced pork": "猪肉",
    "猪肉": "猪肉",
    "肉": "猪肉",
    "肉片": "猪肉",
    "猪肉片": "猪肉",
    "瘦肉": "猪肉",
    "里脊肉": "猪肉",
    "五花肉": "猪肉",
    "green pepper": "青椒",
    "green_pepper": "青椒",
    "green bell pepper": "青椒",
    "green_bell_pepper": "青椒",
    "bell pepper": "青椒",
    "青椒": "青椒",
    "青辣椒": "青椒",
    "garlic": "大蒜",
    "蒜": "大蒜",
    "蒜头": "大蒜",
    "蒜瓣": "大蒜",
    "egg": "鸡蛋",
    "eggs": "鸡蛋",
    "鸡蛋": "鸡蛋",
    "蛋": "鸡蛋",
    "蛋液": "鸡蛋",
    "煎蛋": "鸡蛋",
    "炒蛋": "鸡蛋",
    "small_chili": "小米辣",
    "small chili": "小米辣",
    "bird's eye chili": "小米辣",
    "bird_eye_chili": "小米辣",
    "小米辣": "小米辣",
    "小米椒": "小米辣",
    "unknown": "未知",
}

ALLOWED_INGREDIENTS = (
    "猪肉",
    "青椒",
    "大蒜",
    "鸡蛋",
    "小米辣",
)

INGREDIENT_EN = {
    "猪肉": "pork",
    "青椒": "green_pepper",
    "大蒜": "garlic",
    "鸡蛋": "egg",
    "小米辣": "small_chili",
}

ALLOWED_INGREDIENT_TOKENS = tuple(INGREDIENT_EN[item] for item in ALLOWED_INGREDIENTS)


def canonical_subject(value: Any) -> str:
    text = re.sub(r"\s+", " ", str(value or "")).strip()
    if text.lower() in UNKNOWN_LABELS or text in UNKNOWN_LABELS:
        return "未知"
    return INGREDIENT_ZH.get(text.lower(), text)[:40]


def canonical_subject_group(value: Any, limit: int | None = None) -> str:
    """Normalize one or more visible ingredients into one stable display string."""
    values = value if isinstance(value, list) else [value]
    subjects: list[str] = []
    for item in values:
        mapped = canonical_subject(item)
        parts = re.split(r"\s*(?:、|，|,|和|及|与|\band\b)\s*", mapped, flags=re.IGNORECASE)
        for part in parts:
            subject = canonical_subject(part)
            if subject != "未知" and subject not in subjects:
                subjects.append(subject)
    if not subjects:
        return "未知"
    # Fixed-menu ingredients always follow the musical branch order used by
    # Max: pork, green pepper, garlic, egg, small chili.  Any non-menu
    # label stays deterministic and is placed after those five.
    menu_order = {ingredient: index for index, ingredient in enumerate(ALLOWED_INGREDIENTS)}
    ordered = sorted(
        subjects,
        key=lambda ingredient: (
            menu_order.get(ingredient, len(menu_order)),
            ingredient,
        ),
    )
    if limit is not None:
        ordered = ordered[: max(1, limit)]
    return "、".join(ordered)


def allowed_subject_group(value: Any, limit: int | None = None) -> str:
    """Return only ingredients in the fixed menu whitelist."""
    normalized = canonical_subject_group(value)
    allowed = [
        ingredient
        for ingredient in ([] if normalized == "未知" else normalized.split("、"))
        if ingredient in ALLOWED_INGREDIENTS
    ]
    return canonical_subject_group(allowed, limit=limit)


def subject_group_to_english(value: Any) -> str:
    """Convert an internal Chinese ingredient group to OSC-safe English labels."""
    normalized = allowed_subject_group(value)
    if normalized == "未知":
        return "unknown"
    return ",".join(INGREDIENT_EN[item] for item in normalized.split("、"))


def subject_to_english(value: Any) -> str:
    """Convert one allowed ingredient to its OSC-safe English token."""
    normalized = allowed_subject_group([value], limit=1)
    if normalized == "未知":
        return "unknown"
    return INGREDIENT_EN[normalized]


def clamp_confidence(value: Any) -> float:
    try:
        return max(0.0, min(1.0, float(value)))
    except (TypeError, ValueError):
        return 0.0


def normalize_whole_count(value: Any) -> int | None:
    """Accept only positive whole-item counts; never turn slices into items."""
    try:
        numeric = float(value)
    except (TypeError, ValueError):
        return None
    if not math.isfinite(numeric) or numeric <= 0 or numeric > 999:
        return None
    nearest = round(numeric)
    if abs(numeric - nearest) > 1e-6:
        return None
    return int(nearest)


@dataclass(frozen=True)
class IngredientCountObservation:
    ingredient: str
    whole_count: int | None
    confidence: float
    basis: str


def normalize_count_observations(value: Any) -> tuple[IngredientCountObservation, ...]:
    """Normalize an unlimited API ingredient array into unique menu items."""
    if not isinstance(value, list):
        return ()
    selected: dict[str, IngredientCountObservation] = {}
    for item in value:
        if isinstance(item, str):
            raw_name = item
            count_value = None
            count_confidence = 0.0
            basis = "uncertain"
        elif isinstance(item, dict):
            raw_name = item.get("名称", item.get("name", item.get("ingredient")))
            count_value = item.get("完整个数", item.get("whole_count"))
            count_confidence = item.get(
                "数量置信度",
                item.get("count_confidence", item.get("confidence", 0.0)),
            )
            basis = str(item.get("计数依据", item.get("count_basis", "uncertain")))
        else:
            continue
        ingredient = allowed_subject_group([raw_name], limit=1)
        if ingredient == "未知":
            continue
        normalized_basis = re.sub(r"\s+", " ", basis).strip().lower()
        if normalized_basis not in {
            "whole_visible",
            "reconstructed_whole",
            "video_tracking",
            "uncertain",
        }:
            normalized_basis = "uncertain"
        observation = IngredientCountObservation(
            ingredient=ingredient,
            whole_count=normalize_whole_count(count_value),
            confidence=clamp_confidence(count_confidence),
            basis=normalized_basis,
        )
        previous = selected.get(ingredient)
        if previous is None or (
            observation.whole_count is not None,
            observation.confidence,
        ) > (
            previous.whole_count is not None,
            previous.confidence,
        ):
            selected[ingredient] = observation
    return tuple(selected[item] for item in ALLOWED_INGREDIENTS if item in selected)


@dataclass(frozen=True)
class TimelineHint:
    subject: str
    confidence: float
    start: float
    end: float
    evidence: str
    whole_counts: tuple[tuple[str, int], ...] = ()


class TimelineGuide:
    def __init__(self, path: Path | None) -> None:
        self.path = path
        self.duration_seconds = 0.0
        self.events: list[dict[str, Any]] = []
        if path is not None and path.is_file():
            payload = json.loads(path.read_text(encoding="utf-8"))
            self.duration_seconds = max(0.0, float(payload.get("source_duration_seconds", 0.0)))
            self.events = [event for event in payload.get("events", []) if isinstance(event, dict)]

    @property
    def available(self) -> bool:
        return bool(self.events)

    def lookup(self, seconds: float | None) -> TimelineHint | None:
        if seconds is None:
            return None
        candidates: list[TimelineHint] = []
        for event in self.events:
            try:
                start = float(event.get("start", 0.0))
                end = float(event.get("end", start))
            except (TypeError, ValueError):
                continue
            if not start <= seconds <= end:
                continue
            count_observations = normalize_count_observations(
                event.get("visible_ingredients", event.get("食材列表"))
            )
            count_subjects = [item.ingredient for item in count_observations]
            subject = canonical_subject_group(count_subjects or event.get("ingredient"))
            if subject == "未知":
                continue
            evidence = str(event.get("ingredient_source") or "timeline")
            if event.get("label_text"):
                evidence = f"{evidence}:{event['label_text']}"
            candidates.append(
                TimelineHint(
                    subject=subject,
                    confidence=clamp_confidence(event.get("confidence")),
                    start=start,
                    end=end,
                    evidence=evidence[:120],
                    whole_counts=tuple(
                        (item.ingredient, item.whole_count)
                        for item in count_observations
                        if item.whole_count is not None and item.confidence >= 0.5
                        and item.basis in {"whole_visible", "reconstructed_whole", "video_tracking"}
                    ),
                )
            )
        if not candidates:
            return None
        return max(candidates, key=lambda item: item.confidence)


@dataclass(frozen=True)
class PlaybackMapping:
    offset_seconds: float
    duration_seconds: float
    source_name: str


def infer_playback_mapping(
    project_root: Path,
    timeline_duration: float,
    max_patch_path: Path | None = None,
) -> PlaybackMapping:
    fallback = PlaybackMapping(0.0, timeline_duration, "完整视频")
    patch_path = max_patch_path or project_root / "Qwen_AI_OSC_Receiver.maxpat"
    try:
        patch = json.loads(patch_path.read_text(encoding="utf-8"))
        boxes = patch.get("patcher", {}).get("boxes", [])
        playlist = next(
            item.get("box", {})
            for item in boxes
            if item.get("box", {}).get("maxclass") == "jit.playlist"
        )
        clips = playlist.get("data", {}).get("clips", [])
        playlist_clip = clips[0]
    except (FileNotFoundError, OSError, ValueError, StopIteration, IndexError, TypeError):
        return fallback

    return playback_mapping_for_clip(project_root, timeline_duration, playlist_clip)


def playback_mapping_for_clip(
    project_root: Path, timeline_duration: float, playlist_clip: dict[str, Any],
) -> PlaybackMapping:
    """Map selection-relative progress using the current playlist clip."""
    filename = str(playlist_clip.get("filename") or playlist_clip.get("absolutepath") or "")
    selection_start = 0.0
    selection_end = 1.0
    try:
        selection = playlist_clip.get("selection", ())
        start = float(selection[0])
        end = float(selection[1])
        if math.isfinite(start) and math.isfinite(end) and 0.0 <= start < end <= 1.0:
            selection_start = start
            selection_end = end
    except (IndexError, TypeError, ValueError):
        pass

    chunk_match = re.search(r"chunk_(\d+)_([0-9]+)s", Path(filename).name, re.IGNORECASE)
    if not chunk_match:
        return PlaybackMapping(
            timeline_duration * selection_start,
            max(0.1, timeline_duration * (selection_end - selection_start)),
            Path(filename).name or "完整视频",
        )

    chunk_id = int(chunk_match.group(1))
    offset = float(chunk_match.group(2))
    duration = 60.0
    manifest_path = project_root / "video_chunks" / "manifest.json"
    try:
        manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
        chunk = next(item for item in manifest.get("chunks", []) if int(item.get("id", -1)) == chunk_id)
        offset = float(chunk.get("start", offset))
        duration = float(chunk.get("duration", duration))
    except (FileNotFoundError, OSError, ValueError, StopIteration, TypeError):
        pass
    return PlaybackMapping(
        offset + duration * selection_start,
        max(0.1, duration * (selection_end - selection_start)),
        Path(filename).name,
    )


class PlaybackState:
    def __init__(self, mapping: PlaybackMapping, *, mapping_ready: bool = True) -> None:
        self.mapping = mapping
        self.mapping_ready = mapping_ready
        self.mapping_revision = 0
        self._lock = threading.RLock()
        self._seconds: float | None = None
        self._progress: float | None = None
        self._updated_at = 0.0
        self.generation = 0
        self.playback_round = 0
        self.running: bool | None = None
        self._frame: tuple[int, float | None, float] | None = None
        self._batch_hint: tuple[int, str] | None = None
        self._ending_generation: int | None = None

    def set_batch_hint(self, generation: int, subject: Any) -> None:
        with self._lock:
            if generation == self.generation:
                self._batch_hint = (generation, allowed_subject_group(subject))

    def batch_hint(self, generation: int) -> str:
        with self._lock:
            if (self.running is False or generation != self.generation
                    or self._batch_hint is None or self._batch_hint[0] != generation):
                return "未知"
            return self._batch_hint[1]

    def mark_ending(self) -> None:
        with self._lock:
            self._ending_generation = self.generation

    @property
    def ending(self) -> bool:
        with self._lock:
            return self._ending_generation == self.generation

    def set_running(self, value: Any) -> None:
        with self._lock:
            running = bool(int(value))
            if running != self.running:
                self.generation += 1
                if running:
                    self.playback_round += 1
                self._seconds = None
                self._progress = None
                self._frame = None
            self.running = running

    def restart(self) -> None:
        """A playlist start begins a new round even when already running."""
        with self._lock:
            self.playback_round += 1
            self.generation += 1
            self._seconds = None
            self._progress = None
            self._frame = None
            self.running = True

    def snapshot(self) -> tuple[int, float | None]:
        with self._lock:
            return self.generation, self.current_seconds()

    def mark_frame(self) -> None:
        with self._lock:
            self._frame = (self.generation, self.current_seconds(), time.monotonic())

    def update_mapping(self, mapping: PlaybackMapping) -> bool:
        """Rebase the clock and invalidate frames captured with the old range."""
        if (not math.isfinite(mapping.offset_seconds) or mapping.offset_seconds < 0
                or not math.isfinite(mapping.duration_seconds) or mapping.duration_seconds <= 0):
            return False
        with self._lock:
            if self.mapping_ready and self.mapping == mapping:
                return False
            self.mapping = mapping
            self.mapping_ready = True
            self.mapping_revision += 1
            self.generation += 1
            self._frame = None
            self._seconds = (None if self._progress is None else
                             mapping.offset_seconds + self._progress * mapping.duration_seconds)
            return True

    def frame_snapshot(self) -> tuple[int, float | None, float]:
        with self._lock:
            return self._frame or (self.generation, self.current_seconds(), time.monotonic())

    def update_progress(self, progress: Any) -> None:
        try:
            normalized = float(progress)
            if not math.isfinite(normalized):
                return
            normalized = max(0.0, min(1.0, normalized))
        except (TypeError, ValueError):
            return
        with self._lock:
            if self.running is False:
                return
            self._progress = normalized
            now = time.monotonic()
            if not self.mapping_ready:
                self._updated_at = now
                return
            seconds = self.mapping.offset_seconds + normalized * self.mapping.duration_seconds
            if self._seconds is not None:
                delta = seconds - self._seconds
                if delta < -0.25 or delta > (now - self._updated_at) * 2 + 1.0:
                    self.generation += 1
            self._seconds = seconds
            self._updated_at = now

    def current_seconds(self, max_age_seconds: float = 15.0) -> float | None:
        with self._lock:
            if self._seconds is None or time.monotonic() - self._updated_at > max_age_seconds:
                return None
            return self._seconds


@dataclass(frozen=True)
class StableDecision:
    stable_subject: str
    raw_subject: str
    timeline_subject: str
    changed: bool
    reason: str


@dataclass(frozen=True)
class WholeCountDecision:
    stable_counts: tuple[tuple[str, int], ...]
    cleared_ingredients: tuple[str, ...]
    changed: bool
    reason: str


class WholeCountStabilizer:
    """Track whole-item counts without ever treating a slice count as an item count."""

    def __init__(self, confidence_floor: float = 0.6) -> None:
        self.confidence_floor = confidence_floor
        self._stable: dict[str, int] = {}

    def update(
        self,
        observations: tuple[IngredientCountObservation, ...],
        visible_subject: Any,
        subject_confidence: Any,
        timeline_hint: TimelineHint | None,
        visibility_status: str = "visible",
    ) -> WholeCountDecision:
        status = str(visibility_status or "uncertain").strip().lower()
        if status == "none":
            cleared = tuple(self._stable)
            changed = bool(self._stable)
            self._stable.clear()
            return WholeCountDecision(
                stable_counts=(),
                cleared_ingredients=cleared,
                changed=changed,
                reason="当前画面明确没有菜单食材，完整个数清零",
            )
        visible = allowed_subject_group(visible_subject)
        visible_items = set([] if visible == "未知" else visible.split("、"))
        score = clamp_confidence(subject_confidence)
        if status == "uncertain" or not visible_items or score < 0.35:
            return WholeCountDecision(
                stable_counts=self._ordered_counts(),
                cleared_ingredients=(),
                changed=False,
                reason="实时食材不明确，完整个数保持不变",
            )

        previous = dict(self._stable)
        cleared = tuple(item for item in previous if item not in visible_items)
        for ingredient in cleared:
            self._stable.pop(ingredient, None)

        observed = {item.ingredient: item for item in observations}
        timeline_counts = dict(timeline_hint.whole_counts) if timeline_hint else {}
        timeline_subjects = set(
            []
            if timeline_hint is None or timeline_hint.subject == "未知"
            else timeline_hint.subject.split("、")
        )
        reasons: list[str] = []
        for ingredient in visible_items:
            item = observed.get(ingredient)
            if (
                item is not None
                and item.whole_count is not None
                and item.confidence >= self.confidence_floor
                and item.basis in {"whole_visible", "reconstructed_whole", "video_tracking"}
            ):
                self._stable[ingredient] = item.whole_count
                reasons.append(f"{ingredient}按当前画面={item.whole_count}")
                continue
            if ingredient in self._stable:
                reasons.append(f"{ingredient}计数不明确，保持{self._stable[ingredient]}")
                continue
            if (
                ingredient in timeline_counts
                and ingredient in timeline_subjects
                and score >= 0.58
                and timeline_hint is not None
                and timeline_hint.confidence >= 0.7
            ):
                self._stable[ingredient] = timeline_counts[ingredient]
                reasons.append(f"{ingredient}由当前可见画面确认，时间线辅助={timeline_counts[ingredient]}")
            else:
                reasons.append(f"{ingredient}没有可靠完整个数，不猜测")

        return WholeCountDecision(
            stable_counts=self._ordered_counts(),
            cleared_ingredients=cleared,
            changed=self._stable != previous,
            reason="；".join(reasons) or "完整个数未变化",
        )

    def _ordered_counts(self) -> tuple[tuple[str, int], ...]:
        return tuple((item, self._stable[item]) for item in ALLOWED_INGREDIENTS if item in self._stable)


class SubjectStabilizer:
    """Keep round history separate from the ingredients in the current work batch.

    Only current-batch membership drives instruments. Missing ingredients stay
    in a batch during occlusion, but history never repopulates a different batch.
    The same evidence and confidence rules apply to every ingredient.
    """

    CONFIDENCE_FLOOR = 0.58
    PREPARATION_ACTIONS = {"wash", "chop", "marinate"}

    def __init__(self, history_size: int = 5) -> None:
        self.history: deque[tuple[str, float]] = deque(maxlen=max(3, history_size))
        self.stable_subject = "未知"
        self._remembered_ingredients: set[str] = set()
        self._cooking_ingredients: set[str] = set()
        self._cooking_started = False
        self._batch_ingredients: set[str] = set()
        self._batch_anchor: set[str] = set()
        self._batch_closed = False
        self.context = "unknown"
        self.batch_id = 0

    @property
    def remembered_subject(self) -> str:
        return canonical_subject_group(list(self._remembered_ingredients))

    @property
    def has_cooking_presence(self) -> bool:
        return bool(self._cooking_ingredients)

    @property
    def confirmed_batch_subject(self) -> str:
        """A short lookup hint, never a list of supposedly visible ingredients."""
        if self.context != "cooking" or self._batch_closed:
            return "未知"
        return canonical_subject_group(list(self._batch_ingredients))

    def reset_observations(self) -> None:
        """A seek invalidates current membership; round history is still valid."""
        self.history.clear()
        self.stable_subject = "未知"
        self._batch_ingredients.clear()
        self._batch_anchor.clear()
        self._batch_closed = False
        self.context = "unknown"

    @staticmethod
    def _items(subject: str) -> list[str]:
        return [] if subject == "未知" else subject.split("、")

    @staticmethod
    def _is_cooking(process_action: Any, cooking_visible: bool | None = None) -> bool:
        action = str(process_action or "idle").strip().lower()
        return (action in {"stir_fry", "stir-fry", "stirring", "frying", "炒菜", "翻炒"}
                or cooking_visible is True)

    def remember_cooking_frame(
        self, raw_subject: Any, confidence: Any, process_action: Any,
        *, cooking_visible: bool | None = None,
    ) -> tuple[str, ...]:
        """An old frame can enrich history, never the current instrument gates."""
        if clamp_confidence(confidence) < self.CONFIDENCE_FLOOR:
            return ()
        candidates = set(self._items(allowed_subject_group(raw_subject)))
        self._remembered_ingredients.update(candidates)
        if not (self._cooking_started or self._is_cooking(process_action, cooking_visible)):
            return ()
        added = tuple(item for item in ALLOWED_INGREDIENTS
                      if item in candidates and item not in self._cooking_ingredients)
        self._cooking_ingredients.update(candidates)
        return added

    def update(
        self,
        raw_subject: Any,
        confidence: Any,
        timeline_hint: TimelineHint | None,
        process_action: Any = "idle",
        *,
        targets: Any = (),
        process_confidence: Any = None,
        cooking_visible: bool | None = None,
        dish_status: str = "uncertain",
        visibility_status: str = "visible",
        focused_subject: Any = None,
        addition_visible: bool | None = None,
        empty_vessel_visible: bool | None = None,
        overall_stage: str | None = None,
        serving_role: str = "unknown",
    ) -> StableDecision:
        raw = allowed_subject_group(raw_subject)
        score = clamp_confidence(confidence)
        action = str(process_action or "idle").strip().lower()
        timeline_subject = timeline_hint.subject if timeline_hint is not None else "未知"
        previous = self.stable_subject

        def decision(reason: str) -> StableDecision:
            return StableDecision(self.stable_subject, raw, timeline_subject,
                                  self.stable_subject != previous, reason)

        # Identity memory only uses actual visual detections, never the timeline.
        if score >= self.CONFIDENCE_FLOOR:
            self._remembered_ingredients.update(self._items(raw))
        # Empty-pan evidence only closes a cooking batch, not food on a board,
        # in a marinating bowl, or already served onto the finished dish.
        # Check its own process confidence before the food-confidence hold:
        # an actually empty pan has no ingredient identity to score.
        final_serving = (serving_role == "final" or overall_stage == "plating")
        serving = action in {"transfer", "plate"} or dish_status in {"plating", "finished"} or final_serving
        can_close_pan = (self.context in {"cooking", "transfer"} or overall_stage == "cooking")
        empty_confidence = score if process_confidence is None else clamp_confidence(process_confidence)
        if (can_close_pan and overall_stage not in {"preparation", "marinating", "plating"}
                and action not in self.PREPARATION_ACTIONS and not serving
                and cooking_visible is not True
                and empty_vessel_visible is True and addition_visible is not True
                and empty_confidence >= .70):
            self._batch_ingredients.clear()
            self._batch_anchor.clear()
            self._batch_closed = True
            self._cooking_started = True
            self.stable_subject = "未知"
            self.context = "cooking"
            return decision("明确空锅，关闭当前批次；整轮食材记忆保留")
        evidence_score = score
        if process_confidence is not None and action not in {"idle", "unknown"}:
            evidence_score = min(evidence_score, clamp_confidence(process_confidence))
        if visibility_status == "uncertain" or evidence_score < self.CONFIDENCE_FLOOR:
            return decision("当前视觉证据不明确，保持当前批次")

        in_pan = self._is_cooking(action, cooking_visible) or addition_visible is True
        if (self._batch_closed and not in_pan and not serving
                and action not in self.PREPARATION_ACTIONS):
            return decision("上一批已结束，等待明确的下一批入锅；不因展示或遮挡重新开启")
        focus = set(self._items(allowed_subject_group(
            raw if focused_subject is None else focused_subject))) & set(self._items(raw))
        # During preparation every visible menu ingredient counts, including
        # food waiting beside the board or bowl. Spatial filtering only selects
        # cooking/serving batch membership, not the full-frame food detection.
        if (action in self.PREPARATION_ACTIONS or
                 (not in_pan and action not in {"transfer", "plate"}
                  and dish_status != "finished"
                 and (not self._batch_ingredients or self._batch_closed))):
            focus = set(self._items(raw))
        self.history.append((raw, score))
        if in_pan:
            self._cooking_started = True
            if self.context == "unknown":
                self.context = "cooking"

        if not focus:
            if ((visibility_status == "none" and
                 (action in self.PREPARATION_ACTIONS or not self._batch_ingredients))
                    or (focused_subject is not None and not in_pan
                        and not self._batch_ingredients)):
                self.stable_subject = "未知"
                self._batch_ingredients.clear()
                self._batch_anchor.clear()
                self._batch_closed = False
                self.context = "unknown"
                return decision("当前工作区域没有食材")
            return decision("没有可靠的当前食材，保持当前批次，等待明确换批证据")

        if action in self.PREPARATION_ACTIONS:
            self._batch_ingredients.clear()
            self._batch_anchor.clear()
            self._batch_closed = False
            self.context = "preparation"
            selected = focus
            reason = "当前备料区域已切换，历史食材不参与当前开启名单"
        elif action == "transfer" and not final_serving:
            selected = self._batch_ingredients | focus
            self._batch_ingredients = set(selected)
            self._batch_closed = True
            self.context = "transfer"
            reason = "当前批次正在盛出备用，下次入锅建立新批次"
        elif action == "plate" or dish_status == "finished" or final_serving:
            selected = self._batch_ingredients | focus
            self._batch_ingredients = set(selected)
            self._batch_closed = True
            self.context = "serving"
            reason = "当前批次装盘或展示，保留同一批内已确认的食材"
        elif in_pan:
            direct_targets = set(self._items(allowed_subject_group(targets))) & focus
            anchor_observation = direct_targets or (focus if action not in {"idle", "unknown"} else set())
            # New ingredient names alone cannot prove that the old food left.
            # A serving/empty-pan boundary or return to preparation separates
            # batches. Otherwise additions and occluded members share this pan.
            new_batch = (self.context == "preparation" or self._batch_closed
                         or not self._batch_ingredients)
            if new_batch:
                self._batch_ingredients = set(focus)
                self._batch_anchor.clear()
                self.batch_id += 1
            else:
                self._batch_ingredients.update(focus)
            self._batch_anchor.update(anchor_observation)
            self._cooking_ingredients.update(focus)
            self._batch_closed = False
            self.context = "cooking"
            selected = self._batch_ingredients
            reason = "明确建立新的锅内批次" if new_batch else "同一锅内批次，确认食材并保留遮挡成员"
        elif (self._batch_ingredients or self.context == "cooking") and not self._batch_closed:
            # A brief ingredient/bowl insert during cooking can confirm a small
            # ingredient, without restoring members of any earlier batch.
            self._batch_ingredients.update(focus)
            self._cooking_ingredients.update(focus)
            selected = self._batch_ingredients
            reason = "当前批次的食材近景，保留这一批已确认的食材"
        else:
            selected = focus
            self.context = "unknown"
            reason = "按当前工作区域确认食材，历史记忆不直接控制乐器"

        self.stable_subject = canonical_subject_group(list(selected))
        return decision(reason)
