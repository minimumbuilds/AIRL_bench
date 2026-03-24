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
| 01_safe_divide.md | PASS | PASS | 12958 | 519 | 23 | 40 | 348 | 743 |
| 02_fibonacci.md | PASS | PASS | 12899 | 411 | 29 | 39 | 195 | 384 |
| 03_list_processing.md | PASS | PASS | 12976 | 561 | 23 | 39 | 321 | 972 |
| 04_input_validation.md | PASS | PASS | 12959 | 463 | 24 | 39 | 364 | 646 |
| 05_string_tokenizer.md | FAIL | PASS | 12889 | 478 | 23 | 40 | 304 | 917 |
| 06_absolute_value.md | PASS | PASS | 12874 | 448 | 30 | 40 | 160 | 628 |
| 07_gcd.md | PASS | PASS | 12885 | 544 | 30 | 39 | 185 | 886 |
| 08_power.md | PASS | PASS | 12900 | 622 | 31 | 40 | 216 | 1216 |
| 09_reverse_list.md | PASS | FAIL | 12893 | 607 | 23 | 95 | 201 | 1245 |
| 10_find_max.md | PASS | PASS | 12938 | 587 | 23 | 41 | 298 | 1021 |
| 11_remove_duplicates.md | FAIL | PASS | 13026 | 532 | 13 | 40 | 710 | 1030 |
| 12_zip_lists.md | PASS | PASS | 12992 | 624 | 23 | 39 | 278 | 1060 |
| 13_palindrome_check.md | PASS | PASS | 12873 | 519 | 22 | 39 | 212 | 1004 |
| 14_count_vowels.md | FAIL | PASS | 12956 | 552 | 456 | 41 | 478 | 1073 |
| 15_caesar_cipher.md | FAIL | PASS | 13262 | 675 | 2 | 40 | 926 | 1614 |
| 16_safe_sqrt.md | FAIL | PASS | 13272 | 721 | 3 | 40 | 1462 | 1559 |
| 17_parse_int.md | FAIL | PASS | 13273 | 626 | 3 | 39 | 2140 | 1317 |
| 18_bounded_access.md | PASS | PASS | 12999 | 687 | 23 | 40 | 437 | 1178 |
| 19_flatten_list.md | PASS | PASS | 12901 | 593 | 23 | 40 | 197 | 1067 |
| 20_group_by_parity.md | PASS | PASS | 12987 | 714 | 23 | 42 | 377 | 1605 |
| 21_running_sum.md | PASS | PASS | 12940 | 607 | 24 | 40 | 382 | 1189 |
| 22_word_frequency.md | FAIL | PASS | 13018 | 477 | 454 | 40 | 816 | 907 |
| 23_matrix_transpose.md | FAIL | PASS | 12971 | 648 | 2 | 40 | 603 | 1386 |
| 24_merge_sorted.md | PASS | PASS | 13022 | 755 | 23 | 40 | 473 | 1491 |
| 25_pipeline.md | PASS | PASS | 12977 | 514 | 23 | 40 | 334 | 766 |

## Summary

- **AIRL correct:** 17 / 25 (68%)
- **Python correct:** 24 / 25 (96%)
- **Total AIRL tokens:** 324640
- **Total Python tokens:** 14484
- **Total AIRL execution time:** 1376 ms
- **Total Python execution time:** 1052 ms
