# Run 007: Sonnet 4.6 — Condensed Reference Only

**Date:** 2026-03-24
**Model:** claude-sonnet-4-6
**Guide included:** No
**Few-shot:** No
**AIRL context:** Condensed 115-line reference only (prompts/airl_system.md)

## Results

| Task | AIRL |
|------|------|
| 01_safe_divide.md | PASS |
| 02_fibonacci.md | PASS |
| 03_list_processing.md | PASS |
| 04_input_validation.md | PASS |
| 05_string_tokenizer.md | PASS |
| 06_absolute_value.md | PASS |
| 07_gcd.md | PASS |
| 08_power.md | PASS |
| 09_reverse_list.md | PASS |
| 10_find_max.md | PASS |
| 11_remove_duplicates.md | PASS |
| 12_zip_lists.md | PASS |
| 13_palindrome_check.md | PASS |
| 14_count_vowels.md | PASS |
| 15_caesar_cipher.md | PASS |
| 16_safe_sqrt.md | PASS |
| 17_parse_int.md | FAIL |
| 18_bounded_access.md | PASS |
| 19_flatten_list.md | PASS |
| 20_group_by_parity.md | PASS |
| 21_running_sum.md | PASS |
| 22_word_frequency.md | PASS |
| 23_matrix_transpose.md | PASS |
| 24_merge_sorted.md | PASS |
| 25_pipeline.md | PASS |

## Summary

- **AIRL correct:** 24 / 25 (96%)

## Findings

Sonnet 4.6 achieves 96% with only the 115-line condensed reference — no LLM guide, no few-shot examples needed. This matches the original benchmark findings from the AIRL repo.

The single failure (parse_int) is a task that also fails consistently for qwen3-coder. It requires character-to-integer conversion which AIRL doesn't natively support.
