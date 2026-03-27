# AIRL_bench Report

**Model:** qwen3-coder

## Results

| Task | AIRL | Python | C | AIRL tok | Py tok | C tok | AIRL ms | Py ms | C compile | C ms | AIRL chars | Py chars | C chars | Match |
|------|------|--------|---|----------|--------|--------|---------|-------|-----------|------|------------|----------|---------|-------|
| 01_safe_divide.md | FAIL | FAIL | PASS | 0 | 0 | 133 | 0 | 0 | 38 | 1 | 0 | 0 | 431 | skip |
| 02_fibonacci.md | FAIL | FAIL | PASS | 0 | 0 | 189 | 0 | 0 | 40 | 0 | 0 | 0 | 637 | skip |
| 03_list_processing.md | FAIL | FAIL | PASS | 0 | 0 | 177 | 0 | 0 | 40 | 0 | 0 | 0 | 534 | skip |
| 04_input_validation.md | FAIL | FAIL | PASS | 0 | 0 | 199 | 0 | 0 | 39 | 0 | 0 | 0 | 739 | skip |
| 05_string_tokenizer.md | FAIL | FAIL | PASS | 0 | 0 | 652 | 0 | 0 | 57 | 1 | 0 | 0 | 2590 | skip |
| 06_absolute_value.md | FAIL | FAIL | PASS | 0 | 0 | 67 | 0 | 0 | 34 | 1 | 0 | 0 | 221 | skip |
| 07_gcd.md | FAIL | FAIL | PASS | 0 | 0 | 223 | 0 | 0 | 42 | 0 | 0 | 0 | 653 | skip |
| 08_power.md | FAIL | FAIL | PASS | 0 | 0 | 328 | 0 | 0 | 41 | 1 | 0 | 0 | 1114 | skip |
| 09_reverse_list.md | FAIL | FAIL | PASS | 0 | 0 | 302 | 0 | 0 | 44 | 1 | 0 | 0 | 1073 | skip |
| 100_variant_payload.md | FAIL | FAIL | PASS | 0 | 0 | 847 | 0 | 0 | 51 | 1 | 0 | 0 | 3712 | skip |
| 10_find_max.md | FAIL | FAIL | PASS | 0 | 0 | 189 | 0 | 0 | 39 | 0 | 0 | 0 | 624 | skip |
| 11_remove_duplicates.md | FAIL | FAIL | PASS | 0 | 0 | 802 | 0 | 0 | 49 | 0 | 0 | 0 | 2845 | skip |
| 12_zip_lists.md | FAIL | FAIL | PASS | 0 | 0 | 489 | 0 | 0 | 46 | 1 | 0 | 0 | 1640 | skip |
| 13_palindrome_check.md | FAIL | FAIL | PASS | 0 | 0 | 137 | 0 | 0 | 38 | 1 | 0 | 0 | 465 | skip |
| 14_count_vowels.md | FAIL | FAIL | PASS | 0 | 0 | 378 | 0 | 0 | 42 | 1 | 0 | 0 | 1276 | skip |
| 15_caesar_cipher.md | FAIL | FAIL | PASS | 0 | 0 | 528 | 0 | 0 | 48 | 0 | 0 | 0 | 1823 | skip |
| 16_safe_sqrt.md | FAIL | FAIL | PASS | 0 | 0 | 315 | 0 | 0 | 46 | 0 | 0 | 0 | 1067 | skip |
| 17_parse_int.md | FAIL | FAIL | FAIL | 0 | 0 | 523 | 0 | 0 | 18 | 0 | 0 | 0 | 1894 | skip |
| 18_bounded_access.md | FAIL | FAIL | PASS | 0 | 0 | 235 | 0 | 0 | 42 | 1 | 0 | 0 | 841 | skip |
| 19_flatten_list.md | FAIL | FAIL | PASS | 0 | 0 | 709 | 0 | 0 | 49 | 1 | 0 | 0 | 2320 | skip |
| 20_group_by_parity.md | FAIL | FAIL | PASS | 0 | 0 | 658 | 0 | 0 | 55 | 1 | 0 | 0 | 2428 | skip |
| 21_running_sum.md | FAIL | FAIL | PASS | 0 | 0 | 311 | 0 | 0 | 46 | 1 | 0 | 0 | 1025 | skip |
| 22_word_frequency.md | FAIL | FAIL | PASS | 0 | 0 | 670 | 0 | 0 | 57 | 202 | 0 | 0 | 2436 | skip |
| 23_matrix_transpose.md | FAIL | FAIL | PASS | 0 | 0 | 867 | 0 | 0 | 63 | 1 | 0 | 0 | 2939 | skip |
| 24_merge_sorted.md | FAIL | FAIL | PASS | 0 | 0 | 429 | 0 | 0 | 52 | 0 | 0 | 0 | 1380 | skip |
| 25_pipeline.md | FAIL | FAIL | PASS | 0 | 0 | 317 | 0 | 0 | 42 | 0 | 0 | 0 | 911 | skip |
| 26_string_pad.md | FAIL | FAIL | PASS | 0 | 0 | 250 | 0 | 0 | 40 | 0 | 0 | 0 | 966 | skip |
| 27_all_vowels.md | FAIL | FAIL | PASS | 0 | 0 | 262 | 0 | 0 | 46 | 1 | 0 | 0 | 919 | skip |
| 28_replace_all.md | FAIL | FAIL | PASS | 0 | 0 | 403 | 0 | 0 | 45 | 0 | 0 | 0 | 1552 | skip |
| 29_prefix_suffix.md | FAIL | FAIL | PASS | 0 | 0 | 210 | 0 | 0 | 37 | 1 | 0 | 0 | 741 | skip |
| 30_split_rejoin.md | FAIL | FAIL | PASS | 0 | 0 | 497 | 0 | 0 | 46 | 1 | 0 | 0 | 1855 | skip |
| 31_find_index.md | FAIL | FAIL | PASS | 0 | 0 | 168 | 0 | 0 | 38 | 1 | 0 | 0 | 525 | skip |
| 32_take_elements.md | FAIL | FAIL | PASS | 0 | 0 | 330 | 0 | 0 | 47 | 1 | 0 | 0 | 1169 | skip |
| 33_drop_elements.md | FAIL | FAIL | PASS | 0 | 0 | 874 | 0 | 0 | 49 | 0 | 0 | 0 | 2664 | skip |
| 34_is_sorted.md | FAIL | FAIL | PASS | 0 | 0 | 291 | 0 | 0 | 42 | 0 | 0 | 0 | 952 | skip |
| 35_set_union.md | FAIL | FAIL | PASS | 0 | 0 | 745 | 0 | 0 | 56 | 1 | 0 | 0 | 2500 | skip |
| 36_set_intersection.md | FAIL | FAIL | PASS | 0 | 0 | 987 | 0 | 0 | 54 | 1 | 0 | 0 | 3303 | skip |
| 37_map_insert_lookup.md | FAIL | FAIL | PASS | 0 | 0 | 817 | 0 | 0 | 56 | 188 | 0 | 0 | 3066 | skip |
| 38_map_keys.md | FAIL | FAIL | PASS | 0 | 0 | 864 | 0 | 0 | 59 | 193 | 0 | 0 | 3109 | skip |
| 39_sum_of_squares.md | FAIL | FAIL | PASS | 0 | 0 | 149 | 0 | 0 | 40 | 1 | 0 | 0 | 462 | skip |
| 40_abs_difference.md | FAIL | FAIL | PASS | 0 | 0 | 130 | 0 | 0 | 38 | 1 | 0 | 0 | 418 | skip |
| 41_clamp_value.md | FAIL | FAIL | PASS | 0 | 0 | 357 | 0 | 0 | 44 | 1 | 0 | 0 | 1220 | skip |
| 42_divmod.md | FAIL | FAIL | PASS | 0 | 0 | 266 | 0 | 0 | 38 | 0 | 0 | 0 | 840 | skip |
| 43_uppercase_check.md | FAIL | FAIL | PASS | 0 | 0 | 140 | 0 | 0 | 40 | 1 | 0 | 0 | 474 | skip |
| 44_range_sum.md | FAIL | FAIL | PASS | 0 | 0 | 103 | 0 | 0 | 39 | 0 | 0 | 0 | 325 | skip |
| 45_is_prime.md | FAIL | FAIL | PASS | 0 | 0 | 162 | 0 | 0 | 53 | 1 | 0 | 0 | 490 | skip |
| 46_longest_string.md | FAIL | FAIL | PASS | 0 | 0 | 259 | 0 | 0 | 41 | 1 | 0 | 0 | 865 | skip |
| 47_enhanced_word_freq.md | FAIL | FAIL | PASS | 0 | 0 | 940 | 0 | 0 | 67 | 191 | 0 | 0 | 3730 | skip |
| 48_dedup_ordered.md | FAIL | FAIL | PASS | 0 | 0 | 799 | 0 | 0 | 50 | 1 | 0 | 0 | 2725 | skip |
| 49_second_largest.md | FAIL | FAIL | PASS | 0 | 0 | 249 | 0 | 0 | 41 | 1 | 0 | 0 | 881 | skip |
| 50_group_by_first_char.md | FAIL | FAIL | PASS | 0 | 0 | 1026 | 0 | 0 | 65 | 1 | 0 | 0 | 3830 | skip |
| 51_flatten_sort_unique.md | FAIL | FAIL | PASS | 0 | 0 | 777 | 0 | 0 | 56 | 1 | 0 | 0 | 2654 | skip |
| 52_running_average.md | FAIL | FAIL | PASS | 0 | 0 | 300 | 0 | 0 | 44 | 0 | 0 | 0 | 1003 | skip |
| 53_multi_let.md | FAIL | FAIL | PASS | 0 | 0 | 217 | 0 | 0 | 45 | 1 | 0 | 0 | 739 | skip |
| 54_if_do_blocks.md | FAIL | FAIL | PASS | 0 | 0 | 555 | 0 | 0 | 53 | 203 | 0 | 0 | 1999 | skip |
| 55_partition.md | FAIL | FAIL | PASS | 0 | 0 | 723 | 0 | 0 | 58 | 1 | 0 | 0 | 2547 | skip |
| 56_interleave.md | FAIL | FAIL | PASS | 0 | 0 | 533 | 0 | 0 | 54 | 0 | 0 | 0 | 1798 | skip |
| 57_rotate_list.md | FAIL | FAIL | PASS | 0 | 0 | 615 | 0 | 0 | 50 | 1 | 0 | 0 | 1794 | skip |
| 58_sliding_window.md | FAIL | FAIL | PASS | 0 | 0 | 749 | 0 | 0 | 49 | 0 | 0 | 0 | 2453 | skip |
| 59_rle_encode.md | FAIL | FAIL | PASS | 0 | 0 | 494 | 0 | 0 | 51 | 0 | 0 | 0 | 1794 | skip |
| 60_rle_decode.md | FAIL | FAIL | PASS | 0 | 0 | 478 | 0 | 0 | 47 | 1 | 0 | 0 | 1594 | skip |
| 61_int_to_binary.md | FAIL | FAIL | PASS | 0 | 0 | 508 | 0 | 0 | 41 | 1 | 0 | 0 | 1744 | skip |
| 62_matrix_multiply.md | FAIL | FAIL | PASS | 0 | 0 | 726 | 0 | 0 | 49 | 0 | 0 | 0 | 1948 | skip |
| 63_histogram.md | FAIL | FAIL | PASS | 0 | 0 | 598 | 0 | 0 | 49 | 1 | 0 | 0 | 2020 | skip |
| 64_top_n.md | FAIL | FAIL | PASS | 0 | 0 | 839 | 0 | 0 | 53 | 0 | 0 | 0 | 2545 | skip |
| 65_cumulative_product.md | FAIL | FAIL | PASS | 0 | 0 | 297 | 0 | 0 | 43 | 1 | 0 | 0 | 1028 | skip |
| 66_anagram_check.md | FAIL | FAIL | FAIL | 0 | 0 | 441 | 0 | 0 | 18 | 0 | 0 | 0 | 1448 | skip |
| 67_list_difference.md | FAIL | FAIL | PASS | 0 | 0 | 758 | 0 | 0 | 62 | 1 | 0 | 0 | 2707 | skip |
| 68_chunk_list.md | FAIL | FAIL | PASS | 0 | 0 | 707 | 0 | 0 | 57 | 1 | 0 | 0 | 2666 | skip |
| 69_deep_map.md | FAIL | FAIL | PASS | 0 | 0 | 1119 | 0 | 0 | 71 | 1 | 0 | 0 | 4626 | skip |
| 70_compose.md | FAIL | FAIL | PASS | 0 | 0 | 402 | 0 | 0 | 36 | 1 | 0 | 0 | 1740 | skip |
| 71_binary_search.md | FAIL | FAIL | PASS | 0 | 0 | 263 | 0 | 0 | 40 | 1 | 0 | 0 | 876 | skip |
| 72_merge_sort.md | FAIL | FAIL | PASS | 0 | 0 | 1043 | 0 | 0 | 63 | 1 | 0 | 0 | 3382 | skip |
| 73_tree_depth.md | FAIL | FAIL | PASS | 0 | 0 | 606 | 0 | 0 | 53 | 1 | 0 | 0 | 1909 | skip |
| 74_deep_flatten.md | FAIL | FAIL | PASS | 0 | 0 | 1054 | 0 | 0 | 54 | 0 | 0 | 0 | 3744 | skip |
| 75_fib_memo.md | FAIL | FAIL | PASS | 0 | 0 | 132 | 0 | 0 | 45 | 1 | 0 | 0 | 431 | skip |
| 76_hanoi.md | FAIL | FAIL | PASS | 0 | 0 | 494 | 0 | 0 | 46 | 1 | 0 | 0 | 1666 | skip |
| 77_balanced_parens.md | FAIL | FAIL | PASS | 0 | 0 | 183 | 0 | 0 | 40 | 0 | 0 | 0 | 636 | skip |
| 78_permutations.md | FAIL | FAIL | PASS | 0 | 0 | 624 | 0 | 0 | 65 | 1 | 0 | 0 | 2308 | skip |
| 79_graph_path.md | FAIL | FAIL | FAIL | 0 | 0 | 1293 | 0 | 0 | 18 | 0 | 0 | 0 | 4830 | skip |
| 80_eval_expr.md | FAIL | FAIL | PASS | 0 | 0 | 905 | 0 | 0 | 69 | 1 | 0 | 0 | 3354 | skip |
| 81_tail_reverse.md | FAIL | FAIL | PASS | 0 | 0 | 876 | 0 | 0 | 48 | 0 | 0 | 0 | 3269 | skip |
| 82_mutual_recursion.md | FAIL | FAIL | PASS | 0 | 0 | 292 | 0 | 0 | 45 | 0 | 0 | 0 | 895 | skip |
| 83_glob_match.md | FAIL | FAIL | PASS | 0 | 0 | 291 | 0 | 0 | 40 | 1 | 0 | 0 | 1056 | skip |
| 84_trie_insert.md | FAIL | FAIL | PASS | 0 | 0 | 1117 | 0 | 0 | 69 | 205 | 0 | 0 | 4466 | skip |
| 85_flatten_map.md | FAIL | FAIL | FAIL | 0 | 0 | 1018 | 0 | 0 | 18 | 0 | 0 | 0 | 4079 | skip |
| 86_meaningful_requires.md | FAIL | FAIL | PASS | 0 | 0 | 327 | 0 | 0 | 37 | 0 | 0 | 0 | 913 | skip |
| 87_ensures_range.md | FAIL | FAIL | PASS | 0 | 0 | 259 | 0 | 0 | 38 | 1 | 0 | 0 | 832 | skip |
| 88_result_division.md | FAIL | FAIL | PASS | 0 | 0 | 365 | 0 | 0 | 40 | 0 | 0 | 0 | 1352 | skip |
| 89_chain_results.md | FAIL | FAIL | FAIL | 0 | 0 | 548 | 0 | 0 | 18 | 0 | 0 | 0 | 1956 | skip |
| 90_custom_variant.md | FAIL | FAIL | PASS | 0 | 0 | 495 | 0 | 0 | 40 | 1 | 0 | 0 | 1956 | skip |
| 91_option_find.md | FAIL | FAIL | PASS | 0 | 0 | 184 | 0 | 0 | 39 | 1 | 0 | 0 | 594 | skip |
| 92_validated_constructor.md | FAIL | FAIL | PASS | 0 | 0 | 742 | 0 | 0 | 58 | 0 | 0 | 0 | 2617 | skip |
| 93_collect_errors.md | FAIL | FAIL | PASS | 0 | 0 | 1123 | 0 | 0 | 64 | 0 | 0 | 0 | 4262 | skip |
| 94_state_machine.md | FAIL | FAIL | PASS | 0 | 0 | 438 | 0 | 0 | 45 | 0 | 0 | 0 | 1832 | skip |
| 95_contract_violation.md | FAIL | FAIL | FAIL | 0 | 0 | 459 | 0 | 0 | 22 | 0 | 0 | 0 | 1635 | skip |
| 96_parse_validate.md | FAIL | FAIL | PASS | 0 | 0 | 726 | 0 | 0 | 48 | 0 | 0 | 0 | 2403 | skip |
| 97_higher_order_sig.md | FAIL | FAIL | PASS | 0 | 0 | 324 | 0 | 0 | 40 | 0 | 0 | 0 | 959 | skip |
| 98_map_with_default.md | FAIL | FAIL | PASS | 0 | 0 | 715 | 0 | 0 | 63 | 1 | 0 | 0 | 2406 | skip |
| 99_result_pipeline.md | FAIL | FAIL | PASS | 0 | 0 | 472 | 0 | 0 | 49 | 0 | 0 | 0 | 1669 | skip |

## Summary

- **AIRL correct:** 0 / 100
- **Python correct:** 0 / 100
- **C correct:** 94 / 100
- **Output matches:** 0 / 100

### Token Usage

| | AIRL | Python | C |
|---|------|--------|---|
| Generation (total) | 0 | 0 | 51156 |

### Execution

- **Total AIRL execution time:** 0 ms
- **Total Python execution time:** 0 ms
- **Total C execution time:** 1236 ms
- **Total C compile time:** 4629 ms
