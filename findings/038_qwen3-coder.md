# AIRL_bench Findings

**Model:** qwen3-coder
**Guide included:** Yes (airl_llm_guide.md)
**AIRL binary:** /mnt/b6d8b397-9fc1-42ac-a0da-8664a73d4ee9/AIRL/target/release/airl-driver
**Mode:** interpreted
**Tasks:** 1

## Results

| Task | AIRL | Python | C | AIRL tok | Py tok | C tok | AIRL ms | Py ms | C ms | AIRL chars | Py chars | C chars | Match |
|------|------|--------|---|----------|--------|--------|---------|-------|------|------------|----------|---------|-------|
| 14_count_vowels.md | PASS | PASS | FAIL | 154 | 210 | 389 | 834 | 40 | 0 | 449 | 758 | 1287 | yes |

## Summary

- **AIRL correct:** 1 / 1 (100%)
- **Python correct:** 1 / 1 (100%)
- **C correct:** 0 / 1 (0%)

### Token Usage

| | AIRL | Python | Ratio |
|---|------|--------|-------|
| Completion tokens (total) | 154 | 210 | 0.73× |
| Completion tokens (avg/task) | 154 | 210 | |
| Prompt tokens (avg/task) | 21189 | 272 | |

*Prompt tokens include the LLM guide (~13k for AIRL, ~500 for Python) — not comparable.*

### Execution

- **Total AIRL execution time:** 834 ms
- **Total Python execution time:** 40 ms
- **Total C execution time:** 0 ms

## Summary

- **AIRL correct:** 1 / 1
- **Python correct:** 1 / 1
- **C correct:** 0 / 1
- **Output matches:** 1 / 1

### Token Usage

| | AIRL | Python | Ratio |
|---|------|--------|-------|
| Completion tokens (total) | 154 | 210 | 0.73× |
| Completion tokens (avg/task) | 154 | 210 | |
| Prompt tokens (avg/task) | 21189 | 272 | |

*Prompt tokens include the LLM guide (~13k for AIRL, ~500 for Python) — not comparable.*

| C completion (total) | 389 |

### Execution

- **Total AIRL execution time:** 834 ms
- **Total Python execution time:** 40 ms
- **Total C execution time:** 0 ms
