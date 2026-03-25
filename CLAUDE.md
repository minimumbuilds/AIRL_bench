# AIRL_bench v0.1.0

AI code generation benchmarking tool, written in AIRL itself.

## What this project does

Sends coding tasks to an LLM (Ollama or Claude), asks it to generate solutions in both AIRL and Python, executes both, and compares correctness, performance, and output equivalence. Results are saved as markdown reports in `findings/` and `results/`.

## Project layout

- `benchmark.airl` — Main entry point: CLI parsing, task orchestration, report writing
- `ollama.airl` — LLM client (Ollama API + Claude CLI backend + code extraction)
- `runner.airl` — Code execution with timing (`run-python`, `run-airl`)
- `report.airl` — Markdown report and findings generation
- `run.sh` — Bash wrapper that loads modules via `--load` and runs `benchmark.airl`
- `prompts/` — System prompts and reference material sent to the LLM (synced from upstream `AIRL/AIRL-LLM-Guide.md` with runtime-accuracy patches)
- `tasks/` — 25 task specification files (symlink to AIRL repo)
- `findings/` — Archived per-run results
- `output/` — Generated code (gitignored, regenerated each run)

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
- `(let (a : T x) (b : T y) body)` — multi-binding let (not nested single-binding)
- `(str ...)` — string concatenation (not nested `(+ ...)`)
- `(match expr (Ok v) ... (Err e) ...)` — Result pattern matching
- `(map-from ["key" val ...])` — map literals
- `(map-get-or m "key" default)` — safe map access with default
- `(http-request "POST" url body headers)` — HTTP requests (arg order: method, url, body, headers)
- `(shell-exec cmd [args])` — shell execution returns `Result[Map, String]` with `"stdout"`, `"stderr"`, `"exit-code"` keys
- `(string-to-int s)` — returns `Result`, not bare Int; use `(match (string-to-int s) (Ok n) ... (Err e) ...)`

## Running

```bash
./run.sh --model qwen3-coder --airl-bin /path/to/airl-driver
./run.sh --backend claude --model claude-sonnet-4-6 --airl-bin /path/to/airl-driver
```

Flags: `--model`, `--backend` (ollama|claude), `--host`, `--tasks`, `--output`, `--airl-bin`, `--limit`, `--only`

## When editing .airl files

- Maintain the `:sig`/`:intent`/`:requires`/`:ensures`/`:body` contract structure on every `defn`
- Use `str` for concatenation, multi-binding `let` to avoid deep nesting
- Test changes by running: `./run.sh --airl-bin <path> --limit 1`
- The modules are loaded in order: `ollama.airl`, `runner.airl`, `report.airl`, then `benchmark.airl` — functions must be defined before use across modules

## Commit style

Short imperative prefix: `fix:`, `feat:`, `add:` — followed by a concise description. Examples:
- `fix: relax parse-flag contract — empty string is valid for optional flags`
- `feat: add --limit and --only flags for running task subsets`
