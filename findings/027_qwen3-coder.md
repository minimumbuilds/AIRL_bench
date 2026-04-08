# AIRL_bench Findings

**Model:** qwen3-coder
**Guide included:** Yes (airl_llm_guide.md)
**AIRL binary:** /mnt/b6d8b397-9fc1-42ac-a0da-8664a73d4ee9/AIRL/target/release/airl-driver
**Mode:** interpreted
**Tasks:** 6

## Results

| Task | AIRL | Python | C | AIRL tok | Py tok | C tok | AIRL ms | Py ms | C compile | C ms | AIRL chars | Py chars | C chars | Match |
|------|------|--------|---|----------|--------|--------|---------|-------|-----------|------|------------|----------|---------|-------|
| 01_safe_divide.md | PASS | PASS | FAIL | 89 | 217 | 422 | 638 | 39 | 0 | 245 | 731 | 1134 | yes |
| 02_fibonacci.md | PASS | PASS | FAIL | 87 | 129 | 189 | 689 | 38 | 0 | 219 | 384 | 637 | yes |
| 03_list_processing.md | PASS | PASS | FAIL | 114 | 333 | 193 | 687 | 40 | 0 | 284 | 1215 | 595 | yes |
| 04_input_validation.md | PASS | FAIL | FAIL | 91 | 220 | 197 | 616 | 150 | 0 | 256 | 791 | 748 | skip |
| 05_string_tokenizer.md | FAIL | PASS | FAIL | 81 | 251 | 806 | 4 | 59 | 0 | 266 | 963 | 3338 | skip |
| 06_absolute_value.md | PASS | PASS | FAIL | 63 | 172 | 157 | 7057 | 3566 | 19 | 0 | 160 | 628 | 499 | yes |

## Summary

- **AIRL correct:** 5 / 6 (83%)
- **Python correct:** 5 / 6 (83%)
- **C correct:** 0 / 6 (0%)

### Token Usage

| | AIRL | Python | Ratio |
|---|------|--------|-------|
| Completion tokens (total) | 525 | 1322 | 0.39× |
| Completion tokens (avg/task) | 87 | 220 | |
| Prompt tokens (avg/task) | 21212 | 295 | |

*Prompt tokens include the LLM guide (~13k for AIRL, ~500 for Python) — not comparable.*

### Execution

- **Total AIRL execution time:** 9691 ms
- **Total Python execution time:** 3892 ms
- **Total C execution time:** 0 ms

## Summary

- **AIRL correct:** 5 / 6
- **Python correct:** 5 / 6
- **C correct:** 0 / 6
- **Output matches:** 4 / 6

### Token Usage

| | AIRL | Python | Ratio |
|---|------|--------|-------|
| Completion tokens (total) | 525 | 1322 | 0.39× |
| Completion tokens (avg/task) | 87 | 220 | |
| Prompt tokens (avg/task) | 21212 | 295 | |

*Prompt tokens include the LLM guide (~13k for AIRL, ~500 for Python) — not comparable.*

| C completion (total) | 1964 |

### Execution

- **Total AIRL execution time:** 9691 ms
- **Total Python execution time:** 3892 ms
- **Total C execution time:** 0 ms
- **Total C compile time:** 19 ms
