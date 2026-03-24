# Run 001: qwen3-coder — No Language Guide

**Date:** 2026-03-24
**Model:** qwen3-coder (30.5B, Q4_K_M)
**Host:** localhost:11434 (Ollama)

## Parameters

- **AIRL context:** Condensed 115-line reference only (`prompts/airl_system.md`)
- **Python context:** Standard Python generation prompt (`prompts/python_system.md`)
- **LLM Guide included:** No
- **Tasks:** 25 (standard benchmark suite)
- **AIRL binary:** Not on PATH (caused all AIRL executions to fail with "command not found")

## Results

| Task | AIRL | Python | AIRL Tokens | Py Tokens | AIRL ms | Py ms | AIRL chars | Py chars |
|------|------|--------|-------------|-----------|---------|-------|------------|----------|
| 01_safe_divide.md | FAIL | PASS | 1369 | 495 | 0 | 40 | 253 | 751 |
| 02_fibonacci.md | FAIL | PASS | 1357 | 431 | 0 | 40 | 227 | 438 |
| 03_list_processing.md | FAIL | PASS | 1411 | 659 | 0 | 38 | 306 | 1228 |
| 04_input_validation.md | FAIL | PASS | 1385 | 471 | 0 | 41 | 308 | 657 |
| 05_string_tokenizer.md | FAIL | PASS | 1342 | 550 | 0 | 40 | 335 | 1137 |
| 06_absolute_value.md | FAIL | PASS | 1313 | 448 | 1 | 39 | 155 | 628 |
| 07_gcd.md | FAIL | PASS | 1358 | 498 | 1 | 40 | 247 | 785 |
| 08_power.md | FAIL | PASS | 1366 | 569 | 0 | 40 | 336 | 1068 |
| 09_reverse_list.md | FAIL | PASS | 1348 | 555 | 1 | 39 | 257 | 1092 |
| 10_find_max.md | FAIL | PASS | 1381 | 626 | 1 | 39 | 305 | 1208 |
| 11_remove_duplicates.md | FAIL | PASS | 1463 | 535 | 0 | 40 | 729 | 1049 |
| 12_zip_lists.md | FAIL | PASS | 1543 | 748 | 1 | 39 | 641 | 1292 |
| 13_palindrome_check.md | FAIL | PASS | 1503 | 519 | 0 | 39 | 835 | 1004 |
| 14_count_vowels.md | FAIL | PASS | 1411 | 552 | 0 | 41 | 484 | 1073 |
| 15_caesar_cipher.md | FAIL | PASS | 1689 | 676 | 1 | 40 | 1611 | 1626 |
| 16_safe_sqrt.md | FAIL | PASS | 1420 | 986 | 0 | 40 | 348 | 2420 |
| 17_parse_int.md | FAIL | PASS | 1723 | 627 | 0 | 40 | 1357 | 1337 |
| 18_bounded_access.md | FAIL | PASS | 1435 | 612 | 1 | 40 | 388 | 1004 |
| 19_flatten_list.md | FAIL | PASS | 1367 | 593 | 0 | 39 | 267 | 1067 |
| 20_group_by_parity.md | FAIL | PASS | 1512 | 708 | 0 | 40 | 672 | 1582 |
| 21_running_sum.md | FAIL | PASS | 1364 | 601 | 0 | 40 | 301 | 1140 |
| 22_word_frequency.md | FAIL | PASS | 1463 | 477 | 0 | 39 | 755 | 907 |
| 23_matrix_transpose.md | FAIL | PASS | 1556 | 665 | 0 | 41 | 1047 | 1463 |
| 24_merge_sorted.md | FAIL | PASS | 1528 | 708 | 0 | 39 | 846 | 1377 |
| 25_pipeline.md | FAIL | PASS | 1421 | 523 | 1 | 41 | 349 | 794 |

## Summary

- **AIRL correct:** 0 / 25 (0%)
- **Python correct:** 25 / 25 (100%)
- **Total AIRL tokens:** 36,028
- **Total Python tokens:** 14,832
- **Total AIRL execution time:** 8 ms
- **Total Python execution time:** 995 ms

## Findings

1. **All AIRL failures were execution failures** — the `airl` binary was not on PATH, so `shell-exec` returned error for every task. The generated code itself was not evaluated.
2. **Python achieved 100% correctness** — qwen3-coder handles Python generation reliably.
3. **Token efficiency:** AIRL prompts averaged ~1,400 tokens vs Python ~590 tokens (AIRL context is smaller since the condensed reference is only 115 lines).
4. **Code compactness:** Generated AIRL code averaged 458 chars vs Python 1,057 chars — AIRL is 2.3x more compact even from an untrained model.

## Notes

- This run had a bug: `airl` was not on PATH, so AIRL execution always failed regardless of code quality.
- The 0% AIRL correctness is not representative of code generation quality — it reflects an infrastructure issue.
