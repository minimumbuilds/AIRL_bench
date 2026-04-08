# AIRL_bench Findings

**Model:** qwen3-coder
**Guide included:** Yes (airl_llm_guide.md)
**AIRL binary:** /mnt/b6d8b397-9fc1-42ac-a0da-8664a73d4ee9/AIRL/target/release/airl-driver
**Mode:** interpreted
**Tasks:** 1

## Results

| Task | AIRL | Python | C | AIRL tok | Py tok | C tok | AIRL ms | Py ms | C ms | AIRL chars | Py chars | C chars | Match |
|------|------|--------|---|----------|--------|--------|---------|-------|------|------------|----------|---------|-------|
| 102_error_collect.md | FAIL | PASS | FAIL | 263 | 274 | 853 | 20 | 40 | 0 | 896 | 1102 | 3175 | skip |

## Summary

- **AIRL correct:** 0 / 1 (0%)
- **Python correct:** 1 / 1 (100%)
- **C correct:** 0 / 1 (0%)

### Token Usage

| | AIRL | Python | Ratio |
|---|------|--------|-------|
| Completion tokens (total) | 263 | 274 | 0.95× |
| Completion tokens (avg/task) | 263 | 274 | |
| Prompt tokens (avg/task) | 21182 | 265 | |

*Prompt tokens include the LLM guide (~13k for AIRL, ~500 for Python) — not comparable.*

### Execution

- **Total AIRL execution time:** 20 ms
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
| Completion tokens (total) | 263 | 274 | 0.95× |
| Completion tokens (avg/task) | 263 | 274 | |
| Prompt tokens (avg/task) | 21182 | 265 | |

*Prompt tokens include the LLM guide (~13k for AIRL, ~500 for Python) — not comparable.*

| C completion (total) | 853 |

### Execution

- **Total AIRL execution time:** 20 ms
- **Total Python execution time:** 40 ms
- **Total C execution time:** 0 ms
