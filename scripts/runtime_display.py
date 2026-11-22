"""Chinese report of the current action and the food-specific Max controls."""

from __future__ import annotations

import math
import threading
from contextlib import nullcontext
from typing import Mapping, Sequence


ACTION_LABELS = {
    "wash": "清洗", "chop": "切菜", "marinate": "腌制",
    "stir_fry": "翻炒", "plate": "装盘", "transfer": "盛出备用", "idle": "暂无动作",
    "unknown": "动作未确定",
}
EVENT_LABELS = {
    "final_reveal_pulse": "结束",
}
FOOD_LABELS = {
    "pork": "猪肉", "green_pepper": "青椒", "garlic": "大蒜",
    "egg": "鸡蛋", "small_chili": "小米辣",
}


class SpecialProgressReport:
    """Remember the values actually sent to the dedicated Max progress routes."""

    def __init__(self, solo_ingredients: Sequence[str] = ()) -> None:
        self._lock = threading.Lock()
        self._solo = {name: 0.0 for name in solo_ingredients if name in FOOD_LABELS}
        self._marinate: float | None = None

    def reset(self) -> None:
        with self._lock:
            self._solo = dict.fromkeys(self._solo, 0.0)
            self._marinate = None

    def record(self, address: str, values: Sequence) -> None:
        with self._lock:
            if address == "/ingredient" and len(values) >= 4:
                if values[0] == "pork" and values[2] == "marinating":
                    self._marinate = max(0.0, min(1.0, float(values[3])))
                if len(values) >= 6 and values[0] in self._solo:
                    self._solo[values[0]] = max(0.0, min(1.0, float(values[5])))
            elif address == "/progress/solo_fry" and len(values) >= 2:
                if values[0] in self._solo:
                    self._solo[values[0]] = max(0.0, min(1.0, float(values[1])))

    def snapshot(self, subject: str) -> tuple[tuple[str, float], ...]:
        visible = set(subject.split("、"))
        with self._lock:
            values = []
            for name, label in FOOD_LABELS.items():
                if label not in visible:
                    continue
                if name == "pork" and self._marinate is not None:
                    values.append(("猪肉腌制", self._marinate))
                if name in self._solo:
                    values.append((f"{label}单独煸炒", self._solo[name]))
            return tuple(values)

    def report_values(self) -> tuple[float | None, dict[str, float]]:
        """Read the three requested controls, including foods outside this frame."""
        with self._lock:
            return self._marinate, {
                name: self._solo[name]
                for name in ("green_pepper", "egg") if name in self._solo
            }


class ReportingOSCClient:
    def __init__(self, client, progress_report: SpecialProgressReport,
                 solo_fry_timeline=None, playback_state=None) -> None:
        self.client = client
        self.progress_report = progress_report
        self.solo_fry_timeline = solo_fry_timeline
        self.playback_state = playback_state

    def send_message(self, address, value) -> None:
        lock = self.playback_state._lock if self.playback_state is not None else nullcontext()
        with lock:
            # The final-event path owns the ending. Keep console observations
            # and dedicated progress routes, but no later ordinary voice gates
            # or stage packets may undo the existing Max ending sequence.
            if (self.playback_state is not None and self.playback_state.ending
                    and (address == "/ingredient" or address.startswith("/ingredient/")
                         or address in {"/process", "/stage"})):
                return
            self._send_message(address, value)
            if (self.playback_state is not None and address == "/event"
                    and value == "final_reveal_pulse"):
                self.playback_state.mark_ending()

    def _send_message(self, address, value) -> None:
        if (address == "/ingredient" and len(value) == 5
                and self.solo_fry_timeline is not None and self.playback_state is not None):
            seconds = self.playback_state.current_seconds()
            if seconds is not None:
                values = dict(self.solo_fry_timeline.snapshot(seconds))
                value = [*value, values.get(value[0], 0.0)]
        self.client.send_message(address, value)
        if address in {"/ingredient", "/progress/solo_fry"}:
            self.progress_report.record(address, value)


def special_progress_for(client, subject: str) -> tuple[tuple[str, float], ...]:
    report = getattr(client, "progress_report", None)
    return report.snapshot(subject) if report is not None else ()


def percentage(value: float) -> str:
    if not math.isfinite(value) or value < 0:
        return "未确定"
    return f"{max(0.0, min(1.0, value)):.0%}"


def format_runtime_summary(
    recognition_number: int,
    action: str,
    subject: str,
    progress: float = -1.0,
    events: Sequence[str] = (),
    special_progress: Sequence[tuple[str, float]] = (),
    *,
    target_ingredients: Sequence[str] = (),
    dish_status: str = "",
    marinate_progress: float | None = None,
    solo_fry_progress: Mapping[str, float] | None = None,
    serving_role: str | None = None,
) -> str:
    """Describe this frame and report the dedicated marinate/solo-fry controls."""
    stage_text = ACTION_LABELS.get(action, "动作未确定")
    if action in {"plate", "transfer"} and serving_role is not None:
        stage_text = {"temporary": "盛出备用", "final": "最终装盘"}.get(
            serving_role, "盛出（用途待确认）")
    if action == "idle" and dish_status == "finished":
        stage_text = "成品展示"
    action_text = stage_text

    items = set(subject.split("、")) if subject and subject != "未知" else set()
    marinate_text = f"猪肉 {percentage(marinate_progress)}" if marinate_progress is not None else "暂无"
    ingredients_text = subject if items else "暂未确认食材"
    summary = (
        f"1.识别动作：{action_text}｜2.当前食材：{ingredients_text}｜"
        f"3.腌制进度：{marinate_text}｜4.本次开启第{recognition_number}次识别"
    )
    event_names = tuple(dict.fromkeys(EVENT_LABELS[event] for event in events if event in EVENT_LABELS))
    if event_names:
        summary += f"｜5.结束事件：已触发（{'、'.join(event_names)}）"
    solo_values = solo_fry_progress or {}
    solo_text = "、".join(
        f"{FOOD_LABELS[name]} {percentage(solo_values[name]) if name in solo_values else '暂无'}"
        for name in ("green_pepper", "egg")
    )
    summary += f"｜6.单独翻炒进度：{solo_text}"
    return summary
