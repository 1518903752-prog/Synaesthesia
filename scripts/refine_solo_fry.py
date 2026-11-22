"""Verify first solo-fry boundaries against timestamped frames from any video."""
from __future__ import annotations

import argparse
import base64
import hashlib
import json
import math
import os
import subprocess
import time
from pathlib import Path

import requests

from startup_frame import find_ffmpeg
from watch_images_to_max import read_environment, resolve_base_url, extract_json, normalize_content

VALIDATION_VERSION = 1
STATES = {"solo", "removal", "absent", "mixed", "unknown"}


def source_identity(video: Path) -> dict:
    stat = video.stat()
    return {"path": str(video.resolve()), "mtime_ns": stat.st_mtime_ns, "size": stat.st_size}


def sample_times(window: dict, duration: float) -> list[float]:
    low = max(0.0, float(window["start"]) - 8.0)
    high = min(duration - .05, float(window["end"]) + 16.0)
    if high <= low:
        raise ValueError("Invalid solo-fry frame range")
    step = max(2.0, math.ceil((high - low) / 23.0))
    times = [round(low + index * step, 3)
             for index in range(int((high - low) / step) + 1)]
    return times


def derive_verified_window(window: dict, times: list[float], payload: dict) -> dict:
    raw = payload.get("frames", [])
    if len(raw) != len(times):
        raise ValueError("The API did not classify every sampled frame")
    classified = {}
    for frame in raw:
        index = frame.get("index")
        state = frame.get("state")
        confidence = frame.get("confidence", 0)
        if (not isinstance(index, int) or index < 0 or index >= len(times)
                or index in classified or state not in STATES
                or not isinstance(confidence, (int, float)) or not math.isfinite(confidence)):
            raise ValueError("Invalid frame classifications")
        classified[index] = state if confidence >= .7 else "unknown"

    # Choose the first observed solo batch overlapping the coarse API window.
    candidates = [index for index in range(len(times)) if classified[index] == "solo"
                  and times[index] <= float(window["end"]) + 8]
    if not candidates:
        raise ValueError(f"No clear solo frying for {window['ingredient']}")
    first = candidates[0]
    before = next((index for index in range(first - 1, -1, -1)
                   if classified[index] in {"absent", "mixed"}), None)
    if before is None:
        raise ValueError("Solo frying was already underway at the first sampled frame")
    # An uncertain frame or a camera cut does not prove completion. Only visible
    # removal, another cooking batch, or confirmed absence closes this batch.
    end_index = next((index for index in range(first + 1, len(times))
                     if classified[index] == "removal"
                     or (classified[index] in {"mixed", "absent"} and index + 1 < len(times)
                         and classified[index + 1] in {"removal", "mixed", "absent"})), None)
    if end_index is None:
        raise ValueError("Still frying at the last sampled frame; completion is unconfirmed")
    solo = [index for index in range(first, end_index) if classified[index] == "solo"]
    if not solo:
        raise ValueError("No verified solo-fry sequence")
    start = round((times[before] + times[first]) / 2, 3)
    # Use the observed transition frame, not an earlier estimate or a midpoint
    # that would reach one while the last confirmed frying frame is on screen.
    end = times[end_index]
    if end <= start:
        raise ValueError("Invalid verified solo-fry duration")
    return {**window, "start": start, "end": end,
            "coarse_start": window.get("coarse_start", window["start"]),
            "coarse_end": window.get("coarse_end", window["end"]),
            "frame_verified": True, "last_solo_frame": times[solo[-1]],
            "completion_frame": end, "boundary_resolution_seconds": times[first] - times[before]}


