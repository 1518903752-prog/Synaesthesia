"""Small asynchronous diagnostic log; never changes recognition or OSC payloads."""
from __future__ import annotations

import hashlib
import json
import os
import queue
import threading
import time
from datetime import datetime, timezone
from pathlib import Path


class RecognitionTrace:
    def __init__(self, directory: Path | None, **session) -> None:
        self.enabled = directory is not None
        self.path: Path | None = None
        self._queue = queue.Queue(maxsize=2048)
        self._thread = None
        self._local = threading.local()
        self._lock = threading.Lock()
        self._osc_state = {}
        self.dropped = 0
        if not self.enabled:
            return
        try:
            directory.mkdir(parents=True, exist_ok=True)
            stamp = datetime.now(timezone.utc).strftime('%Y%m%dT%H%M%S%fZ')
            self.path = directory / f'recognition_{stamp}_{os.getpid()}.jsonl'
            self._stream = self.path.open('x', encoding='utf-8', buffering=1)
            (directory / 'latest.txt').write_text(str(self.path), encoding='utf-8')
        except OSError:
            stream = getattr(self, '_stream', None)
            if stream is not None:
                stream.close()
            self.enabled = False
            return
        self._thread = threading.Thread(target=self._write_loop,
                                        name='recognition-trace', daemon=True)
        self._thread.start()
        self.record('session', **session, process_id=os.getpid(),
                    note='osc_sent means UDP submission, not confirmed Max playback')

    def set_context(self, **values) -> None:
        self._local.context = values

    def clear_context(self) -> None:
        self._local.context = {}

    def record(self, event: str, **values) -> None:
        if not self.enabled:
            return
        item = {'event': event, 'at_monotonic': time.monotonic(),
                'at_utc': datetime.now(timezone.utc).isoformat(),
                **getattr(self._local, 'context', {}), **values}
        try:
            self._queue.put_nowait(item)
        except queue.Full:
            self.dropped += 1

    def task(self, event, task, **values) -> None:
        self.record(event, image=task.path.name, signature=list(task.signature),
                    generation=task.generation, frame_seconds=task.playback_seconds,
                    captured_at=task.captured_at or None,
                    sequence=getattr(task, 'sequence', None), **values)

    def osc_sent(self, address, value, generation, playback_round, origin) -> None:
        if not self.enabled:
            return
        if address == '/ingredient' and len(value) >= 5:
            # Whole-count zero is not absence. Presence is the fifth OSC value.
            key = (generation, address, value[0])
            state = (int(value[4]), str(value[2]))
        elif address in {'/process', '/stage'} and len(value) >= 2:
            key = (generation, address)
            state = (str(value[0]), int(value[1]))
        elif address == '/event':
            key, state = None, None
        else:
            return
        if key is not None:
            with self._lock:
                if self._osc_state.get(key) == state:
                    return
                # Retain only this generation, so long sessions remain bounded.
                self._osc_state = {k: v for k, v in self._osc_state.items() if k[0] == generation}
                self._osc_state[key] = state
        self.record('osc_sent', address=address, values=value,
                    generation=generation, playback_round=playback_round,
                    origin=origin)

    def _write_loop(self) -> None:
        total = 0
        try:
            while True:
                item = self._queue.get()
                if item is None:
                    break
                body = json.dumps(item, ensure_ascii=False, separators=(',', ':')) + '\n'
                total += len(body.encode('utf-8'))
                if total > 10 * 1024 * 1024:
                    self._stream.write('{"event":"trace_size_limit"}\n')
                    self.enabled = False
                    break
                self._stream.write(body)
        except (OSError, TypeError, ValueError):
            self.enabled = False
        finally:
            self._stream.close()

    def close(self) -> None:
        if self._thread is None or not self._thread.is_alive():
            return
        self.record('trace_closed', dropped_events=self.dropped)
        self.enabled = False
        try:
            self._queue.put(None, timeout=1)
        except queue.Full:
            return
        self._thread.join(timeout=2)


class TracingOSCClient:
    def __init__(self, client, trace, playback_state, origin='recognition') -> None:
        self.client, self.trace = client, trace
        self.playback_state, self.origin = playback_state, origin

    def send_message(self, address, value) -> None:
        self.client.send_message(address, value)
        self.trace.osc_sent(address, value, self.playback_state.generation,
                            self.playback_state.playback_round, self.origin)


def source_fingerprints(paths) -> dict:
    result = {}
    for path in paths:
        try:
            result[str(path)] = hashlib.sha256(path.read_bytes()).hexdigest()
        except OSError:
            result[str(path)] = 'unavailable'
    return result
