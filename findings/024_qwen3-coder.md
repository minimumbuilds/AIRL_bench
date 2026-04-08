# AIRL_bench Findings

**Model:** qwen3-coder
**Guide included:** Yes (airl_llm_guide.md)
**AIRL binary:** /mnt/b6d8b397-9fc1-42ac-a0da-8664a73d4ee9/AIRL/target/release/airl-driver
**Mode:** interpreted
**Tasks:** 5

## Results

| Task | AIRL | Python | C | AIRL tok | Py tok | C tok | AIRL ms | Py ms | C ms | AIRL chars | Py chars | C chars | Match |
|------|------|--------|---|----------|--------|--------|---------|-------|------|------------|----------|---------|-------|
| 01_safe_divide.md | FAIL | PASS | FAIL | 89 | 238 | 417 | 658 | 782 | 0 | 249 | 794 | 1162 | skip |
| 02_fibonacci.md | FAIL | FAIL | FAIL | 88 | 129 | 200 | 618 | 120 | 0 | 236 | 392 | 690 | skip |
| 03_list_processing.md | FAIL | FAIL | FAIL | 114 | 333 | 193 | 714 | 105 | 0 | 292 | 1225 | 615 | skip |
| 04_input_validation.md | FAIL | FAIL | FAIL | 91 | 164 | 207 | 644 | 108 | 0 | 268 | 646 | 812 | skip |
| 05_string_tokenizer.md | FAIL | PASS | FAIL | 80 | 251 | 792 | 9 | 359 | 0 | 265 | 963 | 3259 | skip |

## Summary

- **AIRL correct:** 0 / 5 (0%)
- **Python correct:** 2 / 5 (40%)
- **C correct:** 0 / 5 (0%)

### Token Usage

| | AIRL | Python | Ratio |
|---|------|--------|-------|
| Completion tokens (total) | 462 | 1115 | 0.41× |
| Completion tokens (avg/task) | 92 | 223 | |
| Prompt tokens (avg/task) | 21216 | 299 | |

*Prompt tokens include the LLM guide (~13k for AIRL, ~500 for Python) — not comparable.*

### Execution

- **Total AIRL execution time:** 2643 ms
- **Total Python execution time:** 1474 ms
- **Total C execution time:** 0 ms

## Summary

- **AIRL correct:** 0 / 5
- **Python correct:** 2 / 5
- **C correct:** 0 / 5
- **Output matches:** 0 / 5

### Token Usage

| | AIRL | Python | Ratio |
|---|------|--------|-------|
| Completion tokens (total) | 462 | 1115 | 0.41× |
| Completion tokens (avg/task) | 92 | 223 | |
| Prompt tokens (avg/task) | 21216 | 299 | |

*Prompt tokens include the LLM guide (~13k for AIRL, ~500 for Python) — not comparable.*

| C completion (total) | 1809 |

### Execution

- **Total AIRL execution time:** 2643 ms
- **Total Python execution time:** 1474 ms
- **Total C execution time:** 0 ms
