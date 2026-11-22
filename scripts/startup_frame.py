"""Cache the original video's first decoded frame, independent of Max's selection."""
from __future__ import annotations

import hashlib
import json
import os
import shutil
import subprocess
from pathlib import Path


def resolve_startup_video(video: str | None, max_patch: Path | None,
                          project_root: Path) -> Path:
    if video:
        source = Path(video).expanduser()
    else:
        if max_patch is None:
            raise ValueError("No video or Max playlist was provided")
        patch = json.loads(max_patch.read_text(encoding="utf-8-sig"))
        playlist = next(item["box"] for item in patch["patcher"]["boxes"]
                        if item["box"].get("maxclass") == "jit.playlist")
        clip = playlist["data"]["clips"][0]
        source = Path(clip.get("absolutepath") or clip["filename"])
        project_root = max_patch.parent
    source = source if source.is_absolute() else project_root / source
    source = source.resolve()
    if not source.is_file():
        raise FileNotFoundError(source)
    return source


def find_ffmpeg(project_root: Path) -> str:
    candidates = [os.environ.get("FFMPEG_PATH"), shutil.which("ffmpeg"),
                  project_root / "tools" / "ffmpeg.exe",
                  Path.home() / ".codex" / "tools" / "video-use" / "bin" / "ffmpeg.exe",
                  Path(r"C:\Program Files (x86)\FormatFactory\ffmpeg.exe"),
                  Path(r"C:\Program Files\FormatFactory\ffmpeg.exe")]
    for candidate in candidates:
        if candidate and Path(candidate).is_file():
            return str(candidate)
    raise FileNotFoundError("ffmpeg.exe (or FFMPEG_PATH) was not found")


def cache_first_frame(video: Path, destination: Path, project_root: Path) -> Path:
    stat = video.stat()
    identity = {"video": str(video.resolve()), "mtime_ns": stat.st_mtime_ns,
                "size": stat.st_size, "seconds": 0.0, "max_edge": 960}
    metadata = destination.with_suffix(".json")
    try:
        saved = json.loads(metadata.read_text(encoding="utf-8"))
        if (saved.get("source") == identity and destination.is_file()
                and saved.get("image_sha256") == hashlib.sha256(destination.read_bytes()).hexdigest()):
            return destination
    except (OSError, ValueError):
        pass

    # No seek: decode the first video frame, including when Max selects a later range.
    result = subprocess.run(
        [find_ffmpeg(project_root), "-nostdin", "-hide_banner", "-loglevel", "error",
         "-threads", "1", "-i", str(video), "-map", "0:v:0", "-frames:v", "1",
         "-vf", "scale=960:960:force_original_aspect_ratio=decrease", "-threads", "1",
         "-c:v", "mjpeg", "-q:v", "3", "-f", "image2pipe", "pipe:1"],
        stdout=subprocess.PIPE, stderr=subprocess.PIPE, timeout=10,
        creationflags=subprocess.CREATE_NO_WINDOW if os.name == "nt" else 0,
        check=True,
    )
    if not result.stdout.startswith(b"\xff\xd8"):
        raise ValueError("The video did not produce a JPEG first frame")
    if video.stat().st_mtime_ns != stat.st_mtime_ns or video.stat().st_size != stat.st_size:
        raise ValueError("The video changed while extracting its first frame")
    destination.parent.mkdir(parents=True, exist_ok=True)
    image_temp = destination.with_suffix(".jpg.tmp")
    image_temp.write_bytes(result.stdout)
    image_temp.replace(destination)
    metadata_temp = metadata.with_suffix(".json.tmp")
    metadata_temp.write_text(json.dumps({"source": identity,
                             "image_sha256": hashlib.sha256(result.stdout).hexdigest()},
                             ensure_ascii=False, indent=2), encoding="utf-8")
    metadata_temp.replace(metadata)
    return destination
