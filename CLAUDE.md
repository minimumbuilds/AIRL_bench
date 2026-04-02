# AIRL_bench (tested with AIRL v0.9.1)

AI code generation benchmarking tool, written in AIRL itself.

## What this project does

Sends coding tasks to an LLM (Ollama or Claude), asks it to generate solutions in both AIRL and Python, executes both (interpreted or AOT-compiled), and compares correctness, performance, and output equivalence. Results are saved as markdown reports in `findings/` and `results/`.

## Project layout

- `benchmark.airl` — Main entry point: CLI parsing, task orchestration, report writing
- `ollama.airl` — LLM client (curl-based Ollama API + Claude CLI backend + code extraction)
- `runner.airl` — Code execution: interpreted (`run-airl`), compiled (`run-airl-compiled`), Python (`run-python`)
- `report.airl` — Markdown report and findings generation
- `run.sh` — Bash wrapper that loads modules via `--load` and runs `benchmark.airl`
- `prompts/` — System prompts and reference material sent to the LLM (synced from upstream AIRL repo with runtime-accuracy patches)
- `tasks/` — 25 task specification files (symlink to AIRL repo)
- `findings/` — Archived per-run results
- `output/` — Generated code + compiled binaries (gitignored, regenerated each run)

## AIRL language conventions used here

All functions use AIRL's design-by-contract style:
```
(defn name
  :sig [(param : Type) -> ReturnType]
  :intent "What this function does"
  :requires [preconditions]
  :ensures [postconditions]
  :body expression)
```

Key patterns:
- `(let (a : T x) (b : T y) body)` — multi-binding let (preferred over nested single-binding)
- `(str ...)` — string concatenation (not nested `(+ ...)`)
- `(match expr (Ok v) ... (Err e) ...)` — Result pattern matching
- `(map-from ["key" val ...])` — map literals (string values only; use `map-set` for non-string values)
- `(map-get-or m "key" default)` — safe map access with default
- `(shell-exec cmd [args])` — returns `Result[String, String]` where Ok wraps stdout
- `(string-to-int s)` — returns `Result`, not bare Int; use `(match (string-to-int s) (Ok n) ... (Err e) ...)`

## Running

```bash
./run.sh --model qwen3-coder --airl-bin /path/to/airl-driver
./run.sh --backend claude --model claude-sonnet-4-6 --airl-bin /path/to/airl-driver
./run.sh --model qwen3-coder --airl-bin /path/to/airl-driver --compiled --airl-only
```

Flags: `--model`, `--backend` (ollama|claude), `--host`, `--tasks`, `--output`, `--airl-bin`, `--guide` (path to LLM guide), `--limit`, `--only`, `--airl-only`, `--compiled`

## v0.6.0 runtime notes

- `shell-exec` returns `Result[String, String]` — Ok wraps stdout as a plain string. Exit code and stderr are not available.
- `http-request` is a stub in airl-rt — returns error. This tool uses `curl` via `shell-exec` for Ollama API calls.
- `json-stringify` does not escape newlines in string values. This tool uses manual JSON escaping via `json-escape`.
- Avoid mixed-type list literals (e.g., `["key" false]`) — use `map-set` to add non-string values to maps.
- Static type checker warnings ("undefined symbol: `=`", "if condition must be bool") are false positives when `.airl` files are loaded standalone — they vanish when loaded via `--load` at runtime.

## When editing .airl files

- Maintain the `:sig`/`:intent`/`:requires`/`:ensures`/`:body` contract structure on every `defn`
- Use `str` for concatenation, multi-binding `let` to avoid deep nesting
- Test changes by running: `./run.sh --airl-bin <path> --limit 1`
- The modules are loaded in order: `ollama.airl`, `runner.airl`, `report.airl`, then `benchmark.airl` — functions must be defined before use across modules
- Build AIRL with `--features aot` for the `--compiled` flag to work

## Commit style

Short imperative prefix: `fix:`, `feat:`, `add:` — followed by a concise description. Examples:
- `fix: relax parse-flag contract — empty string is valid for optional flags`
- `feat: add --limit and --only flags for running task subsets`
