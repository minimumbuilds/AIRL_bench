# AIRL_bench Findings

**Model:** qwen3-coder
**Guide included:** Yes (airl_llm_guide.md)
**AIRL binary:** /mnt/b6d8b397-9fc1-42ac-a0da-8664a73d4ee9/AIRL/target/release/airl-driver
**Mode:** interpreted
**Tasks:** 25

## Results

| Task | AIRL | Python | AIRL gen tok | Py gen tok | AIRL ms | Py ms | AIRL chars | Py chars | Output Match |
|------|------|--------|-------------|------------|---------|-------|------------|----------|-------------|
| 01_safe_divide.md | PASS | FAIL | 89 | 0 | 29 | 0 | 245 | 0 | skip |
| 02_fibonacci.md | PASS | FAIL | 100 | 0 | 35 | 0 | 252 | 0 | skip |
| 03_list_processing.md | PASS | FAIL | 114 | 0 | 28 | 0 | 284 | 0 | skip |
| 04_input_validation.md | PASS | FAIL | 90 | 0 | 29 | 0 | 254 | 0 | skip |
| 05_string_tokenizer.md | PASS | FAIL | 79 | 0 | 3 | 0 | 257 | 0 | skip |
| 06_absolute_value.md | PASS | FAIL | 64 | 0 | 38 | 0 | 162 | 0 | skip |
| 07_gcd.md | PASS | FAIL | 85 | 0 | 38 | 0 | 181 | 0 | skip |
| 08_power.md | PASS | FAIL | 89 | 0 | 37 | 0 | 215 | 0 | skip |
| 09_reverse_list.md | PASS | FAIL | 72 | 0 | 30 | 0 | 201 | 0 | skip |
| 10_find_max.md | PASS | FAIL | 115 | 0 | 32 | 0 | 290 | 0 | skip |
| 11_remove_duplicates.md | PASS | FAIL | 129 | 0 | 30 | 0 | 437 | 0 | skip |
| 12_zip_lists.md | PASS | FAIL | 124 | 0 | 29 | 0 | 313 | 0 | skip |
| 13_palindrome_check.md | PASS | FAIL | 66 | 0 | 28 | 0 | 212 | 0 | skip |
| 14_count_vowels.md | PASS | FAIL | 141 | 0 | 29 | 0 | 385 | 0 | skip |
| 15_caesar_cipher.md | PASS | FAIL | 208 | 0 | 33 | 0 | 791 | 0 | skip |
| 16_safe_sqrt.md | PASS | FAIL | 314 | 0 | 45 | 0 | 861 | 0 | skip |
| 17_parse_int.md | PASS | FAIL | 318 | 0 | 29 | 0 | 1213 | 0 | skip |
| 18_bounded_access.md | PASS | FAIL | 104 | 0 | 28 | 0 | 289 | 0 | skip |
| 19_flatten_list.md | PASS | FAIL | 69 | 0 | 29 | 0 | 209 | 0 | skip |
| 20_group_by_parity.md | PASS | FAIL | 108 | 0 | 30 | 0 | 284 | 0 | skip |
| 21_running_sum.md | PASS | FAIL | 117 | 0 | 27 | 0 | 401 | 0 | skip |
| 22_word_frequency.md | PASS | FAIL | 199 | 0 | 31 | 0 | 743 | 0 | skip |
| 23_matrix_transpose.md | PASS | FAIL | 106 | 0 | 14 | 0 | 302 | 0 | skip |
| 24_merge_sorted.md | PASS | FAIL | 148 | 0 | 28 | 0 | 407 | 0 | skip |
| 25_pipeline.md | PASS | FAIL | 111 | 0 | 29 | 0 | 293 | 0 | skip |

## Summary

- **AIRL correct:** 25 / 25 (100%)
- **Python correct:** 0 / 25 (0%)
- **Output matches:** 0 / 25

### Token Usage

| | AIRL | Python |
|---|------|--------|
| Context (avg per task) | 18506 | 0 |
| Generation (total) | 3159 | 0 |
| Prompt (total) | 462664 | 0 |

### Execution

- **Total AIRL execution time:** 738 ms
- **Total Python execution time:** 0 ms
