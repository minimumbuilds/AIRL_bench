# Benchmark Findings

**Model:** qwen3-coder
**Guide included:** Yes (airl_llm_guide.md)
**AIRL binary:** /home/jbarnes/repos/AIRL/target/release/airl-driver
**Tasks:** 25

## Parameters

- Model: qwen3-coder
- LLM Guide: included
- Python context: standard generation prompt

## Results

| Task | AIRL | Python | AIRL Tokens | Py Tokens | AIRL ms | Py ms | AIRL chars | Py chars | Output Match |
|------|------|--------|-------------|-----------|---------|-------|------------|----------|-------------|
| 01_safe_divide.md | PASS | PASS | 14375 | 504 | 24 | 39 | 330 | 792 | no |
| 02_fibonacci.md | PASS | PASS | 14328 | 411 | 29 | 39 | 220 | 384 | yes |
| 03_list_processing.md | PASS | PASS | 14387 | 556 | 22 | 38 | 284 | 939 | yes |
| 04_input_validation.md | PASS | PASS | 14342 | 464 | 22 | 40 | 254 | 648 | no |
| 05_string_tokenizer.md | FAIL | PASS | 14297 | 507 | 23 | 39 | 245 | 949 | skip |
| 06_absolute_value.md | PASS | PASS | 14297 | 448 | 34 | 40 | 160 | 628 | yes |
| 07_gcd.md | PASS | PASS | 14333 | 538 | 30 | 40 | 256 | 894 | yes |
| 08_power.md | PASS | PASS | 14319 | 552 | 29 | 39 | 215 | 993 | yes |
| 09_reverse_list.md | PASS | FAIL | 14316 | 609 | 22 | 92 | 201 | 1265 | no |
| 10_find_max.md | FAIL | PASS | 14356 | 601 | 24 | 39 | 259 | 1161 | skip |
| 11_remove_duplicates.md | PASS | PASS | 14365 | 545 | 23 | 39 | 318 | 1076 | no |
| 12_zip_lists.md | PASS | PASS | 14430 | 724 | 23 | 38 | 313 | 1194 | no |
| 13_palindrome_check.md | FAIL | PASS | 14309 | 519 | 22 | 39 | 247 | 1004 | skip |
| 14_count_vowels.md | FAIL | PASS | 14366 | 552 | 449 | 40 | 383 | 1073 | skip |
| 15_caesar_cipher.md | FAIL | PASS | 14453 | 675 | 2 | 40 | 738 | 1614 | skip |
| 16_safe_sqrt.md | FAIL | PASS | 14471 | 973 | 456 | 39 | 667 | 2440 | skip |
| 17_parse_int.md | PASS | PASS | 14663 | 658 | 24 | 39 | 1576 | 1470 | no |
| 18_bounded_access.md | PASS | PASS | 14385 | 633 | 23 | 40 | 306 | 990 | no |
| 19_flatten_list.md | PASS | PASS | 14326 | 593 | 23 | 39 | 209 | 1067 | no |
| 20_group_by_parity.md | PASS | PASS | 14389 | 709 | 22 | 39 | 289 | 1580 | no |
| 21_running_sum.md | PASS | PASS | 14365 | 601 | 22 | 39 | 401 | 1153 | no |
| 22_word_frequency.md | PASS | PASS | 14441 | 383 | 23 | 40 | 788 | 461 | no |
| 23_matrix_transpose.md | PASS | PASS | 14359 | 663 | 23 | 39 | 327 | 1447 | no |
| 24_merge_sorted.md | PASS | PASS | 14429 | 752 | 23 | 38 | 407 | 1465 | no |
| 25_pipeline.md | PASS | PASS | 14387 | 507 | 23 | 39 | 287 | 727 | yes |

## Summary

- **AIRL correct:** 19 / 25 (76%)
- **Python correct:** 24 / 25 (96%)
- **Output matches:** 6 / 25
- **Total AIRL tokens:** 359488
- **Total Python tokens:** 14677
- **Total AIRL execution time:** 1440 ms
- **Total Python execution time:** 1032 ms
