# AIRL_bench — TODO

## Done

### ~~1. Add pre-flight check for AIRL binary~~

✅ Added `check-airl-binary` and `check-ollama` functions. The tool now fails fast with a clear error message before running tasks.

### ~~2. Add semantic comparison between AIRL and Python output~~

✅ Added `compare-outputs` function. Captures stdout from both runs, trims whitespace, and reports `yes`/`no`/`skip` in the results table and findings.

### ~~3. Use `str` builtin and multi-binding `let`~~

✅ Refactored all files to use `(str ...)` instead of nested `(+ ...)` chains. Replaced single-binding `let` nesting with multi-binding `let` (e.g. `(let (a : T x) (b : T y) body)`) — eliminated the 20+ closing paren problem.

## Remaining

### 4. LoRA fine-tuning for qwen3-coder

The benchmark shows a 20-point capability gap between qwen3-coder (80%) and Sonnet (100%) that can't be closed with documentation or few-shot examples alone. A LoRA trained on ~50-80 AIRL examples from the repo could help with:
- S-expression paren counting
- Avoiding nonexistent constructs (while, set!, char-code)
- Binary `or`/`and` nesting

Training data available: 38 valid fixtures, 31 Claude-generated benchmark solutions, 497 lines of stdlib, 9 example programs.

### 5. Add more models to comparison matrix

Test against: `qwen3.5:35b`, `nemotron-3-nano:30b`, `llama2` (all available in local Ollama).

### 6. Automate multi-run variance analysis

Run each configuration 3-5 times to measure variance. Some tasks are non-deterministic (power passed in run 004 but failed in 005). Report mean ± stddev for correctness rates.
