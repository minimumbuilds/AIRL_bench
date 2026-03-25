#!/usr/bin/env bash
# AIRL_bench — run the benchmark. All arguments are passed through.
# Usage: ./run.sh --airl-bin /path/to/airl-driver --model qwen3-coder
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Extract --airl-bin from args
AIRL_BIN=""
for ((i=1; i<=$#; i++)); do
    if [[ "${!i}" == "--airl-bin" ]]; then
        j=$((i+1))
        AIRL_BIN="${!j}"
        break
    fi
done

if [[ -z "$AIRL_BIN" ]]; then
    echo "Usage: ./run.sh --airl-bin /path/to/airl-driver [--model ...] [--backend ...]"
    echo "  --airl-bin is required (path to the AIRL compiler binary)"
    exit 1
fi

exec "$AIRL_BIN" run \
  --load "$SCRIPT_DIR/ollama.airl" \
  --load "$SCRIPT_DIR/runner.airl" \
  --load "$SCRIPT_DIR/report.airl" \
  "$SCRIPT_DIR/benchmark.airl" \
  -- "$@"
