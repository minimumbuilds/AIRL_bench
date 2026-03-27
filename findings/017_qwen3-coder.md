# AIRL_bench Findings

**Model:** qwen3-coder
**Guide included:** Yes (airl_llm_guide.md)
**AIRL binary:** /mnt/b6d8b397-9fc1-42ac-a0da-8664a73d4ee9/AIRL/target/release/airl-driver
**Mode:** compiled (AOT)
**Tasks:** 100

## Results

| Task | AIRL | Python | AIRL gen tok | Py gen tok | Compile ms | AIRL ms | Py ms | AIRL chars | Py chars | Output Match |
|------|------|--------|-------------|------------|------------|---------|-------|------------|----------|-------------|
| 01_safe_divide.md | PASS | FAIL | 89 | 0 | 629 | 1 | 0 | 245 | 0 | skip |
| 02_fibonacci.md | PASS | FAIL | 100 | 0 | 686 | 1 | 0 | 252 | 0 | skip |
| 03_list_processing.md | PASS | FAIL | 114 | 0 | 641 | 1 | 0 | 284 | 0 | skip |
| 04_input_validation.md | PASS | FAIL | 90 | 0 | 655 | 1 | 0 | 254 | 0 | skip |
| 05_string_tokenizer.md | FAIL | FAIL | 79 | 0 | 4 | 0 | 0 | 257 | 0 | skip |
| 06_absolute_value.md | PASS | FAIL | 64 | 0 | 622 | 1 | 0 | 162 | 0 | skip |
| 07_gcd.md | PASS | FAIL | 85 | 0 | 660 | 1 | 0 | 181 | 0 | skip |
| 08_power.md | PASS | FAIL | 89 | 0 | 625 | 1 | 0 | 215 | 0 | skip |
| 09_reverse_list.md | PASS | FAIL | 72 | 0 | 622 | 2 | 0 | 201 | 0 | skip |
| 100_variant_payload.md | PASS | FAIL | 128 | 0 | 647 | 1 | 0 | 391 | 0 | skip |
| 10_find_max.md | PASS | FAIL | 125 | 0 | 667 | 1 | 0 | 354 | 0 | skip |
| 11_remove_duplicates.md | PASS | FAIL | 97 | 0 | 643 | 2 | 0 | 314 | 0 | skip |
| 12_zip_lists.md | PASS | FAIL | 124 | 0 | 654 | 1 | 0 | 313 | 0 | skip |
| 13_palindrome_check.md | PASS | FAIL | 66 | 0 | 646 | 1 | 0 | 212 | 0 | skip |
| 14_count_vowels.md | PASS | FAIL | 154 | 0 | 647 | 1 | 0 | 449 | 0 | skip |
| 15_caesar_cipher.md | PASS | FAIL | 208 | 0 | 662 | 1 | 0 | 791 | 0 | skip |
| 16_safe_sqrt.md | PASS | FAIL | 258 | 0 | 630 | 1 | 0 | 1226 | 0 | skip |
| 17_parse_int.md | PASS | FAIL | 90 | 0 | 664 | 1 | 0 | 269 | 0 | skip |
| 18_bounded_access.md | PASS | FAIL | 104 | 0 | 637 | 1 | 0 | 289 | 0 | skip |
| 19_flatten_list.md | PASS | FAIL | 70 | 0 | 671 | 1 | 0 | 209 | 0 | skip |
| 20_group_by_parity.md | PASS | FAIL | 150 | 0 | 628 | 1 | 0 | 403 | 0 | skip |
| 21_running_sum.md | PASS | FAIL | 116 | 0 | 620 | 1 | 0 | 390 | 0 | skip |
| 22_word_frequency.md | PASS | FAIL | 199 | 0 | 629 | 2 | 0 | 743 | 0 | skip |
| 23_matrix_transpose.md | PASS | FAIL | 106 | 0 | 655 | 1 | 0 | 302 | 0 | skip |
| 24_merge_sorted.md | PASS | FAIL | 148 | 0 | 625 | 2 | 0 | 407 | 0 | skip |
| 25_pipeline.md | PASS | FAIL | 111 | 0 | 651 | 1 | 0 | 293 | 0 | skip |
| 26_string_pad.md | PASS | FAIL | 163 | 0 | 629 | 1 | 0 | 471 | 0 | skip |
| 27_all_vowels.md | PASS | FAIL | 154 | 0 | 651 | 1 | 0 | 482 | 0 | skip |
| 28_replace_all.md | FAIL | FAIL | 263 | 0 | 4 | 0 | 0 | 1215 | 0 | skip |
| 29_prefix_suffix.md | PASS | FAIL | 95 | 0 | 633 | 1 | 0 | 356 | 0 | skip |
| 30_split_rejoin.md | FAIL | FAIL | 156 | 0 | 4 | 0 | 0 | 646 | 0 | skip |
| 31_find_index.md | PASS | FAIL | 141 | 0 | 633 | 265 | 0 | 382 | 0 | skip |
| 32_take_elements.md | PASS | FAIL | 93 | 0 | 644 | 1 | 0 | 288 | 0 | skip |
| 33_drop_elements.md | PASS | FAIL | 88 | 0 | 679 | 1 | 0 | 257 | 0 | skip |
| 34_is_sorted.md | PASS | FAIL | 112 | 0 | 641 | 1 | 0 | 301 | 0 | skip |
| 35_set_union.md | FAIL | FAIL | 194 | 0 | 4 | 0 | 0 | 786 | 0 | skip |
| 36_set_intersection.md | PASS | FAIL | 151 | 0 | 662 | 1 | 0 | 459 | 0 | skip |
| 37_map_insert_lookup.md | PASS | FAIL | 127 | 0 | 639 | 2 | 0 | 425 | 0 | skip |
| 38_map_keys.md | PASS | FAIL | 128 | 0 | 638 | 1 | 0 | 407 | 0 | skip |
| 39_sum_of_squares.md | PASS | FAIL | 81 | 0 | 663 | 1 | 0 | 214 | 0 | skip |
| 40_abs_difference.md | PASS | FAIL | 82 | 0 | 659 | 1 | 0 | 208 | 0 | skip |
| 41_clamp_value.md | PASS | FAIL | 116 | 0 | 649 | 2 | 0 | 285 | 0 | skip |
| 42_divmod.md | PASS | FAIL | 108 | 0 | 838 | 2 | 0 | 338 | 0 | skip |
| 43_uppercase_check.md | PASS | FAIL | 223 | 0 | 750 | 1 | 0 | 715 | 0 | skip |
| 44_range_sum.md | PASS | FAIL | 93 | 0 | 713 | 1 | 0 | 251 | 0 | skip |
| 45_is_prime.md | PASS | FAIL | 109 | 0 | 738 | 2 | 0 | 279 | 0 | skip |
| 46_longest_string.md | PASS | FAIL | 96 | 0 | 683 | 1 | 0 | 349 | 0 | skip |
| 47_enhanced_word_freq.md | FAIL | FAIL | 233 | 0 | 4 | 1 | 0 | 765 | 0 | skip |
| 48_dedup_ordered.md | PASS | FAIL | 95 | 0 | 742 | 2 | 0 | 288 | 0 | skip |
| 49_second_largest.md | FAIL | FAIL | 127 | 0 | 4 | 0 | 0 | 371 | 0 | skip |
| 50_group_by_first_char.md | PASS | FAIL | 156 | 0 | 613 | 1 | 0 | 574 | 0 | skip |
| 51_flatten_sort_unique.md | PASS | FAIL | 105 | 0 | 613 | 1 | 0 | 317 | 0 | skip |
| 52_running_average.md | PASS | FAIL | 137 | 0 | 667 | 1 | 0 | 426 | 0 | skip |
| 53_multi_let.md | PASS | FAIL | 251 | 0 | 659 | 1 | 0 | 679 | 0 | skip |
| 54_if_do_blocks.md | PASS | FAIL | 135 | 0 | 650 | 2 | 0 | 435 | 0 | skip |
| 55_partition.md | FAIL | FAIL | 157 | 0 | 4 | 0 | 0 | 507 | 0 | skip |
| 56_interleave.md | PASS | FAIL | 112 | 0 | 655 | 1 | 0 | 341 | 0 | skip |
| 57_rotate_list.md | PASS | FAIL | 156 | 0 | 708 | 1 | 0 | 446 | 0 | skip |
| 58_sliding_window.md | PASS | FAIL | 170 | 0 | 639 | 1 | 0 | 542 | 0 | skip |
| 59_rle_encode.md | FAIL | FAIL | 173 | 0 | 3 | 0 | 0 | 697 | 0 | skip |
| 60_rle_decode.md | PASS | FAIL | 126 | 0 | 708 | 259 | 0 | 396 | 0 | skip |
| 61_int_to_binary.md | FAIL | FAIL | 253 | 0 | 14 | 0 | 0 | 1277 | 0 | skip |
| 62_matrix_multiply.md | PASS | FAIL | 308 | 0 | 626 | 1 | 0 | 598 | 0 | skip |
| 63_histogram.md | FAIL | FAIL | 205 | 0 | 4 | 0 | 0 | 764 | 0 | skip |
| 64_top_n.md | FAIL | FAIL | 116 | 0 | 4 | 0 | 0 | 312 | 0 | skip |
| 65_cumulative_product.md | PASS | FAIL | 120 | 0 | 658 | 1 | 0 | 385 | 0 | skip |
| 66_anagram_check.md | FAIL | FAIL | 255 | 0 | 4 | 1 | 0 | 745 | 0 | skip |
| 67_list_difference.md | FAIL | FAIL | 157 | 0 | 5 | 0 | 0 | 568 | 0 | skip |
| 68_chunk_list.md | PASS | FAIL | 119 | 0 | 666 | 1 | 0 | 320 | 0 | skip |
| 69_deep_map.md | PASS | FAIL | 86 | 0 | 658 | 273 | 0 | 256 | 0 | skip |
| 70_compose.md | PASS | FAIL | 102 | 0 | 687 | 2 | 0 | 284 | 0 | skip |
| 71_binary_search.md | PASS | FAIL | 218 | 0 | 623 | 268 | 0 | 829 | 0 | skip |
| 72_merge_sort.md | PASS | FAIL | 259 | 0 | 646 | 1 | 0 | 777 | 0 | skip |
| 73_tree_depth.md | PASS | FAIL | 180 | 0 | 654 | 270 | 0 | 563 | 0 | skip |
| 74_deep_flatten.md | PASS | FAIL | 129 | 0 | 634 | 1 | 0 | 432 | 0 | skip |
| 75_fib_memo.md | PASS | FAIL | 94 | 0 | 652 | 254 | 0 | 235 | 0 | skip |
| 76_hanoi.md | PASS | FAIL | 127 | 0 | 661 | 318 | 0 | 342 | 0 | skip |
| 77_balanced_parens.md | FAIL | FAIL | 133 | 0 | 4 | 0 | 0 | 487 | 0 | skip |
| 78_permutations.md | PASS | FAIL | 193 | 0 | 657 | 2 | 0 | 785 | 0 | skip |
| 79_graph_path.md | PASS | FAIL | 218 | 0 | 644 | 1 | 0 | 751 | 0 | skip |
| 80_eval_expr.md | PASS | FAIL | 172 | 0 | 641 | 1 | 0 | 563 | 0 | skip |
| 81_tail_reverse.md | PASS | FAIL | 103 | 0 | 677 | 277 | 0 | 352 | 0 | skip |
| 82_mutual_recursion.md | PASS | FAIL | 127 | 0 | 650 | 1 | 0 | 339 | 0 | skip |
| 83_glob_match.md | FAIL | FAIL | 267 | 0 | 4 | 0 | 0 | 947 | 0 | skip |
| 84_trie_insert.md | PASS | FAIL | 181 | 0 | 637 | 279 | 0 | 897 | 0 | skip |
| 85_flatten_map.md | FAIL | FAIL | 183 | 0 | 3 | 1 | 0 | 658 | 0 | skip |
| 86_meaningful_requires.md | PASS | FAIL | 93 | 0 | 640 | 1 | 0 | 251 | 0 | skip |
| 87_ensures_range.md | PASS | FAIL | 89 | 0 | 686 | 1 | 0 | 259 | 0 | skip |
| 88_result_division.md | PASS | FAIL | 122 | 0 | 640 | 1 | 0 | 343 | 0 | skip |
| 89_chain_results.md | PASS | FAIL | 215 | 0 | 618 | 1 | 0 | 639 | 0 | skip |
| 90_custom_variant.md | PASS | FAIL | 191 | 0 | 615 | 2 | 0 | 647 | 0 | skip |
| 91_option_find.md | FAIL | FAIL | 165 | 0 | 4 | 0 | 0 | 468 | 0 | skip |
| 92_validated_constructor.md | PASS | FAIL | 175 | 0 | 611 | 272 | 0 | 468 | 0 | skip |
| 93_collect_errors.md | PASS | FAIL | 119 | 0 | 649 | 1 | 0 | 343 | 0 | skip |
| 94_state_machine.md | PASS | FAIL | 178 | 0 | 633 | 1 | 0 | 883 | 0 | skip |
| 95_contract_violation.md | PASS | FAIL | 188 | 0 | 633 | 290 | 0 | 539 | 0 | skip |
| 96_parse_validate.md | FAIL | FAIL | 471 | 0 | 4 | 0 | 0 | 1805 | 0 | skip |
| 97_higher_order_sig.md | PASS | FAIL | 184 | 0 | 780 | 2 | 0 | 452 | 0 | skip |
| 98_map_with_default.md | PASS | FAIL | 125 | 0 | 910 | 2 | 0 | 480 | 0 | skip |
| 99_result_pipeline.md | PASS | FAIL | 272 | 0 | 1320 | 4 | 0 | 763 | 0 | skip |

## Summary

- **AIRL correct:** 82 / 100 (82%)
- **Python correct:** 0 / 100 (0%)
- **Output matches:** 0 / 100

### Token Usage

| | AIRL | Python |
|---|------|--------|
| Context (avg per task) | 18526 | 0 |
| Generation (total) | 14834 | 0 |
| Prompt (total) | 1852677 | 0 |

### Execution

- **Total AIRL execution time:** 3117 ms
- **Total AIRL compile time:** 54799 ms
- **Total Python execution time:** 0 ms
