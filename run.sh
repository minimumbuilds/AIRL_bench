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

# Derive stdlib path from airl-bin location (../../stdlib relative to target/release/airl-driver)
AIRL_STDLIB="$(dirname "$(dirname "$(dirname "$AIRL_BIN")")")/stdlib"

# Allow shell-exec to call the tools the benchmark needs
export AIRL_ALLOW_EXEC="airl-driver,curl,python3,python,ls,mkdir"

exec "$AIRL_BIN" run \
  --load "$AIRL_STDLIB/prelude.airl" \
  --load "$AIRL_STDLIB/json.airl" \
  --load "$SCRIPT_DIR/ollama.airl" \
  --load "$SCRIPT_DIR/runner.airl" \
  --load "$SCRIPT_DIR/report.airl" \
  "$SCRIPT_DIR/benchmark.airl" \
  -- "$@"
