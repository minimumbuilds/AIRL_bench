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
| 01_safe_divide.md | PASS | PASS | 13258 | 473 | 23 | 40 | 348 | 625 |
| 02_fibonacci.md | PASS | PASS | 13203 | 411 | 31 | 40 | 228 | 384 |
| 03_list_processing.md | PASS | PASS | 13276 | 676 | 23 | 39 | 321 | 1298 |
| 04_input_validation.md | PASS | PASS | 13259 | 463 | 23 | 40 | 364 | 646 |
| 05_string_tokenizer.md | FAIL | PASS | 13197 | 512 | 25 | 39 | 341 | 962 |
| 06_absolute_value.md | PASS | PASS | 13174 | 448 | 30 | 41 | 160 | 628 |
| 07_gcd.md | PASS | PASS | 13185 | 542 | 31 | 39 | 185 | 889 |
| 08_power.md | FAIL | PASS | 13195 | 511 | 8546 | 38 | 205 | 880 |
| 09_reverse_list.md | PASS | FAIL | 13193 | 673 | 24 | 94 | 201 | 1416 |
| 10_find_max.md | PASS | PASS | 13242 | 471 | 25 | 39 | 307 | 692 |
| 11_remove_duplicates.md | FAIL | PASS | 13498 | 547 | 24 | 39 | 1467 | 1088 |
| 12_zip_lists.md | PASS | PASS | 13292 | 702 | 23 | 40 | 278 | 1115 |
| 13_palindrome_check.md | PASS | PASS | 13200 | 519 | 24 | 39 | 303 | 1004 |
| 14_count_vowels.md | FAIL | PASS | 13256 | 484 | 451 | 41 | 478 | 766 |
| 15_caesar_cipher.md | FAIL | PASS | 13572 | 675 | 3 | 39 | 1042 | 1620 |
| 16_safe_sqrt.md | FAIL | PASS | 13514 | 845 | 24 | 40 | 1149 | 2213 |
| 17_parse_int.md | FAIL | PASS | 13512 | 662 | 23 | 40 | 1412 | 1420 |
| 18_bounded_access.md | PASS | PASS | 13278 | 582 | 26 | 39 | 366 | 890 |
| 19_flatten_list.md | PASS | PASS | 13203 | 593 | 24 | 39 | 209 | 1067 |
| 20_group_by_parity.md | PASS | PASS | 13287 | 708 | 26 | 41 | 377 | 1574 |
| 21_running_sum.md | PASS | PASS | 13242 | 601 | 24 | 40 | 401 | 1166 |
| 22_word_frequency.md | PASS | PASS | 13291 | 477 | 23 | 41 | 801 | 907 |
| 23_matrix_transpose.md | FAIL | PASS | 13271 | 648 | 2 | 41 | 603 | 1394 |
| 24_merge_sorted.md | PASS | PASS | 13322 | 787 | 23 | 40 | 473 | 1561 |
| 25_pipeline.md | PASS | PASS | 13277 | 523 | 24 | 38 | 334 | 794 |

## Summary

- **AIRL correct:** 17 / 25 (68%)
- **Python correct:** 24 / 25 (96%)
- **Total AIRL tokens:** 332197
- **Total Python tokens:** 14533
- **Total AIRL execution time:** 9525 ms
- **Total Python execution time:** 1046 ms
