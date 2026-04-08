# AIRL_bench Findings

**Model:** qwen3-coder
**Guide included:** Yes (airl_llm_guide.md)
**AIRL binary:** /mnt/b6d8b397-9fc1-42ac-a0da-8664a73d4ee9/AIRL/target/release/airl-driver
**Mode:** interpreted
**Tasks:** 1

## Results

| Task | AIRL | Python | C | AIRL tok | Py tok | C tok | AIRL ms | Py ms | C ms | AIRL chars | Py chars | C chars | Match |
|------|------|--------|---|----------|--------|--------|---------|-------|------|------------|----------|---------|-------|
| 11_remove_duplicates.md | FAIL | PASS | FAIL | 97 | 227 | 504 | 4 | 40 | 0 | 315 | 1030 | 1815 | skip |

## Summary

- **AIRL correct:** 0 / 1 (0%)
- **Python correct:** 1 / 1 (100%)
- **C correct:** 0 / 1 (0%)

### Token Usage

| | AIRL | Python | Ratio |
|---|------|--------|-------|
| Completion tokens (total) | 97 | 227 | 0.42× |
| Completion tokens (avg/task) | 97 | 227 | |
| Prompt tokens (avg/task) | 21222 | 305 | |

*Prompt tokens include the LLM guide (~13k for AIRL, ~500 for Python) — not comparable.*

### Execution

- **Total AIRL execution time:** 4 ms
- **Total Python execution time:** 40 ms
- **Total C execution time:** 0 ms

## Summary

- **AIRL correct:** 0 / 1
- **Python correct:** 1 / 1
- **C correct:** 0 / 1
- **Output matches:** 0 / 1

### Token Usage

| | AIRL | Python | Ratio |
|---|------|--------|-------|
| Completion tokens (total) | 97 | 227 | 0.42× |
| Completion tokens (avg/task) | 97 | 227 | |
| Prompt tokens (avg/task) | 21222 | 305 | |

*Prompt tokens include the LLM guide (~13k for AIRL, ~500 for Python) — not comparable.*

| C completion (total) | 504 |

### Execution

- **Total AIRL execution time:** 4 ms
- **Total Python execution time:** 40 ms
- **Total C execution time:** 0 ms
