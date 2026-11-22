"""Video-relative ingredient progress, latched at one until explicitly reset."""

from __future__ import annotations

import json
import math
from pathlib import Path

INGREDIENT_IDS = ("pork", "green_pepper", "garlic", "egg", "small_chili")
OSC_SOLO_FRY_PROGRESS_ADDRESS = "/progress/solo_fry"
OSC_CHOP_PROGRESS_ADDRESS = "/progress/chop"


class IngredientProgressTimeline:
    schema_key = ""
    windows_key = ""
    address = ""
    ingredients = INGREDIENT_IDS

    def __init__(self, path: Path | None = None, *, payload: dict | None = None) -> None:
        self.windows: dict[str, tuple[float, float]] = {}
        self.completed: set[str] = set()
        if payload is None:
            payload = json.loads(path.read_text(encoding="utf-8")) if path and path.is_file() else {}
        if payload.get(self.schema_key) != 1:
            return
        windows = payload.get(self.windows_key, [])
        for item in windows if isinstance(windows, list) else []:
            if not isinstance(item, dict) or item.get("ingredient") not in self.ingredients:
                continue
            try:
                start, end = float(item["start"]), float(item["end"])
                duration = float(payload["source_duration_seconds"])
            except (KeyError, TypeError, ValueError):
                continue
            if not all(math.isfinite(n) for n in (start, end, duration)):
                continue
            if start < 0 or end <= start or end > duration + 0.01:
                continue
            name = item["ingredient"]
            if name not in self.windows or start < self.windows[name][0]:
                self.windows[name] = (start, end)

    def reset(self) -> None:
        """Begin a new recognition session without retaining completed foods."""
        self.completed.clear()

    def snapshot(self, playback_seconds: float) -> tuple[tuple[str, float], ...]:
        if not math.isfinite(playback_seconds):
            return ()
        values = []
        for name in self.ingredients:
            window = self.windows.get(name)
            progress = 0.0 if window is None else max(0.0, min(1.0,
                (playback_seconds - window[0]) / (window[1] - window[0])))
            progress = round(progress, 4)
            if progress == 1.0:
                self.completed.add(name)
            values.append((name, 1.0 if name in self.completed else progress))
        return tuple(values)

    def send_changed(self, client, playback_seconds: float, previous: dict[str, float]) -> None:
        for name, value in self.snapshot(playback_seconds):
            if previous.get(name) != value:
                client.send_message(self.address, [name, value])
                previous[name] = value


class SoloFryTimeline(IngredientProgressTimeline):
    schema_key = "solo_fry_schema_version"
    windows_key = "solo_fry_windows"
    address = OSC_SOLO_FRY_PROGRESS_ADDRESS


class ChopTimeline(IngredientProgressTimeline):
    schema_key = "chop_schema_version"
    windows_key = "chop_windows"
    address = OSC_CHOP_PROGRESS_ADDRESS
    ingredients = ("green_pepper",)
