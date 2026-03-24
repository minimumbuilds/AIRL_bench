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
| 01_safe_divide.md | PASS | PASS | 14338 | 535 | 23 | 40 | 330 | 813 |
| 02_fibonacci.md | PASS | PASS | 14303 | 431 | 29 | 41 | 252 | 438 |
| 03_list_processing.md | PASS | PASS | 14350 | 716 | 26 | 41 | 284 | 1383 |
| 04_input_validation.md | PASS | PASS | 14305 | 460 | 22 | 40 | 254 | 623 |
| 05_string_tokenizer.md | FAIL | PASS | 14256 | 478 | 22 | 41 | 231 | 921 |
| 06_absolute_value.md | PASS | PASS | 14260 | 448 | 32 | 39 | 160 | 628 |
| 07_gcd.md | PASS | PASS | 14273 | 534 | 29 | 39 | 181 | 866 |
| 08_power.md | PASS | PASS | 14282 | 674 | 30 | 40 | 215 | 1388 |
| 09_reverse_list.md | PASS | FAIL | 14279 | 609 | 23 | 94 | 201 | 1263 |
| 10_find_max.md | FAIL | PASS | 14314 | 514 | 23 | 40 | 241 | 836 |
| 11_remove_duplicates.md | PASS | PASS | 14328 | 545 | 23 | 39 | 318 | 1076 |
| 12_zip_lists.md | PASS | PASS | 14391 | 727 | 23 | 40 | 313 | 1198 |
| 13_palindrome_check.md | PASS | PASS | 14274 | 518 | 23 | 40 | 249 | 1001 |
| 14_count_vowels.md | FAIL | PASS | 14329 | 547 | 451 | 40 | 383 | 1048 |
| 15_caesar_cipher.md | PASS | PASS | 14462 | 675 | 31 | 40 | 795 | 1614 |
| 16_safe_sqrt.md | PASS | PASS | 14397 | 965 | 25 | 40 | 722 | 2434 |
| 17_parse_int.md | FAIL | PASS | 14777 | 627 | 2 | 39 | 1793 | 1304 |
| 18_bounded_access.md | PASS | PASS | 14347 | 625 | 22 | 40 | 306 | 1090 |
| 19_flatten_list.md | PASS | PASS | 14287 | 592 | 22 | 42 | 199 | 1061 |
| 20_group_by_parity.md | PASS | PASS | 14352 | 709 | 23 | 39 | 289 | 1580 |
| 21_running_sum.md | PASS | PASS | 14327 | 610 | 23 | 43 | 390 | 1178 |
| 22_word_frequency.md | PASS | PASS | 14404 | 473 | 22 | 39 | 788 | 889 |
| 23_matrix_transpose.md | FAIL | PASS | 14319 | 601 | 12 | 40 | 302 | 1254 |
| 24_merge_sorted.md | PASS | PASS | 14392 | 750 | 23 | 39 | 407 | 1455 |
| 25_pipeline.md | PASS | PASS | 14350 | 523 | 23 | 38 | 287 | 792 |

## Summary

- **AIRL correct:** 20 / 25 (80%)
- **Python correct:** 24 / 25 (96%)
- **Total AIRL tokens:** 358696
- **Total Python tokens:** 14886
- **Total AIRL execution time:** 1007 ms
- **Total Python execution time:** 1053 ms