def analyze_frames(frames: list[Path], times: list[float], ingredient: str, model: str) -> dict:
    key = read_environment("DASHSCOPE_API_KEY")
    if not key:
        raise ValueError("DASHSCOPE_API_KEY is missing")
    content = [{"type": "text", "text": (
        f"这些按顺序排列的图片来自同一视频。只判断锅里目标食材 {ingredient} 的状态。"
        "solo=目标食材在锅里单独煎炒（油和调味料不算其他主食材）；"
        "removal=目标食材正在被从锅里盛出；absent=明确看到目标尚未入锅、已空的锅或已切换到另一食材的锅；"
        "mixed=目标正在和其他主食材一起炒；unknown=遮挡、转场或看不清，不能据此推断完成。"
        "锅外的备料碗和砧板中的食材不算锅内食材。镜头暂时离开锅不能据此判断目标已经离锅，应标unknown。"
        "不要根据给定食材名猜测内容。"
        "逐张判断，返回JSON：{\"frames\":[{\"index\":0,\"state\":\"solo\",\"confidence\":0.9},...]}。"
        "每张图片都必须有一条对应结果，index严格使用图片前的编号。"
    )}]
    for index, (frame, seconds) in enumerate(zip(frames, times)):
        content.extend([{"type": "text", "text": f"图片编号 {index}；原视频时间 {seconds:.3f} 秒"},
                        {"type": "image_url", "image_url": {"url": "data:image/jpeg;base64," +
                            base64.b64encode(frame.read_bytes()).decode("ascii")}}])
    response = requests.post(resolve_base_url() + "/chat/completions",
        headers={"Authorization": "Bearer " + key, "Content-Type": "application/json"},
        json={"model": model, "messages": [{"role": "user", "content": content}],
              "response_format": {"type": "json_object"}, "enable_thinking": False,
              "temperature": 0, "max_tokens": 1800}, timeout=(10, 90))
    if not response.ok:
        raise ValueError(f"Frame verification API returned HTTP {response.status_code}")
    envelope = response.json()
    from token_usage import report_usage
    report_usage(envelope.get('usage'))
    result = extract_json(normalize_content(envelope.get("choices", [{}])[0]
                                          .get("message", {}).get("content")))
    return {"classification": result, "usage": envelope.get("usage", {})}


def refine_timeline(video: Path, timeline_path: Path, *, model: str | None = None,
                    analyzer=analyze_frames) -> dict:
    original_bytes = timeline_path.read_bytes()
    timeline = json.loads(original_bytes.decode("utf-8-sig"))
    windows = timeline.get("solo_fry_windows", [])
    identity = source_identity(video)
    model = model or read_environment("QWEN_MODEL") or "qwen3.7-flash"
    saved = timeline.get("solo_fry_frame_validation", {})
    if (saved.get("version") == VALIDATION_VERSION and saved.get("source_identity") == identity
            and saved.get("model") == model and saved.get("verified_windows") == windows):
        return timeline
    duration = float(timeline["source_duration_seconds"])
    audit_dir = timeline_path.parent / "solo_fry_frame_validation"
    ffmpeg = find_ffmpeg(video.parent) if windows else ""
    refined = []
    for window in windows:
        ingredient = window["ingredient"]
        if ingredient not in {"pork", "green_pepper", "garlic", "egg", "small_chili"}:
            raise ValueError("Unexpected solo-fry ingredient")
        times = sample_times(window, duration)
        folder = audit_dir / ingredient
        folder.mkdir(parents=True, exist_ok=True)
        frames = []
        print(f"正在校验{ingredient}单独煸炒的开始和结束", flush=True)
        for index, seconds in enumerate(times):
            frame = folder / f"frame_{index:03d}.jpg"
            subprocess.run([ffmpeg, "-nostdin", "-hide_banner", "-loglevel", "error", "-threads", "1",
                            "-ss", str(seconds), "-i", str(video), "-map", "0:v:0", "-frames:v", "1",
                            "-vf", "scale=480:-1", "-threads", "1", "-y", str(frame)],
                           stdout=subprocess.PIPE, stderr=subprocess.PIPE, timeout=10, check=True,
                           creationflags=subprocess.CREATE_NO_WINDOW if os.name == "nt" else 0)
            frames.append(frame)
        analysis = analyzer(frames, times, ingredient, model)
        (folder / "api_check.json").write_text(json.dumps({"times": times, **analysis},
                                ensure_ascii=False, indent=2), encoding="utf-8")
        corrected = derive_verified_window(window, times, analysis["classification"])
        refined.append(corrected)
        print(f"已校验{ingredient}：{corrected['start']:.1f}–{corrected['end']:.1f}秒", flush=True)
    if source_identity(video) != identity:
        raise ValueError("Video changed during verification")
    if timeline_path.read_bytes() != original_bytes:
        raise ValueError("Timeline changed during verification")
    timeline["solo_fry_windows"] = refined
    timeline["solo_fry_frame_validation"] = {
        "version": VALIDATION_VERSION, "model": model, "source_identity": identity,
        "verified_windows": refined, "verified_at": time.time(),
    }
    destination = timeline_path.with_suffix(".frame-verified-stage")
    destination.write_text(json.dumps(timeline, ensure_ascii=False, indent=2), encoding="utf-8")
    destination.replace(timeline_path)
    return timeline


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--video", required=True)
    parser.add_argument("--timeline", required=True)
    parser.add_argument("--model")
    args = parser.parse_args()
    refine_timeline(Path(args.video).resolve(), Path(args.timeline).resolve(), model=args.model)


if __name__ == "__main__":
    main()
