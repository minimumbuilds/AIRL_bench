# AIRL_bench Findings

**Model:** qwen3-coder
**Guide included:** Yes (airl_llm_guide.md)
**AIRL binary:** /mnt/b6d8b397-9fc1-42ac-a0da-8664a73d4ee9/AIRL/target/release/airl-driver
**Mode:** interpreted
**Tasks:** 100

## Results

| Task | AIRL | Python | AIRL gen tok | Py gen tok | AIRL ms | Py ms | AIRL chars | Py chars | Output Match |
|------|------|--------|-------------|------------|---------|-------|------------|----------|-------------|
| 01_safe_divide.md | FAIL | PASS | 0 | 205 | 0 | 40 | 0 | 739 | skip |
| 02_fibonacci.md | FAIL | PASS | 0 | 129 | 0 | 39 | 0 | 384 | skip |
| 03_list_processing.md | FAIL | PASS | 0 | 389 | 0 | 39 | 0 | 1321 | skip |
| 04_input_validation.md | FAIL | PASS | 0 | 177 | 0 | 39 | 0 | 657 | skip |
| 05_string_tokenizer.md | FAIL | PASS | 0 | 216 | 0 | 39 | 0 | 913 | skip |
| 06_absolute_value.md | FAIL | PASS | 0 | 172 | 0 | 40 | 0 | 628 | skip |
| 07_gcd.md | FAIL | PASS | 0 | 267 | 0 | 39 | 0 | 866 | skip |
| 08_power.md | FAIL | PASS | 0 | 310 | 0 | 40 | 0 | 1016 | skip |
| 09_reverse_list.md | FAIL | PASS | 0 | 271 | 0 | 41 | 0 | 1100 | skip |
| 100_variant_payload.md | FAIL | PASS | 0 | 439 | 0 | 39 | 0 | 1832 | skip |
| 10_find_max.md | FAIL | PASS | 0 | 315 | 0 | 40 | 0 | 1188 | skip |
| 11_remove_duplicates.md | FAIL | PASS | 0 | 230 | 0 | 40 | 0 | 1049 | skip |
| 12_zip_lists.md | FAIL | PASS | 0 | 256 | 0 | 41 | 0 | 953 | skip |
| 13_palindrome_check.md | FAIL | PASS | 0 | 277 | 0 | 40 | 0 | 1122 | skip |
| 14_count_vowels.md | FAIL | PASS | 0 | 212 | 0 | 40 | 0 | 766 | skip |
| 15_caesar_cipher.md | FAIL | PASS | 0 | 390 | 0 | 41 | 0 | 1610 | skip |
| 16_safe_sqrt.md | FAIL | PASS | 0 | 464 | 0 | 42 | 0 | 1805 | skip |
| 17_parse_int.md | FAIL | PASS | 0 | 378 | 0 | 39 | 0 | 1527 | skip |
| 18_bounded_access.md | FAIL | PASS | 0 | 272 | 0 | 39 | 0 | 966 | skip |
| 19_flatten_list.md | FAIL | PASS | 0 | 280 | 0 | 40 | 0 | 1020 | skip |
| 20_group_by_parity.md | FAIL | PASS | 0 | 389 | 0 | 41 | 0 | 1580 | skip |
| 21_running_sum.md | FAIL | PASS | 0 | 309 | 0 | 44 | 0 | 1151 | skip |
| 22_word_frequency.md | FAIL | PASS | 0 | 200 | 0 | 41 | 0 | 907 | skip |
| 23_matrix_transpose.md | FAIL | PASS | 0 | 417 | 0 | 45 | 0 | 1713 | skip |
| 24_merge_sorted.md | FAIL | PASS | 0 | 433 | 0 | 42 | 0 | 1483 | skip |
| 25_pipeline.md | FAIL | PASS | 0 | 198 | 0 | 40 | 0 | 790 | skip |
| 26_string_pad.md | FAIL | PASS | 0 | 296 | 0 | 39 | 0 | 1196 | skip |
| 27_all_vowels.md | FAIL | PASS | 0 | 219 | 0 | 40 | 0 | 814 | skip |
| 28_replace_all.md | FAIL | PASS | 0 | 294 | 0 | 42 | 0 | 1251 | skip |
| 29_prefix_suffix.md | FAIL | PASS | 0 | 249 | 0 | 42 | 0 | 1082 | skip |
| 30_split_rejoin.md | FAIL | PASS | 0 | 236 | 0 | 39 | 0 | 949 | skip |
| 31_find_index.md | FAIL | PASS | 0 | 313 | 0 | 43 | 0 | 1064 | skip |
| 32_take_elements.md | FAIL | PASS | 0 | 164 | 0 | 39 | 0 | 721 | skip |
| 33_drop_elements.md | FAIL | PASS | 0 | 349 | 0 | 40 | 0 | 1202 | skip |
| 34_is_sorted.md | FAIL | PASS | 0 | 336 | 0 | 43 | 0 | 1258 | skip |
| 35_set_union.md | FAIL | PASS | 0 | 267 | 0 | 40 | 0 | 1112 | skip |
| 36_set_intersection.md | FAIL | PASS | 0 | 382 | 0 | 42 | 0 | 1428 | skip |
| 37_map_insert_lookup.md | FAIL | PASS | 0 | 247 | 0 | 126 | 0 | 1004 | skip |
| 38_map_keys.md | FAIL | PASS | 0 | 225 | 0 | 86 | 0 | 816 | skip |
| 39_sum_of_squares.md | FAIL | PASS | 0 | 247 | 0 | 62 | 0 | 929 | skip |
| 40_abs_difference.md | FAIL | PASS | 0 | 259 | 0 | 79 | 0 | 1001 | skip |
| 41_clamp_value.md | FAIL | PASS | 0 | 270 | 0 | 115 | 0 | 1077 | skip |
| 42_divmod.md | FAIL | PASS | 0 | 294 | 0 | 43 | 0 | 1069 | skip |
| 43_uppercase_check.md | FAIL | PASS | 0 | 264 | 0 | 46 | 0 | 1170 | skip |
| 44_range_sum.md | FAIL | PASS | 0 | 303 | 0 | 46 | 0 | 1154 | skip |
| 45_is_prime.md | FAIL | PASS | 0 | 305 | 0 | 43 | 0 | 1121 | skip |
| 46_longest_string.md | FAIL | PASS | 0 | 244 | 0 | 49 | 0 | 1075 | skip |
| 47_enhanced_word_freq.md | FAIL | PASS | 0 | 322 | 0 | 44 | 0 | 1242 | skip |
| 48_dedup_ordered.md | FAIL | PASS | 0 | 370 | 0 | 42 | 0 | 1287 | skip |
| 49_second_largest.md | FAIL | PASS | 0 | 258 | 0 | 42 | 0 | 1055 | skip |
| 50_group_by_first_char.md | FAIL | PASS | 0 | 303 | 0 | 113 | 0 | 1395 | skip |
| 51_flatten_sort_unique.md | FAIL | PASS | 0 | 356 | 0 | 40 | 0 | 1395 | skip |
| 52_running_average.md | FAIL | PASS | 0 | 210 | 0 | 42 | 0 | 949 | skip |
| 53_multi_let.md | FAIL | PASS | 0 | 292 | 0 | 98 | 0 | 996 | skip |
| 54_if_do_blocks.md | FAIL | PASS | 0 | 327 | 0 | 40 | 0 | 1057 | skip |
| 55_partition.md | FAIL | PASS | 0 | 297 | 0 | 40 | 0 | 1331 | skip |
| 56_interleave.md | FAIL | PASS | 0 | 282 | 0 | 38 | 0 | 1140 | skip |
| 57_rotate_list.md | FAIL | PASS | 0 | 345 | 0 | 95 | 0 | 1054 | skip |
| 58_sliding_window.md | FAIL | PASS | 0 | 313 | 0 | 38 | 0 | 1291 | skip |
| 59_rle_encode.md | FAIL | PASS | 0 | 399 | 0 | 40 | 0 | 1327 | skip |
| 60_rle_decode.md | FAIL | PASS | 0 | 276 | 0 | 39 | 0 | 1162 | skip |
| 61_int_to_binary.md | FAIL | PASS | 0 | 205 | 0 | 40 | 0 | 640 | skip |
| 62_matrix_multiply.md | FAIL | PASS | 0 | 447 | 0 | 40 | 0 | 1226 | skip |
| 63_histogram.md | FAIL | PASS | 0 | 245 | 0 | 40 | 0 | 843 | skip |
| 64_top_n.md | FAIL | PASS | 0 | 404 | 0 | 40 | 0 | 1545 | skip |
| 65_cumulative_product.md | FAIL | PASS | 0 | 275 | 0 | 40 | 0 | 1049 | skip |
| 66_anagram_check.md | FAIL | PASS | 0 | 415 | 0 | 42 | 0 | 1609 | skip |
| 67_list_difference.md | FAIL | PASS | 0 | 388 | 0 | 39 | 0 | 1442 | skip |
| 68_chunk_list.md | FAIL | PASS | 0 | 288 | 0 | 39 | 0 | 948 | skip |
| 69_deep_map.md | FAIL | PASS | 0 | 209 | 0 | 40 | 0 | 930 | skip |
| 70_compose.md | FAIL | PASS | 0 | 248 | 0 | 39 | 0 | 1019 | skip |
| 71_binary_search.md | FAIL | PASS | 0 | 474 | 0 | 39 | 0 | 1638 | skip |
| 72_merge_sort.md | FAIL | PASS | 0 | 530 | 0 | 39 | 0 | 2174 | skip |
| 73_tree_depth.md | FAIL | PASS | 0 | 284 | 0 | 39 | 0 | 1024 | skip |
| 74_deep_flatten.md | FAIL | PASS | 0 | 324 | 0 | 39 | 0 | 1187 | skip |
| 75_fib_memo.md | FAIL | PASS | 0 | 150 | 0 | 39 | 0 | 442 | skip |
| 76_hanoi.md | FAIL | PASS | 0 | 254 | 0 | 41 | 0 | 920 | skip |
| 77_balanced_parens.md | FAIL | PASS | 0 | 268 | 0 | 39 | 0 | 1069 | skip |
| 78_permutations.md | FAIL | PASS | 0 | 375 | 0 | 97 | 0 | 1608 | skip |
| 79_graph_path.md | FAIL | PASS | 0 | 425 | 0 | 39 | 0 | 1948 | skip |
| 80_eval_expr.md | FAIL | PASS | 0 | 429 | 0 | 39 | 0 | 1785 | skip |
| 81_tail_reverse.md | FAIL | PASS | 0 | 243 | 0 | 39 | 0 | 1131 | skip |
| 82_mutual_recursion.md | FAIL | PASS | 0 | 348 | 0 | 38 | 0 | 1304 | skip |
| 83_glob_match.md | FAIL | PASS | 0 | 400 | 0 | 39 | 0 | 1685 | skip |
| 84_trie_insert.md | FAIL | PASS | 0 | 193 | 0 | 40 | 0 | 846 | skip |
| 85_flatten_map.md | FAIL | PASS | 0 | 229 | 0 | 39 | 0 | 1091 | skip |
| 86_meaningful_requires.md | FAIL | PASS | 0 | 212 | 0 | 40 | 0 | 685 | skip |
| 87_ensures_range.md | FAIL | PASS | 0 | 212 | 0 | 40 | 0 | 724 | skip |
| 88_result_division.md | FAIL | PASS | 0 | 371 | 0 | 46 | 0 | 1399 | skip |
| 89_chain_results.md | FAIL | PASS | 0 | 360 | 0 | 39 | 0 | 1328 | skip |
| 90_custom_variant.md | FAIL | PASS | 0 | 430 | 0 | 40 | 0 | 1857 | skip |
| 91_option_find.md | FAIL | PASS | 0 | 175 | 0 | 38 | 0 | 721 | skip |
| 92_validated_constructor.md | FAIL | PASS | 0 | 383 | 0 | 40 | 0 | 1397 | skip |
| 93_collect_errors.md | FAIL | PASS | 0 | 354 | 0 | 95 | 0 | 1466 | skip |
| 94_state_machine.md | FAIL | PASS | 0 | 318 | 0 | 40 | 0 | 1302 | skip |
| 95_contract_violation.md | FAIL | PASS | 0 | 202 | 0 | 40 | 0 | 773 | skip |
| 96_parse_validate.md | FAIL | PASS | 0 | 691 | 0 | 39 | 0 | 2286 | skip |
| 97_higher_order_sig.md | FAIL | PASS | 0 | 231 | 0 | 39 | 0 | 745 | skip |
| 98_map_with_default.md | FAIL | PASS | 0 | 237 | 0 | 39 | 0 | 963 | skip |
| 99_result_pipeline.md | FAIL | PASS | 0 | 379 | 0 | 46 | 0 | 1462 | skip |

## Summary

- **AIRL correct:** 0 / 100 (0%)
- **Python correct:** 100 / 100 (100%)
- **Output matches:** 0 / 100

### Token Usage

| | AIRL | Python |
|---|------|--------|
| Context (avg per task) | 0 | 314 |
| Generation (total) | 0 | 30313 |
| Prompt (total) | 0 | 31477 |

### Execution

- **Total AIRL execution time:** 0 ms
- **Total Python execution time:** 4610 ms
