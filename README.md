# AIRL Benchmark Tool

An AI code generation benchmarking utility **written in AIRL itself**. Sends coding tasks to a local Ollama LLM, generates code in both Python and AIRL, executes each, tracks token usage, compares output, times execution, and produces a findings report.

## Quick Start

```bash
./run.sh --model qwen3-coder --airl-bin /path/to/airl-driver
```

## What It Measures

For each of 25 coding tasks, the tool:

1. Sends the task to the LLM with AIRL and Python system prompts
2. Extracts generated code from the response
3. Runs the AIRL code via `airl run` and the Python code via `python3`
4. Records: correctness (exit code 0), execution time, token usage, code size
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

### Examples

```bash
# Ollama (default)
./run.sh --model qwen3-coder --airl-bin /path/to/airl-driver

# Claude via claude CLI
./run.sh --backend claude --model claude-sonnet-4-6 --airl-bin /path/to/airl-driver

# Custom task directory
./run.sh --model qwen3.5:35b --tasks ./my-tasks --output ./my-output
```

## Pre-flight Checks

The tool verifies before running:
- The AIRL binary exists and responds to `--version`
- Ollama is reachable at the configured host

## Project Structure

```
├── benchmark.airl        # Main entry point
├── ollama.airl           # Ollama API client (http-post, json-parse)
├── runner.airl           # Code execution with timing (shell-exec)
├── report.airl           # Markdown report and findings generation
├── prompts/
│   ├── airl_system.md    # Condensed AIRL reference (115 lines)
│   ├── airl_llm_guide.md # Full AIRL LLM Guide (1,250 lines)
│   ├── airl_few_shot.md  # 5 worked examples
│   └── python_system.md  # Python generation prompt
├── tasks/                # 25 task specifications (symlink to AIRL repo)
├── findings/             # Archived results from each benchmark run
├── results/              # Latest benchmark report
└── output/               # Generated code (gitignored)
```

## Findings Summary

| Run | Model | Context | AIRL Correct |
|-----|-------|---------|-------------|
| 002 | qwen3-coder (30B) | Condensed ref only | 11/25 (44%) |
| 004 | qwen3-coder (30B) | + LLM guide | 17/25 (68%) |
| 006 | qwen3-coder (30B) | + Guide + few-shot | 20/25 (80%) |
| 007 | Sonnet 4.6 | Condensed ref only | 24/25 (96%) |
| 008 | Sonnet 4.6 | + Guide + few-shot | 25/25 (100%) |

## Dependencies

- AIRL compiler (built from the AIRL repo with `--features jit`)
- Ollama running locally with a coding model
- Python 3 (for executing generated Python code)
- The AIRL runtime builtins: `http-post`, `json-parse`, `json-stringify`, `shell-exec`, `time-now`, `getenv`, `str`, `int-to-string`, `write-file`, `file-exists?`
