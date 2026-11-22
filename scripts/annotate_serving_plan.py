"""Annotate serving purpose from the selected video's complete API timeline.

Runs once during pre-analysis, never in the live result/OSC thread.
"""
from __future__ import annotations

import argparse
import json
import os
from pathlib import Path

import requests
from urllib3.util import Timeout

from cooking_stage import (SCHEMA_VERSION, SERVING_ACTIONS, event_action, valid_events,
                           later_heating, events_fingerprint, source_identity)
from cooking_fusion import clamp_confidence

SYSTEM = "你根据视频预分析记录判断盛出用途。只使用给出的操作、食材前后关系和可见展示证据，不补写菜谱，不按时间占比判断。严格输出JSON。"
INSTRUCTION = """这是同一导入视频从头到尾的事件记录，description来自视频识别。
对每个candidate_event_id判断盛出用途：temporary=分批盛出备用，后续还会烹饪/回锅；final=最终出锅上桌，后续明确展示这道完成的菜；unknown=证据不足。
后面仍有实际烹饪工序时必须temporary。仅仅是最后一次盛出、时间靠后、盛进盘子、或没有记录到后续烹饪，均不足以确认final。
同时找出明确展示最终成品的事件。只有description明确表示已完成菜肴的成品展示、且后面没有继续烹饪，才能列入finished_displays。空盘、单独一批盛出备用、备料展示均不算。
final必须在evidence_event_ids中引用随后的finished_displays事件。不要仅凭某种食材名字或食材数量判断完成。不改原时间点。
返回{"servings":[{"event_id":"给定候选ID","role":"temporary|final|unknown","confidence":0.9,"evidence_event_ids":["给定事件ID"]}],"finished_displays":[{"event_id":"给定事件ID","confidence":0.9}]}。
每个候选必须有一条结果。无法确认时unknown，不猜测。\n"""


def candidates(payload):
    return [e for e in valid_events(payload) if event_action(e) in SERVING_ACTIONS]


def build_plan(payload, video, model, answer, *, complete=True):
    events = valid_events(payload)
    by_id = {e.get("id"): e for e in events}
    displays = []
    for item in answer.get("finished_displays", []):
        if not isinstance(item, dict): continue
        event = by_id.get(item.get("event_id"))
        if (event and event_action(event) in {"idle", "finished", "final_reveal", "presentation"}
                and clamp_confidence(item.get("confidence")) >= .75
                and not later_heating(events, float(event["start"]))):
            displays.append(event["id"])
    answers = {}
    for item in answer.get("servings", []):
        if isinstance(item, dict) and item.get("event_id") not in answers:
            answers[item.get("event_id")] = item
    windows = []
    for event in candidates(payload):
        future = later_heating(events, float(event["start"]))
        item = answers.get(event["id"], {})
        role = item.get("role", "unknown")
        confidence = clamp_confidence(item.get("confidence"))
        evidence = [ident for ident in item.get("evidence_event_ids", []) if ident in by_id]
        if future:
            role, confidence, evidence = "temporary", 1.0, [e["id"] for e in future]
        elif role == "final":
            evidence = [ident for ident in evidence if ident in displays
                        and float(by_id[ident]["start"]) >= float(event["start"])]
            if not evidence or confidence < .75: role = "unknown"
        elif role != "temporary" or confidence < .75:
            role = "unknown"
        windows.append({"event_id": event["id"], "role": role, "confidence": confidence,
                        "evidence_event_ids": evidence})
    return {"schema_version": SCHEMA_VERSION, "events_sha256": events_fingerprint(payload.get("events", [])),
            "source": source_identity(video), "model": model, "complete": complete,
            "annotation_source": "full_video_api_timeline_context", "windows": windows,
            "finished_display_event_ids": displays}


def analyze(payload, model):
    # Use the same configured provider as the existing video pre-analysis.
    from watch_images_to_max import read_environment, resolve_base_url, extract_json, normalize_content
    key = read_environment("DASHSCOPE_API_KEY")
    if not key: raise ValueError("Missing pre-analysis API credential")
    events = [{k:e.get(k) for k in ("id", "start", "end", "action", "action_group", "ingredient",
                                  "target_ingredients", "description", "confidence")}
              for e in valid_events(payload)]
    context = {"candidate_event_ids": [e["id"] for e in candidates(payload)], "events": events}
    response = requests.post(resolve_base_url() + "/chat/completions",
        headers={"Authorization": "Bearer " + key, "Content-Type": "application/json"},
        json={"model": model, "messages": [{"role": "system", "content": SYSTEM},
              {"role": "user", "content": INSTRUCTION + json.dumps(context, ensure_ascii=False)}],
              "response_format": {"type": "json_object"}, "enable_thinking": False,
              "temperature": 0, "max_tokens": 1800},
        timeout=Timeout(total=30, connect=5, read=25))
    response.raise_for_status()
    envelope = response.json()
    from token_usage import report_usage
    report_usage(envelope.get('usage'))
    answer = extract_json(normalize_content(envelope.get("choices", [{}])[0].get("message", {}).get("content")))
    if (not isinstance(answer.get("servings"), list) or not isinstance(answer.get("finished_displays"), list)):
        raise ValueError("Invalid serving-purpose pre-analysis")
    return answer


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--video", type=Path, required=True)
    parser.add_argument("--timeline", type=Path, required=True)
    parser.add_argument("--model", default="qwen3.7-flash")
    args = parser.parse_args()
    payload = json.loads(args.timeline.read_text(encoding="utf-8"))
    identity = source_identity(args.video)
    cached = payload.get("serving_plan", {})
    if (cached.get("schema_version") == SCHEMA_VERSION and cached.get("complete") is True
            and cached.get("events_sha256") == events_fingerprint(payload.get("events", []))
            and cached.get("source") == identity and cached.get("model") == args.model):
        print("盛出用途预分析缓存有效")
        return
    events = valid_events(payload)
    needs_api = any(not later_heating(events, float(e["start"])) for e in candidates(payload))
    answer, complete = {}, True
    if needs_api:
        try: answer = analyze(payload, args.model)
        except (requests.RequestException, RuntimeError, ValueError, KeyError, TypeError, IndexError):
            complete = False
            print("盛出用途暂未确认：保留现有进度，盛出时保持已确认阶段")
    plan = build_plan(payload, args.video, args.model, answer, complete=complete)
    if plan["source"] != identity:
        raise RuntimeError("Video changed during serving-purpose pre-analysis")
    payload["serving_plan"] = plan
    temporary = args.timeline.with_name(args.timeline.name + ".serving.tmp")
    temporary.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    os.replace(temporary, args.timeline)
    roles = [w["role"] for w in plan["windows"]]
    print(f"盛出用途：备用 {roles.count('temporary')}；最终装盘 {roles.count('final')}；待确认 {roles.count('unknown')}")


if __name__ == "__main__": main()
