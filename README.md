# AIRL_bench

An AI code generation benchmarking utility **written in AIRL itself**. Sends coding tasks to a local Ollama LLM, generates code in both Python and AIRL, executes each, tracks token usage, compares output, times execution, and produces a findings report.

All code is compiled to native binaries via `g3`.

## Quick Start

```bash
# Interpreted mode (default)
./run.sh --model qwen3-coder --airl-bin /path/to/airl-driver

# AOT compiled mode — compiles each AIRL solution to a native binary before running
./run.sh --model qwen3-coder --airl-bin /path/to/airl-driver --compiled

# AIRL only (skip Python generation)
./run.sh --model qwen3-coder --airl-bin /path/to/airl-driver --airl-only
```

## What It Measures

For each of 100 coding tasks (across 4 difficulty tiers), the tool:

1. Sends the task to the LLM with AIRL and Python system prompts
2. Extracts generated code from the response
3. Runs the AIRL code via `airl run` (or compiles to native binary with `--compiled`) and the Python code via `python3`
4. Records: correctness (exit code 0), execution time, compile time (AOT mode), token usage, code size
5. Compares stdout output between languages (semantic equivalence check)
6. Saves per-run findings to `findings/NNN_modelname.md`

## CLI Flags

| Flag | Default | Description |
|------|---------|-------------|
| `--model` | `qwen3-coder` | Model name (Ollama model or Claude model ID) |
| `--backend` | `ollama` | LLM backend: `ollama` or `claude` |
| `--host` | `http://localhost:11434` | Ollama API host (ignored for claude backend) |
| `--tasks` | `./tasks` | Directory containing task `.md` files |
| `--output` | `./output` | Directory for generated code |
| `--airl-bin` | `airl-driver` | Path to the AIRL binary |
| `--guide` | `prompts/airl_llm_guide.md` | Path to the LLM guide prompt file |
| `--limit` | `0` (all) | Run only the first N tasks |
| `--only` | *(none)* | Run only tasks matching this substring |
| `--airl-only` | *(flag)* | Skip Python code generation and execution |
| `--compiled` | *(flag)* | AOT compile AIRL code to native binaries before running |

### Examples

```bash
# Ollama with full LLM guide
./run.sh --model qwen3-coder --airl-bin /path/to/airl-driver

# Use the condensed AIRL-Header.md instead
./run.sh --model qwen3-coder --airl-bin /path/to/airl-driver --guide prompts/airl_header.md

# Claude via claude CLI
./run.sh --backend claude --model claude-sonnet-4-6 --airl-bin /path/to/airl-driver

# Run a single task for quick testing
./run.sh --model qwen3-coder --airl-bin /path/to/airl-driver --limit 1

# AOT compiled, AIRL only
./run.sh --model qwen3-coder --airl-bin /path/to/airl-driver --compiled --airl-only

# Run only Tier 2 composition tasks (46-70)
./run.sh --model qwen3-coder --airl-bin /path/to/airl-driver --only 4 --airl-only
./run.sh --model qwen3-coder --airl-bin /path/to/airl-driver --only 5 --airl-only
./run.sh --model qwen3-coder --airl-bin /path/to/airl-driver --only 6 --airl-only
```

## Task Tiers

| Tier | Tasks | Description |
|------|-------|-------------|
| 1: Stdlib Direct | 01-45 | Call the right function — tests stdlib knowledge |
| 2: Composition | 46-70 | Chain 2-3 operations — tests type flow across function boundaries |
| 3: Recursion | 71-85 | Functional-only control flow — tests where Python-trained models break |
| 4: Contracts & Types | 86-100 | AIRL-specific features — contracts, variants, Result handling |

## Pre-flight Checks

The tool verifies before running:
- The AIRL binary exists and responds to `--version`
- Ollama is reachable at the configured host (or Claude CLI is available)

## Project Structure

```
├── benchmark.airl        # Main entry point
├── ollama.airl           # LLM client (curl-based Ollama API + Claude CLI)
├── runner.airl           # Code execution: interpreted, compiled, and Python
├── report.airl           # Markdown report and findings generation
├── run.sh                # Bash wrapper
├── prompts/
│   ├── airl_system.md    # Condensed AIRL reference
│   ├── airl_llm_guide.md # Full AIRL LLM Guide (synced from AIRL repo)
│   ├── airl_header.md    # Token-efficient AIRL reference header
│   ├── airl_few_shot.md  # 6 worked examples
│   └── python_system.md  # Python generation prompt
├── tasks/                # 100 task specifications across 4 tiers (symlink to AIRL repo)
├── findings/             # Archived results from each benchmark run
├── results/              # Latest benchmark report
└── output/               # Generated code + compiled binaries (gitignored)
```

## Findings Summary

| Run | Model | AIRL Version | Context | AIRL Correct |
|-----|-------|-------------|---------|-------------|
| 002 | qwen3-coder (30B) | v0.4.0 | Condensed ref only | 11/25 (44%) |
| 004 | qwen3-coder (30B) | v0.4.0 | + LLM guide | 17/25 (68%) |
| 006 | qwen3-coder (30B) | v0.4.0 | + Guide + few-shot | 20/25 (80%) |
| 007 | Sonnet 4.6 | v0.4.0 | Condensed ref only | 24/25 (96%) |
| 008 | Sonnet 4.6 | v0.4.0 | + Guide + few-shot | 25/25 (100%) |
| 014 | qwen3-coder (30B) | v0.5.1 | v0.1.0 updated prompts | 22/25 (88%) |
| 015 | qwen3-coder (30B) | v0.5.1 | AIRL-Header.md | 21/25 (84%) |
| 022 | qwen3-coder (30B) | v0.6.0 | v0.2.0 full guide | 25/25 (100%) |

### Key Findings

- **Prompt engineering impact**: qwen3-coder went from 44% → 80% purely through better documentation (condensed ref → full guide + few-shot examples)
- **AIRL-Header.md efficiency**: 84% accuracy at 56% fewer context tokens — a viable cost/accuracy tradeoff
- **v0.6.0 milestone**: qwen3-coder achieved 100%, matching Sonnet 4.6's score
- **AIRL vs Python**: AIRL code is ~2.7x more token-efficient (126 vs 291 avg gen tokens) and executes ~25% faster in interpreted mode (738ms vs 981ms total)

## Dependencies

- AIRL compiler v0.6.0+ (built with `--features aot` for compiled mode)
- `curl` (for Ollama API calls — http-request is a stub in airl-rt v0.6.0)
- Ollama running locally with a coding model
- Python 3 (for executing generated Python code)

## Compatibility Notes

- **v0.6.0 breaking changes**: `shell-exec` now returns `Result[String, String]` (was `Result[Map, String]`); `http-request` is a stub in airl-rt — this tool uses `curl` via `shell-exec` instead; `json-stringify` doesn't escape newlines — this tool uses manual JSON escaping
- **Multi-binding let**: v0.6.0 strongly prefers `(let (a : T x) (b : T y) body)` over nested single-binding lets
- **Mixed-type lists**: Avoid `(map-from ["key" bool-val])` — use `map-set` to add non-string values
