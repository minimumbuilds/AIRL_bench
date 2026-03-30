#!/usr/bin/env bash
set -euo pipefail

AIRL_DIR="$(cd "$(dirname "$0")" && pwd)/../AIRL"
BENCH_DIR="$(cd "$(dirname "$0")" && pwd)/../AIRL_bench"
AIRL="$AIRL_DIR/target/release/airl-driver"
SRC_DIR="$BENCH_DIR/output/airl"
BIN_DIR="$BENCH_DIR/output/g3_bin"
mkdir -p "$BIN_DIR"

echo "task|compile_ok|compile_ms|run_ok|run_ms|stdout"

for src in "$SRC_DIR"/*.airl; do
    task=$(basename "$src" .airl)
    
    # Copy source to AIRL dir (G3 needs relative paths + stdlib)
    cp "$src" "$AIRL_DIR/_bench_input.airl"
    
    cd "$AIRL_DIR"
    
    # Compile with G3
    compile_start=$(date +%s%N)
    compile_out=$($AIRL run --load bootstrap/lexer.airl --load bootstrap/parser.airl --load bootstrap/bc_compiler.airl bootstrap/g3_compiler.airl -- _bench_input.airl -o "_bench_out" 2>&1) && compile_ok=1 || compile_ok=0
    compile_end=$(date +%s%N)
    compile_ms=$(( (compile_end - compile_start) / 1000000 ))
    
    if [ "$compile_ok" = "1" ]; then
        # Run compiled binary
        run_start=$(date +%s%N)
        stdout=$(./_bench_out 2>&1) && run_ok=1 || run_ok=0
        run_end=$(date +%s%N)
        run_ms=$(( (run_end - run_start) / 1000000 ))
        
        # Move binary
        mv _bench_out "$BIN_DIR/$task" 2>/dev/null || true
    else
        run_ok=0
        run_ms=0
        stdout="COMPILE_FAIL"
    fi
    
    rm -f _bench_input.airl _bench_out _bench_out.o
    
    echo "$task|$compile_ok|$compile_ms|$run_ok|$run_ms|$stdout"
done
