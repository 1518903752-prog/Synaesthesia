"""Infer the whole cooking task's stage separately from a visible action."""
from __future__ import annotations

from dataclasses import dataclass
import hashlib
import json
import math
from pathlib import Path

from cooking_fusion import allowed_subject_group, subject_group_to_english, clamp_confidence

SCHEMA_VERSION = 1
OSC_STAGE_ADDRESS = "/stage"
HEATING_ACTIONS = {"stir_fry", "frying", "cooking", "boiling", "boil", "steaming", "baking"}
SERVING_ACTIONS = {"plate", "plating", "transfer", "serve_out"}


def event_action(event):
    group = event.get("action_group")
    return str(group if group and group != "none" else event.get("action", "unknown")).lower()


def events_fingerprint(events):
    data = json.dumps(events, ensure_ascii=False, sort_keys=True, separators=(",", ":"))
    return hashlib.sha256(data.encode("utf-8")).hexdigest()


def source_identity(video):
    path = Path(video).resolve()
    stat = path.stat()
    return {"path": str(path), "size": stat.st_size, "mtime_ns": stat.st_mtime_ns}


def valid_events(payload):
    result = []
    try: duration = float(payload.get("source_duration_seconds", 0))
    except (TypeError, ValueError): return result
    for event in payload.get("events", []):
        if not isinstance(event, dict): continue
        try: start, end = float(event["start"]), float(event["end"])
        except (KeyError, TypeError, ValueError): continue
        if (all(math.isfinite(n) for n in (start, end, duration)) and 0 <= start < end <= duration + .01
                and clamp_confidence(event.get("confidence")) >= .65):
            result.append(event)
    return result


def later_heating(events, seconds):
    return [e for e in events if event_action(e) in HEATING_ACTIONS and float(e["start"]) > seconds]


def is_serving_observation(result):
    process, dish = result.get("过程", {}), result.get("成品判断", {})
    return (process.get("当前动作", process.get("动作")) in SERVING_ACTIONS
            or dish.get("食物转移可见") is True or dish.get("盛出过程可见") is True)


@dataclass(frozen=True)
class ServingContext:
    role: str = "unknown"
    cooking_before: bool = False
    reason: str = "盛出用途缺少前后文确认"


class ServingPlan:
    def __init__(self, path=None, *, payload=None, video=None):
        self.events, self.windows = [], []
        self.duration = 0.0
        self.source_name = ""
        self.available = False
        if payload is None:
            if path is None or not Path(path).is_file(): return
            try: payload = json.loads(Path(path).read_text(encoding="utf-8"))
            except (OSError, ValueError): return
        if not isinstance(payload, dict): return
        plan = payload.get("serving_plan", {})
        if not isinstance(plan, dict): return
        if (plan.get("schema_version") != SCHEMA_VERSION
                or plan.get("events_sha256") != events_fingerprint(payload.get("events", []))): return
        self.source_name = Path(plan.get("source", {}).get("path", "")).name
        if path is not None or video is not None:
            identity = plan.get("source", {})
            try: actual = source_identity(video or identity["path"])
            except (KeyError, OSError, ValueError): return
            if (str(identity.get("path", "")).casefold() != actual["path"].casefold()
                    or identity.get("size") != actual["size"] or identity.get("mtime_ns") != actual["mtime_ns"]): return
        self.events = valid_events(payload)
        if not self.events: return
        self.duration = float(payload["source_duration_seconds"])
        by_id = {e.get("id"): e for e in self.events}
        displays = {ident for ident in plan.get("finished_display_event_ids", [])
                    if ident in by_id and event_action(by_id[ident]) in
                    {"idle", "finished", "final_reveal", "presentation"}
                    and not later_heating(self.events, float(by_id[ident]["start"]))}
        for item in plan.get("windows", []):
            if (isinstance(item, dict) and item.get("event_id") in by_id
                    and item.get("role") in {"temporary", "final", "unknown"}
                    and clamp_confidence(item.get("confidence")) >= .75):
                # Use the video API event's time bounds, never model-invented times.
                event = by_id[item["event_id"]]
                if event_action(event) not in SERVING_ACTIONS: continue
                if item["role"] == "final" and not any(
                        ident in displays and float(by_id[ident]["start"]) >= float(event["start"])
                        for ident in item.get("evidence_event_ids", [])): continue
                self.windows.append({**item, "start": event["start"], "end": event["end"],
                                     "targets": event.get("target_ingredients", [])})
        for ident in displays:
            event = by_id[ident]
            self.windows.append({"role": "final", "start": event["start"], "end": event["end"],
                                 "targets": event.get("target_ingredients", [])})
        self.available = True

    def matches_source(self, name):
        return bool(self.available and self.source_name
                    and self.source_name.casefold() == Path(name).name.casefold())

    def context(self, seconds, targets=()):
        if (seconds is None or not math.isfinite(seconds) or not self.available
                or not 0 <= seconds <= self.duration): return ServingContext()
        cooking_before = any(event_action(e) in HEATING_ACTIONS and float(e["start"]) <= seconds
                             for e in self.events)
        # Positive future cooking evidence overrules any optimistic final label.
        if later_heating(self.events, seconds):
            return ServingContext("temporary", cooking_before, "预分析确认后面仍有烹饪工序")
        observed = set(subject_group_to_english(allowed_subject_group(targets)).split(",")) - {"unknown"}
        matches = []
        for window in self.windows:
            if not float(window["start"]) <= seconds <= float(window["end"]): continue
            known = set(subject_group_to_english(allowed_subject_group(window["targets"])).split(",")) - {"unknown"}
            if known and observed and known.isdisjoint(observed): continue
            matches.append(window)
        if any(w["role"] == "temporary" for w in matches):
            return ServingContext("temporary", cooking_before, "前后文确认本次盛出备用")
        if any(w["role"] == "final" for w in matches):
            return ServingContext("final", cooking_before, "前后文确认最终装盘及随后的成品展示")
        return ServingContext("unknown", cooking_before)


