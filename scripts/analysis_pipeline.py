"""Bound API request cadence while committing recognition results in one worker."""
from __future__ import annotations

import math
import queue
import threading
import time
from dataclasses import dataclass
from typing import Any, Callable

DEFAULT_ANALYSIS_INTERVAL_SECONDS = 1.5
MAX_PARALLEL_ANALYSES = 3
CAPTURE_CADENCE_SLACK_SECONDS = 0.75


@dataclass(frozen=True)
class AnalysisCompletion:
    task: Any
    sequence: int
    value: Any = None
    error: Exception | None = None
    started_at: float = 0.0
    completed_at: float = 0.0

    def __getattr__(self, name):
        return getattr(self.task, name)

    def resolve(self):
        if self.error is not None:
            raise self.error
        return self.value


class AnalysisPipeline:
    def __init__(self, incoming, completed, stop_event, analyze: Callable,
                 interval_seconds=DEFAULT_ANALYSIS_INTERVAL_SECONDS,
                 max_parallel=MAX_PARALLEL_ANALYSES, is_current=None):
        if not 1 <= max_parallel <= MAX_PARALLEL_ANALYSES:
            raise ValueError("Parallel analysis must be between 1 and 3")
        self.incoming = incoming
        self.completed = completed
        self.stop_event = stop_event
        self.analyze = analyze
        self.max_parallel = max_parallel
        self.is_current = is_current or (lambda task: True)
        self._jobs = queue.Queue()
        self._lock = threading.Lock()
        self._last_start = float("-inf")
        self._last_capture = None
        self._active = 0
        self._sequence = 0
        self._threads = []
        if not self.set_interval(interval_seconds):
            raise ValueError("Analysis interval must be between 0.5 and 60 seconds")

    @property
    def interval_seconds(self):
        with self._lock:
            return self._interval

    def set_interval(self, value):
        try:
            interval = float(value)
        except (TypeError, ValueError):
            return False
        if not math.isfinite(interval) or not .5 <= interval <= 60:
            return False
        with self._lock:
            self._interval = interval
        return True

    def start(self):
        for index in range(self.max_parallel):
            self._threads.append(threading.Thread(target=self._analyze_loop,
                name=f"qwen-request-{index + 1}", daemon=True))
        self._threads.append(threading.Thread(target=self._schedule_loop,
            name="qwen-request-schedule", daemon=True))
        for thread in self._threads:
            thread.start()

    def join(self, timeout=3):
        deadline = time.monotonic() + timeout
        for thread in self._threads:
            thread.join(max(0, deadline - time.monotonic()))

    def _cadence_ready(self, now, task=None):
        """Keep capture cadence without accumulating variable encoding delay."""
        elapsed = now - self._last_start
        if elapsed >= self._interval:
            return True
        captured = getattr(task, "captured_at", 0.0)
        return (bool(captured) and self._last_capture is not None
                and math.isfinite(captured)
                and captured - self._last_capture >= self._interval - 0.1
                and elapsed >= max(0.5, self._interval - CAPTURE_CADENCE_SLACK_SECONDS))

    def _schedule_loop(self):
        while not self.stop_event.is_set():
            with self.incoming.mutex:
                candidate = self.incoming.queue[0] if self.incoming.queue else None
            with self._lock:
                ready = (self._active < self.max_parallel
                         and self._cadence_ready(time.monotonic(), candidate))
            if not ready:
                self.stop_event.wait(.01)
                continue
            try:
                task = self.incoming.get(timeout=.05)
            except queue.Empty:
                continue
            if self.stop_event.is_set() or not self.is_current(task):
                self.incoming.task_done()
                continue
            with self._lock:
                self._sequence += 1
                sequence = self._sequence
                self._active += 1
                self._last_start = time.monotonic()
                self._last_capture = getattr(task, "captured_at", 0.0) or None
            self._jobs.put((sequence, task))

    def _analyze_loop(self):
        while not self.stop_event.is_set():
            try:
                sequence, task = self._jobs.get(timeout=.05)
            except queue.Empty:
                continue
            try:
                if self.stop_event.is_set() or not self.is_current(task):
                    continue
                started_at = time.monotonic()
                try:
                    result = AnalysisCompletion(task, sequence, value=self.analyze(task),
                                                started_at=started_at, completed_at=time.monotonic())
                except Exception as error:
                    result = AnalysisCompletion(task, sequence, error=error,
                                                started_at=started_at, completed_at=time.monotonic())
                if not self.stop_event.is_set():
                    self.completed.put(result)
            finally:
                self.incoming.task_done()
                self._jobs.task_done()
                with self._lock:
                    self._active -= 1
