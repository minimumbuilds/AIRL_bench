# AIRL_bench Findings

**Model:** qwen3-coder
**Guide included:** Yes (airl_llm_guide.md)
**AIRL binary:** /mnt/b6d8b397-9fc1-42ac-a0da-8664a73d4ee9/AIRL/target/release/airl-driver
**Tasks:** 25

## Results

| Task | AIRL | Python | AIRL gen tok | Py gen tok | AIRL ms | Py ms | AIRL chars | Py chars | Output Match |
|------|------|--------|-------------|------------|---------|-------|------------|----------|-------------|
| 01_safe_divide.md | PASS | PASS | 89 | 231 | 12 | 40 | 245 | 768 | no |
| 02_fibonacci.md | PASS | PASS | 100 | 129 | 20 | 39 | 252 | 384 | yes |
| 03_list_processing.md | PASS | PASS | 114 | 376 | 12 | 39 | 284 | 1374 | yes |
| 04_input_validation.md | PASS | PASS | 90 | 222 | 11 | 41 | 254 | 781 | no |
| 05_string_tokenizer.md | FAIL | PASS | 74 | 288 | 11 | 39 | 227 | 1137 | skip |
| 06_absolute_value.md | PASS | PASS | 63 | 172 | 18 | 39 | 160 | 628 | yes |
| 07_gcd.md | PASS | PASS | 85 | 269 | 19 | 39 | 181 | 904 | yes |
| 08_power.md | PASS | PASS | 89 | 431 | 19 | 41 | 215 | 1469 | yes |
| 09_reverse_list.md | PASS | PASS | 72 | 382 | 12 | 38 | 201 | 1403 | no |
| 10_find_max.md | FAIL | PASS | 96 | 241 | 12 | 39 | 241 | 1021 | skip |
| 11_remove_duplicates.md | PASS | PASS | 97 | 330 | 12 | 38 | 314 | 1309 | no |
| 12_zip_lists.md | PASS | PASS | 124 | 290 | 12 | 39 | 313 | 1096 | no |
| 13_palindrome_check.md | PASS | PASS | 66 | 244 | 11 | 40 | 212 | 1001 | no |
| 14_count_vowels.md | PASS | PASS | 154 | 212 | 11 | 39 | 450 | 766 | yes |
| 15_caesar_cipher.md | PASS | PASS | 208 | 387 | 12 | 38 | 811 | 1586 | no |
| 16_safe_sqrt.md | PASS | PASS | 182 | 393 | 12 | 39 | 776 | 1527 | no |
| 17_parse_int.md | PASS | PASS | 90 | 371 | 12 | 39 | 269 | 1478 | no |
| 18_bounded_access.md | PASS | PASS | 104 | 369 | 12 | 41 | 289 | 1178 | no |
| 19_flatten_list.md | FAIL | PASS | 68 | 241 | 3 | 39 | 199 | 959 | skip |
| 20_group_by_parity.md | PASS | PASS | 108 | 388 | 11 | 38 | 284 | 1574 | no |
| 21_running_sum.md | PASS | PASS | 116 | 211 | 12 | 40 | 390 | 894 | no |
| 22_word_frequency.md | PASS | PASS | 199 | 106 | 13 | 38 | 743 | 461 | no |
| 23_matrix_transpose.md | PASS | PASS | 109 | 309 | 11 | 39 | 307 | 1256 | no |
| 24_merge_sorted.md | PASS | PASS | 166 | 477 | 12 | 39 | 461 | 1610 | no |
| 25_pipeline.md | PASS | PASS | 105 | 197 | 12 | 41 | 287 | 787 | yes |

## Summary

- **AIRL correct:** 22 / 25 (88%)
- **Python correct:** 25 / 25 (100%)
- **Output matches:** 7 / 25

### Token Usage

| | AIRL | Python |
|---|------|--------|
| Context (avg per task) | 17303 | 294 |
| Generation (total) | 2768 | 7266 |
| Prompt (total) | 432589 | 7364 |

### Execution

- **Total AIRL execution time:** 314 ms
- **Total Python execution time:** 981 ms
