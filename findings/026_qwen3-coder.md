# AIRL_bench Findings

**Model:** qwen3-coder
**Guide included:** Yes (airl_llm_guide.md)
**AIRL binary:** /mnt/b6d8b397-9fc1-42ac-a0da-8664a73d4ee9/AIRL/target/release/airl-driver
**Mode:** interpreted
**Tasks:** 1

## Results

| Task | AIRL | Python | C | AIRL tok | Py tok | C tok | AIRL ms | Py ms | C ms | AIRL chars | Py chars | C chars | Match |
|------|------|--------|---|----------|--------|--------|---------|-------|------|------------|----------|---------|-------|
| 06_absolute_value.md | PASS | PASS | FAIL | 63 | 172 | 67 | 626 | 630 | 0 | 160 | 628 | 221 | yes |

## Summary

- **AIRL correct:** 1 / 1 (100%)
- **Python correct:** 1 / 1 (100%)
- **C correct:** 0 / 1 (0%)

### Token Usage

| | AIRL | Python | Ratio |
|---|------|--------|-------|
| Completion tokens (total) | 63 | 172 | 0.36× |
| Completion tokens (avg/task) | 63 | 172 | |
| Prompt tokens (avg/task) | 21193 | 276 | |

*Prompt tokens include the LLM guide (~13k for AIRL, ~500 for Python) — not comparable.*

### Execution

- **Total AIRL execution time:** 626 ms
- **Total Python execution time:** 630 ms
- **Total C execution time:** 0 ms

## Summary

- **AIRL correct:** 1 / 1
- **Python correct:** 1 / 1
- **C correct:** 0 / 1
- **Output matches:** 1 / 1

### Token Usage

| | AIRL | Python | Ratio |
|---|------|--------|-------|
| Completion tokens (total) | 63 | 172 | 0.36× |
| Completion tokens (avg/task) | 63 | 172 | |
| Prompt tokens (avg/task) | 21193 | 276 | |

*Prompt tokens include the LLM guide (~13k for AIRL, ~500 for Python) — not comparable.*

| C completion (total) | 67 |

### Execution

- **Total AIRL execution time:** 626 ms
- **Total Python execution time:** 630 ms
- **Total C execution time:** 0 ms