@dataclass(frozen=True)
class CookingStage:
    name: str
    role: str = "unknown"
    reason: str = "保持已确认阶段"


class CookingStageTracker:
    def __init__(self, plan=None):
        self.plan = plan or ServingPlan()
        self.name = "unknown"
        self.previous_sent = None

    def update(self, result, seconds):
        process, scene, dish = result.get("过程", {}), result.get("食材场景", {}), result.get("成品判断", {})
        action = process.get("当前动作", process.get("动作", "unknown"))
        confidence = clamp_confidence(process.get("置信度"))
        context = self.plan.context(seconds, process.get("目标食材", []))
        if confidence >= .55 and action in {"wash", "chop"}:
            self.name = "preparation"
            return CookingStage(self.name, reason="当前画面确认备料")
        if confidence >= .55 and action == "marinate":
            self.name = "marinating"
            return CookingStage(self.name, reason="当前画面确认腌制")
        serving = is_serving_observation(result)
        if serving and scene.get("加入食材可见") is not True:
            confidence = max(confidence, clamp_confidence(dish.get("置信度")))
            if confidence >= .70:
                if context.role == "final": self.name = "plating"
                elif context.role == "temporary" and (context.cooking_before or self.name in {"cooking", "plating"}):
                    self.name = "cooking"
                return CookingStage(self.name, context.role, context.reason)
        if (confidence >= .55 and action == "stir_fry" and scene.get("锅内烹饪可见") is not False
                or confidence >= .70 and scene.get("加入食材可见") is True and context.cooking_before):
            self.name = "cooking"
            return CookingStage(self.name, reason="当前画面确认正在烹饪")
        if (dish.get("状态") == "finished" and clamp_confidence(dish.get("置信度")) >= .70
                and action == "idle" and scene.get("锅内烹饪可见") is not True
                and scene.get("加入食材可见") is not True and context.role == "final"):
            self.name = "plating"
            return CookingStage(self.name, "final", "当前画面明确展示成品；结束仍由独立事件触发")
        return CookingStage(self.name)

    def send_changed(self, client, stage):
        if stage.name == "unknown": return
        if stage.name != self.previous_sent:
            client.send_message(OSC_STAGE_ADDRESS, [stage.name, 1])
            self.previous_sent = stage.name
