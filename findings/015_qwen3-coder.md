# AIRL_bench Findings

**Model:** qwen3-coder
**Guide included:** Yes (airl_llm_guide.md)
**AIRL binary:** /mnt/b6d8b397-9fc1-42ac-a0da-8664a73d4ee9/AIRL/target/release/airl-driver
**Mode:** interpreted
**Tasks:** 100

## Results

| Task | AIRL | Python | AIRL gen tok | Py gen tok | AIRL ms | Py ms | AIRL chars | Py chars | Output Match |
|------|------|--------|-------------|------------|---------|-------|------------|----------|-------------|
| 01_safe_divide.md | PASS | FAIL | 89 | 0 | 26 | 0 | 245 | 0 | skip |
| 02_fibonacci.md | PASS | FAIL | 100 | 0 | 35 | 0 | 252 | 0 | skip |
| 03_list_processing.md | PASS | FAIL | 114 | 0 | 28 | 0 | 284 | 0 | skip |
| 04_input_validation.md | PASS | FAIL | 90 | 0 | 28 | 0 | 254 | 0 | skip |
| 05_string_tokenizer.md | PASS | FAIL | 80 | 0 | 2 | 0 | 261 | 0 | skip |
| 06_absolute_value.md | PASS | FAIL | 63 | 0 | 34 | 0 | 160 | 0 | skip |
| 07_gcd.md | PASS | FAIL | 85 | 0 | 35 | 0 | 181 | 0 | skip |
| 08_power.md | PASS | FAIL | 89 | 0 | 33 | 0 | 215 | 0 | skip |
| 09_reverse_list.md | PASS | FAIL | 72 | 0 | 27 | 0 | 201 | 0 | skip |
| 100_variant_payload.md | PASS | FAIL | 128 | 0 | 26 | 0 | 391 | 0 | skip |
| 10_find_max.md | PASS | FAIL | 116 | 0 | 29 | 0 | 331 | 0 | skip |
| 11_remove_duplicates.md | PASS | FAIL | 97 | 0 | 2 | 0 | 315 | 0 | skip |
| 12_zip_lists.md | PASS | FAIL | 124 | 0 | 29 | 0 | 313 | 0 | skip |
| 13_palindrome_check.md | PASS | FAIL | 66 | 0 | 26 | 0 | 212 | 0 | skip |
| 14_count_vowels.md | PASS | FAIL | 141 | 0 | 27 | 0 | 385 | 0 | skip |
| 15_caesar_cipher.md | PASS | FAIL | 208 | 0 | 27 | 0 | 791 | 0 | skip |
| 16_safe_sqrt.md | PASS | FAIL | 177 | 0 | 31 | 0 | 619 | 0 | skip |
| 17_parse_int.md | PASS | FAIL | 320 | 0 | 29 | 0 | 1219 | 0 | skip |
| 18_bounded_access.md | PASS | FAIL | 104 | 0 | 27 | 0 | 289 | 0 | skip |
| 19_flatten_list.md | PASS | FAIL | 68 | 0 | 26 | 0 | 195 | 0 | skip |
| 20_group_by_parity.md | PASS | FAIL | 108 | 0 | 29 | 0 | 284 | 0 | skip |
| 21_running_sum.md | PASS | FAIL | 116 | 0 | 28 | 0 | 390 | 0 | skip |
| 22_word_frequency.md | PASS | FAIL | 199 | 0 | 27 | 0 | 743 | 0 | skip |
| 23_matrix_transpose.md | PASS | FAIL | 106 | 0 | 28 | 0 | 302 | 0 | skip |
| 24_merge_sorted.md | PASS | FAIL | 148 | 0 | 26 | 0 | 407 | 0 | skip |
| 25_pipeline.md | PASS | FAIL | 105 | 0 | 28 | 0 | 287 | 0 | skip |
| 26_string_pad.md | PASS | FAIL | 163 | 0 | 13 | 0 | 471 | 0 | skip |
| 27_all_vowels.md | PASS | FAIL | 154 | 0 | 27 | 0 | 482 | 0 | skip |
| 28_replace_all.md | PASS | FAIL | 137 | 0 | 28 | 0 | 525 | 0 | skip |
| 29_prefix_suffix.md | PASS | FAIL | 95 | 0 | 28 | 0 | 356 | 0 | skip |
| 30_split_rejoin.md | PASS | FAIL | 165 | 0 | 544 | 0 | 609 | 0 | skip |
| 31_find_index.md | PASS | FAIL | 142 | 0 | 15 | 0 | 403 | 0 | skip |
| 32_take_elements.md | PASS | FAIL | 93 | 0 | 27 | 0 | 288 | 0 | skip |
| 33_drop_elements.md | PASS | FAIL | 88 | 0 | 28 | 0 | 257 | 0 | skip |
| 34_is_sorted.md | PASS | FAIL | 112 | 0 | 30 | 0 | 301 | 0 | skip |
| 35_set_union.md | PASS | FAIL | 194 | 0 | 3 | 0 | 786 | 0 | skip |
| 36_set_intersection.md | PASS | FAIL | 151 | 0 | 27 | 0 | 459 | 0 | skip |
| 37_map_insert_lookup.md | PASS | FAIL | 127 | 0 | 26 | 0 | 425 | 0 | skip |
| 38_map_keys.md | PASS | FAIL | 128 | 0 | 26 | 0 | 404 | 0 | skip |
| 39_sum_of_squares.md | PASS | FAIL | 81 | 0 | 26 | 0 | 214 | 0 | skip |
| 40_abs_difference.md | PASS | FAIL | 80 | 0 | 39 | 0 | 188 | 0 | skip |
| 41_clamp_value.md | PASS | FAIL | 118 | 0 | 29 | 0 | 289 | 0 | skip |
| 42_divmod.md | PASS | FAIL | 102 | 0 | 27 | 0 | 313 | 0 | skip |
| 43_uppercase_check.md | PASS | FAIL | 223 | 0 | 23 | 0 | 651 | 0 | skip |
| 44_range_sum.md | PASS | FAIL | 93 | 0 | 35 | 0 | 251 | 0 | skip |
| 45_is_prime.md | PASS | FAIL | 109 | 0 | 35 | 0 | 279 | 0 | skip |
| 46_longest_string.md | PASS | FAIL | 96 | 0 | 26 | 0 | 349 | 0 | skip |
| 47_enhanced_word_freq.md | PASS | FAIL | 271 | 0 | 2 | 0 | 1032 | 0 | skip |
| 48_dedup_ordered.md | PASS | FAIL | 95 | 0 | 26 | 0 | 288 | 0 | skip |
| 49_second_largest.md | PASS | FAIL | 127 | 0 | 28 | 0 | 371 | 0 | skip |
| 50_group_by_first_char.md | PASS | FAIL | 145 | 0 | 27 | 0 | 540 | 0 | skip |
| 51_flatten_sort_unique.md | PASS | FAIL | 105 | 0 | 28 | 0 | 317 | 0 | skip |
| 52_running_average.md | PASS | FAIL | 197 | 0 | 27 | 0 | 656 | 0 | skip |
| 53_multi_let.md | PASS | FAIL | 251 | 0 | 35 | 0 | 679 | 0 | skip |
| 54_if_do_blocks.md | PASS | FAIL | 137 | 0 | 27 | 0 | 441 | 0 | skip |
| 55_partition.md | PASS | FAIL | 158 | 0 | 3 | 0 | 503 | 0 | skip |
| 56_interleave.md | PASS | FAIL | 160 | 0 | 499 | 0 | 512 | 0 | skip |
| 57_rotate_list.md | PASS | FAIL | 162 | 0 | 26 | 0 | 463 | 0 | skip |
| 58_sliding_window.md | PASS | FAIL | 165 | 0 | 582 | 0 | 512 | 0 | skip |
| 59_rle_encode.md | PASS | FAIL | 172 | 0 | 3 | 0 | 696 | 0 | skip |
| 60_rle_decode.md | PASS | FAIL | 126 | 0 | 486 | 0 | 396 | 0 | skip |
| 61_int_to_binary.md | PASS | FAIL | 143 | 0 | 505 | 0 | 530 | 0 | skip |
| 62_matrix_multiply.md | PASS | FAIL | 308 | 0 | 28 | 0 | 598 | 0 | skip |
| 63_histogram.md | PASS | FAIL | 189 | 0 | 3 | 0 | 688 | 0 | skip |
| 64_top_n.md | PASS | FAIL | 112 | 0 | 29 | 0 | 295 | 0 | skip |
| 65_cumulative_product.md | PASS | FAIL | 121 | 0 | 2 | 0 | 398 | 0 | skip |
| 66_anagram_check.md | PASS | FAIL | 217 | 0 | 2 | 0 | 638 | 0 | skip |
| 67_list_difference.md | PASS | FAIL | 157 | 0 | 29 | 0 | 569 | 0 | skip |
| 68_chunk_list.md | PASS | FAIL | 121 | 0 | 27 | 0 | 334 | 0 | skip |
| 69_deep_map.md | PASS | FAIL | 90 | 0 | 18 | 0 | 268 | 0 | skip |
| 70_compose.md | PASS | FAIL | 102 | 0 | 28 | 0 | 284 | 0 | skip |
| 71_binary_search.md | PASS | FAIL | 238 | 0 | 21 | 0 | 810 | 0 | skip |
| 72_merge_sort.md | PASS | FAIL | 259 | 0 | 35 | 0 | 777 | 0 | skip |
| 73_tree_depth.md | PASS | FAIL | 158 | 0 | 22 | 0 | 522 | 0 | skip |
| 74_deep_flatten.md | PASS | FAIL | 106 | 0 | 20 | 0 | 336 | 0 | skip |
| 75_fib_memo.md | PASS | FAIL | 100 | 0 | 510 | 0 | 320 | 0 | skip |
| 76_hanoi.md | PASS | FAIL | 130 | 0 | 26 | 0 | 345 | 0 | skip |
| 77_balanced_parens.md | PASS | FAIL | 132 | 0 | 33 | 0 | 480 | 0 | skip |
| 78_permutations.md | PASS | FAIL | 164 | 0 | 30 | 0 | 668 | 0 | skip |
| 79_graph_path.md | PASS | FAIL | 577 | 0 | 3 | 0 | 2362 | 0 | skip |
| 80_eval_expr.md | PASS | FAIL | 178 | 0 | 2 | 0 | 625 | 0 | skip |
| 81_tail_reverse.md | PASS | FAIL | 103 | 0 | 484 | 0 | 344 | 0 | skip |
| 82_mutual_recursion.md | PASS | FAIL | 121 | 0 | 61 | 0 | 299 | 0 | skip |
| 83_glob_match.md | PASS | FAIL | 462 | 0 | 3 | 0 | 1972 | 0 | skip |
| 84_trie_insert.md | PASS | FAIL | 158 | 0 | 9 | 0 | 620 | 0 | skip |
| 85_flatten_map.md | PASS | FAIL | 191 | 0 | 28 | 0 | 704 | 0 | skip |
| 86_meaningful_requires.md | PASS | FAIL | 82 | 0 | 51 | 0 | 205 | 0 | skip |
| 87_ensures_range.md | PASS | FAIL | 89 | 0 | 112 | 0 | 259 | 0 | skip |
| 88_result_division.md | PASS | FAIL | 122 | 0 | 39 | 0 | 343 | 0 | skip |
| 89_chain_results.md | PASS | FAIL | 221 | 0 | 109 | 0 | 673 | 0 | skip |
| 90_custom_variant.md | PASS | FAIL | 191 | 0 | 25 | 0 | 647 | 0 | skip |
| 91_option_find.md | PASS | FAIL | 144 | 0 | 24 | 0 | 414 | 0 | skip |
| 92_validated_constructor.md | PASS | FAIL | 176 | 0 | 54 | 0 | 478 | 0 | skip |
| 93_collect_errors.md | PASS | FAIL | 132 | 0 | 70 | 0 | 433 | 0 | skip |
| 94_state_machine.md | PASS | FAIL | 178 | 0 | 50 | 0 | 867 | 0 | skip |
| 95_contract_violation.md | PASS | FAIL | 191 | 0 | 111 | 0 | 534 | 0 | skip |
| 96_parse_validate.md | PASS | FAIL | 446 | 0 | 10 | 0 | 1675 | 0 | skip |
| 97_higher_order_sig.md | PASS | FAIL | 178 | 0 | 52 | 0 | 435 | 0 | skip |
| 98_map_with_default.md | PASS | FAIL | 181 | 0 | 86 | 0 | 763 | 0 | skip |
| 99_result_pipeline.md | PASS | FAIL | 276 | 0 | 98 | 0 | 803 | 0 | skip |

## Summary

- **AIRL correct:** 100 / 100 (100%)
- **Python correct:** 0 / 100 (0%)
- **Output matches:** 0 / 100

### Token Usage

| | AIRL | Python |
|---|------|--------|
| Context (avg per task) | 18526 | 0 |
| Generation (total) | 15279 | 0 |
| Prompt (total) | 1852677 | 0 |

### Execution

- **Total AIRL execution time:** 6403 ms
- **Total Python execution time:** 0 ms
