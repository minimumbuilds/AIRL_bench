# AIRL_bench Findings

**Model:** qwen3-coder
**Guide included:** Yes (airl_llm_guide.md)
**AIRL binary:** /mnt/b6d8b397-9fc1-42ac-a0da-8664a73d4ee9/AIRL/target/release/airl-driver
**Mode:** interpreted
**Tasks:** 1

## Results

| Task | AIRL | Python | C | AIRL tok | Py tok | C tok | AIRL ms | Py ms | C ms | AIRL chars | Py chars | C chars | Match |
|------|------|--------|---|----------|--------|--------|---------|-------|------|------------|----------|---------|-------|
| 08_power.md | PASS | PASS | FAIL | 89 | 263 | 319 | 671 | 47 | 0 | 215 | 925 | 1057 | yes |

## Summary

- **AIRL correct:** 1 / 1 (100%)
- **Python correct:** 1 / 1 (100%)
- **C correct:** 0 / 1 (0%)

### Token Usage

| | AIRL | Python | Ratio |
|---|------|--------|-------|
| Completion tokens (total) | 89 | 263 | 0.33× |
| Completion tokens (avg/task) | 89 | 263 | |
| Prompt tokens (avg/task) | 21189 | 272 | |

*Prompt tokens include the LLM guide (~13k for AIRL, ~500 for Python) — not comparable.*

### Execution

- **Total AIRL execution time:** 671 ms
- **Total Python execution time:** 47 ms
- **Total C execution time:** 0 ms

## Summary

- **AIRL correct:** 1 / 1
- **Python correct:** 1 / 1
- **C correct:** 0 / 1
- **Output matches:** 1 / 1

### Token Usage

| | AIRL | Python | Ratio |
|---|------|--------|-------|
| Completion tokens (total) | 89 | 263 | 0.33× |
| Completion tokens (avg/task) | 89 | 263 | |
| Prompt tokens (avg/task) | 21189 | 272 | |

*Prompt tokens include the LLM guide (~13k for AIRL, ~500 for Python) — not comparable.*

| C completion (total) | 319 |

### Execution

- **Total AIRL execution time:** 671 ms
- **Total Python execution time:** 47 ms
- **Total C execution time:** 0 ms
