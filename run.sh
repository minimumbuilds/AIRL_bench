#!/usr/bin/env bash
# Run the AIRL benchmark tool. All arguments are passed through.
# Usage: ./run.sh --model qwen3-coder --airl-bin /path/to/airl-driver
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
AIRL_BIN="${AIRL_BIN:-airl-driver}"
exec "$AIRL_BIN" run \
  --load "$SCRIPT_DIR/ollama.airl" \
  --load "$SCRIPT_DIR/runner.airl" \
  --load "$SCRIPT_DIR/report.airl" \
  "$SCRIPT_DIR/benchmark.airl" \
  -- "$@"
