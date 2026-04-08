# AIRL_bench Findings

**Model:** qwen3-coder
**Guide included:** Yes (airl_llm_guide.md)
**AIRL binary:** /mnt/b6d8b397-9fc1-42ac-a0da-8664a73d4ee9/AIRL/target/release/airl-driver
**Mode:** interpreted
**Tasks:** 5

## Results

| Task | AIRL | Python | C | AIRL tok | Py tok | C tok | AIRL ms | Py ms | C ms | AIRL chars | Py chars | C chars | Match |
|------|------|--------|---|----------|--------|--------|---------|-------|------|------------|----------|---------|-------|
| 01_safe_divide.md | PASS | PASS | FAIL | 89 | 219 | 392 | 656 | 41 | 0 | 245 | 746 | 1262 | yes |
| 02_fibonacci.md | PASS | PASS | FAIL | 88 | 129 | 200 | 722 | 41 | 0 | 220 | 384 | 662 | yes |
| 03_list_processing.md | PASS | PASS | FAIL | 114 | 259 | 172 | 655 | 43 | 0 | 284 | 1044 | 514 | yes |
| 04_input_validation.md | PASS | PASS | FAIL | 91 | 165 | 195 | 680 | 42 | 0 | 256 | 621 | 739 | no |
| 05_string_tokenizer.md | FAIL | PASS | FAIL | 80 | 288 | 822 | 818 | 165 | 0 | 261 | 1137 | 3338 | skip |

## Summary

- **AIRL correct:** 4 / 5 (80%)
- **Python correct:** 5 / 5 (100%)
- **C correct:** 0 / 5 (0%)

### Token Usage

| | AIRL | Python | Ratio |
|---|------|--------|-------|
| Completion tokens (total) | 462 | 1060 | 0.43× |
| Completion tokens (avg/task) | 92 | 212 | |
| Prompt tokens (avg/task) | 21216 | 299 | |

*Prompt tokens include the LLM guide (~13k for AIRL, ~500 for Python) — not comparable.*

### Execution

- **Total AIRL execution time:** 3531 ms
- **Total Python execution time:** 332 ms
- **Total C execution time:** 0 ms

## Summary

- **AIRL correct:** 4 / 5
- **Python correct:** 5 / 5
- **C correct:** 0 / 5
- **Output matches:** 3 / 5

### Token Usage

| | AIRL | Python | Ratio |
|---|------|--------|-------|
| Completion tokens (total) | 462 | 1060 | 0.43× |
| Completion tokens (avg/task) | 92 | 212 | |
| Prompt tokens (avg/task) | 21216 | 299 | |

*Prompt tokens include the LLM guide (~13k for AIRL, ~500 for Python) — not comparable.*

| C completion (total) | 1781 |

### Execution

- **Total AIRL execution time:** 3531 ms
- **Total Python execution time:** 332 ms
- **Total C execution time:** 0 ms
