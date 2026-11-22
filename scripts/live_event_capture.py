"""Sample the playing source video without asking Max to export more JPEGs."""
from __future__ import annotations

import os
import base64
import queue
import subprocess
import threading
import time
from pathlib import Path

from fast_events import EventTask, event_image_url
from startup_frame import find_ffmpeg


class VideoFrames:
    """One decoder with a bounded thumbnail queue."""
    def __init__(self, ffmpeg, video, seconds, interval, max_edge=512):
        self.frames = queue.Queue(maxsize=1)
        self.closed = threading.Event()
        self.ended = threading.Event()
        self.error = None
        self.process = subprocess.Popen([
            ffmpeg, "-nostdin", "-hide_banner", "-loglevel", "error",
            "-ss", f"{seconds:.6f}", "-threads", "1", "-i", str(video),
            "-map", "0:v:0", "-an", "-sn", "-dn", "-vf",
            f"fps={1 / interval:.9f}:start_time=0,scale={max_edge}:{max_edge}:force_original_aspect_ratio=decrease",
            "-filter_threads", "1", "-threads", "1", "-c:v", "mjpeg",
            "-q:v", "3", "-f", "image2pipe", "pipe:1"],
            stdin=subprocess.DEVNULL, stdout=subprocess.PIPE, stderr=subprocess.DEVNULL,
            creationflags=(subprocess.CREATE_NO_WINDOW | subprocess.BELOW_NORMAL_PRIORITY_CLASS)
                          if os.name == "nt" else 0)
        self.reader = threading.Thread(target=self._read, name="event-video-pipe", daemon=True)
        self.reader.start()

    def _read(self):
        buffer = bytearray()
        index = 0
        try:
            while not self.closed.is_set():
                chunk = self.process.stdout.read1(65536)
                if not chunk:
                    break
                buffer.extend(chunk)
                if len(buffer) > 2 * 1024 * 1024:
                    raise ValueError("Oversized video thumbnail")
                while (end := buffer.find(b"\xff\xd9")) >= 0:
                    data = bytes(buffer[:end + 2])
                    del buffer[:end + 2]
                    if not data.startswith(b"\xff\xd8"):
                        raise ValueError("Invalid video thumbnail")
                    while not self.closed.is_set():
                        try:
                            self.frames.put((index, data), timeout=.05)
                            break
                        except queue.Full:
                            continue
                    index += 1
        except (OSError, ValueError) as error:
            if not self.closed.is_set():
                self.error = error
        finally:
            self.ended.set()

    def take(self, timeout=.05):
        try:
            return self.frames.get(timeout=timeout)
        except queue.Empty:
            return None

    def close(self):
        self.closed.set()
        if self.process.poll() is None:
            self.process.terminate()
        try:
            self.process.wait(timeout=.5)
        except subprocess.TimeoutExpired:
            self.process.kill()
            self.process.wait(timeout=1)
        self.reader.join(timeout=1)
        self.process.stdout.close()


class LiveEventCapture:
    """Follow the live source clock; never analyze future or pre-seek frames."""
    def __init__(self, video, project_root, playback_state, stop_event, channel,
                 interval=.5, trace=None, on_frame=None):
        self.video = Path(video).resolve()
        self.ffmpeg = find_ffmpeg(project_root)
        self.state, self.stop, self.channel = playback_state, stop_event, channel
        self.interval, self.trace = interval, trace
        self.on_frame = on_frame
        self.worker = threading.Thread(target=self._run, name="event-video-capture", daemon=True)

    def start(self):
        self.worker.start()

    def join(self, timeout=3):
        self.worker.join(timeout)

    def _clock(self):
        with self.state._lock:
            seconds = self.state.current_seconds(max_age_seconds=1.0)
            if (self.state.running is False or seconds is None or not self.state.mapping_ready
                    or Path(self.state.mapping.source_name).name.casefold() != self.video.name.casefold()):
                return None
            return self.state.generation, seconds

    def _record(self, event, **fields):
        if self.trace is not None:
            self.trace.record(event, **fields)

    def _run(self):
        decoder = None
        generation = exhausted_generation = None
        pending = None
        retry_at = 0.0
        try:
            while not self.stop.is_set():
                clock = self._clock()
                if decoder is not None and (clock is None or clock[0] != generation):
                    decoder.close()
                    decoder, pending = None, None
                if clock is None or clock[0] == exhausted_generation or time.monotonic() < retry_at:
                    self.stop.wait(.05)
                    continue
                try:
                    if decoder is None:
                        generation, start_seconds = clock
                        decoder = VideoFrames(self.ffmpeg, self.video, start_seconds, self.interval,
                                              960 if self.on_frame is not None else 512)
                        self._record("event_video_decoder_started", generation=generation,
                                     frame_seconds=start_seconds, interval=self.interval,
                                     decoder_pid=decoder.process.pid)
                    if pending is None:
                        pending = decoder.take()
                        if pending is None:
                            if decoder.ended.is_set():
                                if decoder.error is not None:
                                    raise decoder.error
                                if decoder.process.poll() not in (None, 0):
                                    raise RuntimeError("Video decoder failed")
                                exhausted_generation = generation
                                decoder.close()
                                decoder = None
                            continue
                    index, data = pending
                    frame_seconds = start_seconds + index * self.interval
                    clock = self._clock()
                    if clock is None or clock[0] != generation:
                        continue  # Close this decoder on the next iteration.
                    seconds = clock[1]
                    if seconds < frame_seconds:
                        self.stop.wait(.02)
                        continue  # Keep the thumbnail until this position is actually played.
                    pending = None
                    if seconds - frame_seconds > self.interval:
                        continue  # Catch up without submitting thumbnails from an old scene.
                    captured_at = time.monotonic() - max(0.0, seconds - frame_seconds)
                    if self.on_frame is not None:
                        self.on_frame(EventTask(self.video, (generation, index), generation,
                            frame_seconds, "data:image/jpeg;base64," + base64.b64encode(data).decode("ascii"),
                            captured_at))
                    task = EventTask(self.video, (generation, index), generation, frame_seconds,
                                     event_image_url(data), captured_at)
                    if self.channel.submit(task):
                        if self.trace is not None:
                            self.trace.task("event_video_frame", task, source="python_video_capture",
                                            playback_lag_seconds=seconds - frame_seconds)
                except (OSError, ValueError, subprocess.SubprocessError, RuntimeError) as error:
                    self._record("event_video_capture_failed", generation=generation,
                                 error_type=type(error).__name__)
                    if decoder is not None:
                        decoder.close()
                    decoder, pending = None, None
                    retry_at = time.monotonic() + 1.0
        finally:
            if decoder is not None:
                decoder.close()
