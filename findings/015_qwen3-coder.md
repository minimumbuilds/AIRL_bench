# AIRL_bench Findings

**Model:** qwen3-coder
**Guide included:** Yes (airl_llm_guide.md)
**AIRL binary:** /mnt/b6d8b397-9fc1-42ac-a0da-8664a73d4ee9/AIRL/target/release/airl-driver
**Tasks:** 25

## Results

| Task | AIRL | Python | AIRL gen tok | Py gen tok | AIRL ms | Py ms | AIRL chars | Py chars | Output Match |
|------|------|--------|-------------|------------|---------|-------|------------|----------|-------------|
| 01_safe_divide.md | PASS | FAIL | 101 | 0 | 11 | 0 | 260 | 0 | skip |
| 02_fibonacci.md | PASS | FAIL | 102 | 0 | 20 | 0 | 251 | 0 | skip |
| 03_list_processing.md | PASS | FAIL | 114 | 0 | 13 | 0 | 284 | 0 | skip |
| 04_input_validation.md | PASS | FAIL | 104 | 0 | 11 | 0 | 283 | 0 | skip |
| 05_string_tokenizer.md | FAIL | FAIL | 81 | 0 | 3 | 0 | 258 | 0 | skip |
| 06_absolute_value.md | PASS | FAIL | 67 | 0 | 18 | 0 | 176 | 0 | skip |
| 07_gcd.md | PASS | FAIL | 108 | 0 | 19 | 0 | 256 | 0 | skip |
| 08_power.md | PASS | FAIL | 138 | 0 | 18 | 0 | 404 | 0 | skip |
| 09_reverse_list.md | PASS | FAIL | 74 | 0 | 11 | 0 | 205 | 0 | skip |
| 10_find_max.md | PASS | FAIL | 121 | 0 | 12 | 0 | 306 | 0 | skip |
| 11_remove_duplicates.md | PASS | FAIL | 97 | 0 | 12 | 0 | 314 | 0 | skip |
| 12_zip_lists.md | PASS | FAIL | 126 | 0 | 12 | 0 | 321 | 0 | skip |
| 13_palindrome_check.md | PASS | FAIL | 73 | 0 | 11 | 0 | 242 | 0 | skip |
| 14_count_vowels.md | FAIL | FAIL | 154 | 0 | 3 | 0 | 450 | 0 | skip |
| 15_caesar_cipher.md | PASS | FAIL | 204 | 0 | 12 | 0 | 781 | 0 | skip |
| 16_safe_sqrt.md | FAIL | FAIL | 153 | 0 | 3 | 0 | 468 | 0 | skip |
| 17_parse_int.md | PASS | FAIL | 94 | 0 | 12 | 0 | 272 | 0 | skip |
| 18_bounded_access.md | PASS | FAIL | 104 | 0 | 11 | 0 | 289 | 0 | skip |
| 19_flatten_list.md | PASS | FAIL | 70 | 0 | 12 | 0 | 199 | 0 | skip |
| 20_group_by_parity.md | PASS | FAIL | 108 | 0 | 12 | 0 | 284 | 0 | skip |
| 21_running_sum.md | PASS | FAIL | 110 | 0 | 11 | 0 | 335 | 0 | skip |
| 22_word_frequency.md | PASS | FAIL | 199 | 0 | 12 | 0 | 743 | 0 | skip |
| 23_matrix_transpose.md | FAIL | FAIL | 120 | 0 | 2 | 0 | 386 | 0 | skip |
| 24_merge_sorted.md | PASS | FAIL | 150 | 0 | 12 | 0 | 421 | 0 | skip |
| 25_pipeline.md | PASS | FAIL | 95 | 0 | 12 | 0 | 255 | 0 | skip |

## Summary

- **AIRL correct:** 21 / 25 (84%)
- **Python correct:** 0 / 25 (0%)
- **Output matches:** 0 / 25

### Token Usage

| | AIRL | Python |
|---|------|--------|
| Context (avg per task) | 7621 | 0 |
| Generation (total) | 2867 | 0 |
| Prompt (total) | 190539 | 0 |

### Execution

- **Total AIRL execution time:** 285 ms
- **Total Python execution time:** 0 ms
