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

| Task | AIRL | Python | AIRL Tokens | Py Tokens | AIRL ms | Py ms | AIRL chars | Py chars |
|------|------|--------|-------------|-----------|---------|-------|------------|----------|
| 01_safe_divide.md | PASS | PASS | 11139 | 527 | 23 | 40 | 348 | 795 |
| 02_fibonacci.md | PASS | PASS | 11084 | 431 | 30 | 39 | 228 | 438 |
| 03_list_processing.md | PASS | PASS | 11191 | 671 | 23 | 40 | 415 | 1287 |
| 04_input_validation.md | PASS | PASS | 11142 | 449 | 25 | 39 | 366 | 598 |
| 05_string_tokenizer.md | FAIL | PASS | 11081 | 513 | 23 | 38 | 351 | 963 |
| 06_absolute_value.md | PASS | PASS | 11055 | 448 | 35 | 38 | 160 | 628 |
| 07_gcd.md | PASS | PASS | 11066 | 528 | 32 | 40 | 185 | 813 |
| 08_power.md | FAIL | PASS | 11132 | 523 | 21 | 39 | 463 | 906 |
| 09_reverse_list.md | PASS | FAIL | 11074 | 632 | 23 | 97 | 205 | 1337 |
| 10_find_max.md | FAIL | PASS | 11140 | 590 | 23 | 40 | 393 | 1028 |
| 11_remove_duplicates.md | FAIL | PASS | 11203 | 543 | 24 | 40 | 671 | 1064 |
| 12_zip_lists.md | FAIL | PASS | 11294 | 702 | 2 | 42 | 726 | 1115 |
| 13_palindrome_check.md | FAIL | PASS | 11145 | 519 | 2 | 40 | 537 | 1004 |
| 14_count_vowels.md | FAIL | PASS | 11149 | 552 | 18 | 40 | 587 | 1073 |
| 15_caesar_cipher.md | FAIL | PASS | 11259 | 676 | 2 | 39 | 798 | 1614 |
| 16_safe_sqrt.md | FAIL | PASS | 11337 | 850 | 36 | 40 | 1032 | 1966 |
| 17_parse_int.md | FAIL | PASS | 11275 | 644 | 3 | 39 | 1034 | 1370 |
| 18_bounded_access.md | PASS | PASS | 11174 | 626 | 25 | 41 | 399 | 1091 |
| 19_flatten_list.md | PASS | PASS | 11089 | 577 | 22 | 41 | 213 | 1012 |
| 20_group_by_parity.md | PASS | PASS | 11145 | 708 | 23 | 40 | 295 | 1577 |
| 21_running_sum.md | FAIL | PASS | 11117 | 606 | 2 | 39 | 344 | 1184 |
| 22_word_frequency.md | FAIL | PASS | 11158 | 473 | 2 | 41 | 643 | 889 |
| 23_matrix_transpose.md | FAIL | PASS | 0 | 647 | 0 | 43 | 0 | 1393 |
| 24_merge_sorted.md | FAIL | PASS | 11290 | 819 | 13 | 41 | 783 | 1705 |
| 25_pipeline.md | PASS | PASS | 11182 | 522 | 23 | 41 | 414 | 785 |

## Summary

- **AIRL correct:** 11 / 25 (44%)
- **Python correct:** 24 / 25 (96%)
- **Total AIRL tokens:** 267921
- **Total Python tokens:** 14776
- **Total AIRL execution time:** 455 ms
- **Total Python execution time:** 1057 ms
