# AIRL_bench Findings

**Model:** qwen3-coder
**Guide included:** Yes (airl_llm_guide.md)
**AIRL binary:** /mnt/b6d8b397-9fc1-42ac-a0da-8664a73d4ee9/AIRL/target/release/airl-driver
**Mode:** interpreted
**Tasks:** 1

## Results

| Task | AIRL | Python | C | AIRL tok | Py tok | C tok | AIRL ms | Py ms | C ms | AIRL chars | Py chars | C chars | Match |
|------|------|--------|---|----------|--------|--------|---------|-------|------|------------|----------|---------|-------|
| 12_zip_lists.md | PASS | PASS | FAIL | 124 | 354 | 385 | 697 | 41 | 0 | 313 | 1115 | 1226 | no |

## Summary

- **AIRL correct:** 1 / 1 (100%)
- **Python correct:** 1 / 1 (100%)
- **C correct:** 0 / 1 (0%)

### Token Usage

| | AIRL | Python | Ratio |
|---|------|--------|-------|
| Completion tokens (total) | 124 | 354 | 0.35× |
| Completion tokens (avg/task) | 124 | 354 | |
| Prompt tokens (avg/task) | 21265 | 348 | |

*Prompt tokens include the LLM guide (~13k for AIRL, ~500 for Python) — not comparable.*

### Execution

- **Total AIRL execution time:** 697 ms
- **Total Python execution time:** 41 ms
- **Total C execution time:** 0 ms

## Summary

- **AIRL correct:** 1 / 1
- **Python correct:** 1 / 1
- **C correct:** 0 / 1
- **Output matches:** 0 / 1

### Token Usage

| | AIRL | Python | Ratio |
|---|------|--------|-------|
| Completion tokens (total) | 124 | 354 | 0.35× |
| Completion tokens (avg/task) | 124 | 354 | |
| Prompt tokens (avg/task) | 21265 | 348 | |

*Prompt tokens include the LLM guide (~13k for AIRL, ~500 for Python) — not comparable.*

| C completion (total) | 385 |

### Execution

- **Total AIRL execution time:** 697 ms
- **Total Python execution time:** 41 ms
- **Total C execution time:** 0 ms
