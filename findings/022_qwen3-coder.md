# AIRL_bench Findings

**Model:** qwen3-coder
**Guide included:** Yes (airl_llm_guide.md)
**AIRL binary:** /mnt/b6d8b397-9fc1-42ac-a0da-8664a73d4ee9/AIRL/target/release/airl-driver
**Mode:** interpreted
**Tasks:** 100

## Results

| Task | AIRL | Python | AIRL gen tok | Py gen tok | AIRL ms | Py ms | AIRL chars | Py chars | Output Match |
|------|------|--------|-------------|------------|---------|-------|------------|----------|-------------|
| 01_safe_divide.md | PASS | FAIL | 89 | 0 | 29 | 0 | 245 | 0 | skip |
| 02_fibonacci.md | PASS | FAIL | 100 | 0 | 34 | 0 | 252 | 0 | skip |
| 03_list_processing.md | PASS | FAIL | 114 | 0 | 28 | 0 | 284 | 0 | skip |
| 04_input_validation.md | PASS | FAIL | 91 | 0 | 27 | 0 | 264 | 0 | skip |
| 05_string_tokenizer.md | PASS | FAIL | 79 | 0 | 2 | 0 | 257 | 0 | skip |
| 06_absolute_value.md | PASS | FAIL | 63 | 0 | 34 | 0 | 160 | 0 | skip |
| 07_gcd.md | PASS | FAIL | 85 | 0 | 37 | 0 | 181 | 0 | skip |
| 08_power.md | PASS | FAIL | 89 | 0 | 42 | 0 | 215 | 0 | skip |
| 09_reverse_list.md | PASS | FAIL | 72 | 0 | 27 | 0 | 201 | 0 | skip |
| 100_variant_payload.md | PASS | FAIL | 128 | 0 | 30 | 0 | 391 | 0 | skip |
| 10_find_max.md | PASS | FAIL | 115 | 0 | 30 | 0 | 290 | 0 | skip |
| 11_remove_duplicates.md | PASS | FAIL | 97 | 0 | 3 | 0 | 315 | 0 | skip |
| 12_zip_lists.md | PASS | FAIL | 124 | 0 | 33 | 0 | 313 | 0 | skip |
| 13_palindrome_check.md | PASS | FAIL | 66 | 0 | 30 | 0 | 212 | 0 | skip |
| 14_count_vowels.md | PASS | FAIL | 141 | 0 | 28 | 0 | 385 | 0 | skip |
| 15_caesar_cipher.md | PASS | FAIL | 208 | 0 | 28 | 0 | 791 | 0 | skip |
| 16_safe_sqrt.md | PASS | FAIL | 179 | 0 | 30 | 0 | 727 | 0 | skip |
| 17_parse_int.md | PASS | FAIL | 331 | 0 | 3 | 0 | 1254 | 0 | skip |
| 18_bounded_access.md | PASS | FAIL | 104 | 0 | 30 | 0 | 289 | 0 | skip |
| 19_flatten_list.md | PASS | FAIL | 68 | 0 | 30 | 0 | 195 | 0 | skip |
| 20_group_by_parity.md | PASS | FAIL | 108 | 0 | 27 | 0 | 284 | 0 | skip |
| 21_running_sum.md | PASS | FAIL | 116 | 0 | 27 | 0 | 390 | 0 | skip |
| 22_word_frequency.md | PASS | FAIL | 199 | 0 | 28 | 0 | 743 | 0 | skip |
| 23_matrix_transpose.md | PASS | FAIL | 106 | 0 | 27 | 0 | 302 | 0 | skip |
| 24_merge_sorted.md | PASS | FAIL | 148 | 0 | 27 | 0 | 407 | 0 | skip |
| 25_pipeline.md | PASS | FAIL | 105 | 0 | 27 | 0 | 287 | 0 | skip |
| 26_string_pad.md | PASS | FAIL | 163 | 0 | 20 | 0 | 471 | 0 | skip |
| 27_all_vowels.md | PASS | FAIL | 154 | 0 | 26 | 0 | 482 | 0 | skip |
| 28_replace_all.md | PASS | FAIL | 137 | 0 | 26 | 0 | 525 | 0 | skip |
| 29_prefix_suffix.md | PASS | FAIL | 95 | 0 | 30 | 0 | 356 | 0 | skip |
| 30_split_rejoin.md | PASS | FAIL | 156 | 0 | 565 | 0 | 646 | 0 | skip |
| 31_find_index.md | PASS | FAIL | 139 | 0 | 25 | 0 | 385 | 0 | skip |
| 32_take_elements.md | PASS | FAIL | 93 | 0 | 30 | 0 | 288 | 0 | skip |
| 33_drop_elements.md | PASS | FAIL | 88 | 0 | 26 | 0 | 257 | 0 | skip |
| 34_is_sorted.md | PASS | FAIL | 112 | 0 | 26 | 0 | 301 | 0 | skip |
| 35_set_union.md | PASS | FAIL | 194 | 0 | 3 | 0 | 786 | 0 | skip |
| 36_set_intersection.md | PASS | FAIL | 151 | 0 | 28 | 0 | 459 | 0 | skip |
| 37_map_insert_lookup.md | PASS | FAIL | 127 | 0 | 27 | 0 | 425 | 0 | skip |
| 38_map_keys.md | PASS | FAIL | 128 | 0 | 27 | 0 | 395 | 0 | skip |
| 39_sum_of_squares.md | PASS | FAIL | 81 | 0 | 27 | 0 | 214 | 0 | skip |
| 40_abs_difference.md | PASS | FAIL | 82 | 0 | 35 | 0 | 208 | 0 | skip |
| 41_clamp_value.md | PASS | FAIL | 118 | 0 | 29 | 0 | 289 | 0 | skip |
| 42_divmod.md | PASS | FAIL | 102 | 0 | 27 | 0 | 313 | 0 | skip |
| 43_uppercase_check.md | PASS | FAIL | 202 | 0 | 20 | 0 | 595 | 0 | skip |
| 44_range_sum.md | PASS | FAIL | 93 | 0 | 35 | 0 | 251 | 0 | skip |
| 45_is_prime.md | PASS | FAIL | 109 | 0 | 33 | 0 | 279 | 0 | skip |
| 46_longest_string.md | PASS | FAIL | 96 | 0 | 28 | 0 | 349 | 0 | skip |
| 47_enhanced_word_freq.md | PASS | FAIL | 268 | 0 | 3 | 0 | 1138 | 0 | skip |
| 48_dedup_ordered.md | PASS | FAIL | 95 | 0 | 26 | 0 | 288 | 0 | skip |
| 49_second_largest.md | PASS | FAIL | 127 | 0 | 27 | 0 | 371 | 0 | skip |
| 50_group_by_first_char.md | PASS | FAIL | 145 | 0 | 28 | 0 | 535 | 0 | skip |
| 51_flatten_sort_unique.md | PASS | FAIL | 105 | 0 | 31 | 0 | 317 | 0 | skip |
| 52_running_average.md | PASS | FAIL | 198 | 0 | 26 | 0 | 675 | 0 | skip |
| 53_multi_let.md | PASS | FAIL | 194 | 0 | 39 | 0 | 557 | 0 | skip |
| 54_if_do_blocks.md | PASS | FAIL | 135 | 0 | 27 | 0 | 435 | 0 | skip |
| 55_partition.md | PASS | FAIL | 134 | 0 | 2 | 0 | 370 | 0 | skip |
| 56_interleave.md | PASS | FAIL | 160 | 0 | 486 | 0 | 512 | 0 | skip |
| 57_rotate_list.md | PASS | FAIL | 162 | 0 | 27 | 0 | 463 | 0 | skip |
| 58_sliding_window.md | PASS | FAIL | 166 | 0 | 537 | 0 | 533 | 0 | skip |
| 59_rle_encode.md | PASS | FAIL | 149 | 0 | 27 | 0 | 489 | 0 | skip |
| 60_rle_decode.md | PASS | FAIL | 187 | 0 | 33 | 0 | 545 | 0 | skip |
| 61_int_to_binary.md | PASS | FAIL | 135 | 0 | 494 | 0 | 491 | 0 | skip |
| 62_matrix_multiply.md | PASS | FAIL | 308 | 0 | 32 | 0 | 598 | 0 | skip |
| 63_histogram.md | PASS | FAIL | 189 | 0 | 2 | 0 | 688 | 0 | skip |
| 64_top_n.md | PASS | FAIL | 118 | 0 | 3 | 0 | 318 | 0 | skip |
| 65_cumulative_product.md | PASS | FAIL | 120 | 0 | 27 | 0 | 387 | 0 | skip |
| 66_anagram_check.md | PASS | FAIL | 217 | 0 | 3 | 0 | 638 | 0 | skip |
| 67_list_difference.md | PASS | FAIL | 157 | 0 | 26 | 0 | 569 | 0 | skip |
| 68_chunk_list.md | PASS | FAIL | 121 | 0 | 26 | 0 | 334 | 0 | skip |
| 69_deep_map.md | PASS | FAIL | 90 | 0 | 15 | 0 | 268 | 0 | skip |
| 70_compose.md | PASS | FAIL | 102 | 0 | 27 | 0 | 284 | 0 | skip |
| 71_binary_search.md | PASS | FAIL | 238 | 0 | 14 | 0 | 810 | 0 | skip |
| 72_merge_sort.md | PASS | FAIL | 259 | 0 | 33 | 0 | 777 | 0 | skip |
| 73_tree_depth.md | PASS | FAIL | 151 | 0 | 3 | 0 | 501 | 0 | skip |
| 74_deep_flatten.md | PASS | FAIL | 106 | 0 | 501 | 0 | 336 | 0 | skip |
| 75_fib_memo.md | PASS | FAIL | 100 | 0 | 494 | 0 | 320 | 0 | skip |
| 76_hanoi.md | PASS | FAIL | 130 | 0 | 17 | 0 | 345 | 0 | skip |
| 77_balanced_parens.md | PASS | FAIL | 134 | 0 | 27 | 0 | 497 | 0 | skip |
| 78_permutations.md | PASS | FAIL | 170 | 0 | 26 | 0 | 717 | 0 | skip |
| 79_graph_path.md | PASS | FAIL | 489 | 0 | 492 | 0 | 1875 | 0 | skip |
| 80_eval_expr.md | PASS | FAIL | 192 | 0 | 2 | 0 | 691 | 0 | skip |
| 81_tail_reverse.md | PASS | FAIL | 103 | 0 | 483 | 0 | 352 | 0 | skip |
| 82_mutual_recursion.md | PASS | FAIL | 121 | 0 | 36 | 0 | 299 | 0 | skip |
| 83_glob_match.md | PASS | FAIL | 389 | 0 | 2 | 0 | 1758 | 0 | skip |
| 84_trie_insert.md | PASS | FAIL | 158 | 0 | 2 | 0 | 620 | 0 | skip |
| 85_flatten_map.md | PASS | FAIL | 193 | 0 | 27 | 0 | 714 | 0 | skip |
| 86_meaningful_requires.md | PASS | FAIL | 82 | 0 | 26 | 0 | 205 | 0 | skip |
| 87_ensures_range.md | PASS | FAIL | 89 | 0 | 35 | 0 | 259 | 0 | skip |
| 88_result_division.md | PASS | FAIL | 127 | 0 | 27 | 0 | 348 | 0 | skip |
| 89_chain_results.md | PASS | FAIL | 215 | 0 | 33 | 0 | 639 | 0 | skip |
| 90_custom_variant.md | PASS | FAIL | 191 | 0 | 27 | 0 | 647 | 0 | skip |
| 91_option_find.md | PASS | FAIL | 144 | 0 | 18 | 0 | 414 | 0 | skip |
| 92_validated_constructor.md | PASS | FAIL | 176 | 0 | 32 | 0 | 478 | 0 | skip |
| 93_collect_errors.md | PASS | FAIL | 132 | 0 | 28 | 0 | 433 | 0 | skip |
| 94_state_machine.md | PASS | FAIL | 178 | 0 | 28 | 0 | 867 | 0 | skip |
| 95_contract_violation.md | PASS | FAIL | 322 | 0 | 36 | 0 | 922 | 0 | skip |
| 96_parse_validate.md | PASS | FAIL | 465 | 0 | 24 | 0 | 1699 | 0 | skip |
| 97_higher_order_sig.md | PASS | FAIL | 178 | 0 | 47 | 0 | 435 | 0 | skip |
| 98_map_with_default.md | PASS | FAIL | 131 | 0 | 29 | 0 | 481 | 0 | skip |
| 99_result_pipeline.md | PASS | FAIL | 272 | 0 | 38 | 0 | 763 | 0 | skip |

## Summary

- **AIRL correct:** 100 / 100 (100%)
- **Python correct:** 0 / 100 (0%)
- **Output matches:** 0 / 100

### Token Usage

| | AIRL | Python |
|---|------|--------|
| Context (avg per task) | 18526 | 0 |
| Generation (total) | 15162 | 0 |
| Prompt (total) | 1852677 | 0 |

### Execution

- **Total AIRL execution time:** 6352 ms
- **Total Python execution time:** 0 ms
