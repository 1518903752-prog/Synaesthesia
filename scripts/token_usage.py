"""Forward successful API response usage to the Max controller's single ledger."""
import threading


_OUTPUT_LOCK = threading.Lock()


def token_count(usage):
    usage = usage if isinstance(usage, dict) else {}

    def positive_integer(value):
        try:
            return max(0, int(value))
        except (TypeError, ValueError, OverflowError):
            return 0

    return positive_integer(usage.get('total_tokens')) or (
        positive_integer(usage.get('prompt_tokens', usage.get('input_tokens')))
        + positive_integer(usage.get('completion_tokens', usage.get('output_tokens')))
    )


def report_usage(usage):
    count = token_count(usage)
    if count:
        with _OUTPUT_LOCK:
            print(f'TOKEN_USAGE {count}', flush=True)
