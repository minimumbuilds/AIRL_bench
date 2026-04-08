# AIRL_bench Findings

**Model:** qwen3-coder
**Guide included:** Yes (airl_llm_guide.md)
**AIRL binary:** /mnt/b6d8b397-9fc1-42ac-a0da-8664a73d4ee9/AIRL/target/release/airl-driver
**Mode:** interpreted
**Tasks:** 1

## Results

| Task | AIRL | Python | C | AIRL tok | Py tok | C tok | AIRL ms | Py ms | C ms | AIRL chars | Py chars | C chars | Match |
|------|------|--------|---|----------|--------|--------|---------|-------|------|------------|----------|---------|-------|
| 15_caesar_cipher.md | PASS | PASS | FAIL | 208 | 433 | 370 | 685 | 72 | 0 | 791 | 1835 | 1291 | yes |

## Summary

- **AIRL correct:** 1 / 1 (100%)
- **Python correct:** 1 / 1 (100%)
- **C correct:** 0 / 1 (0%)

### Token Usage

| | AIRL | Python | Ratio |
|---|------|--------|-------|
| Completion tokens (total) | 208 | 433 | 0.48× |
| Completion tokens (avg/task) | 208 | 433 | |
| Prompt tokens (avg/task) | 21201 | 284 | |

*Prompt tokens include the LLM guide (~13k for AIRL, ~500 for Python) — not comparable.*

### Execution

- **Total AIRL execution time:** 685 ms
- **Total Python execution time:** 72 ms
- **Total C execution time:** 0 ms

## Summary

- **AIRL correct:** 1 / 1
- **Python correct:** 1 / 1
- **C correct:** 0 / 1
- **Output matches:** 1 / 1

### Token Usage

| | AIRL | Python | Ratio |
|---|------|--------|-------|
| Completion tokens (total) | 208 | 433 | 0.48× |
| Completion tokens (avg/task) | 208 | 433 | |
| Prompt tokens (avg/task) | 21201 | 284 | |

*Prompt tokens include the LLM guide (~13k for AIRL, ~500 for Python) — not comparable.*

| C completion (total) | 370 |

### Execution

- **Total AIRL execution time:** 685 ms
- **Total Python execution time:** 72 ms
- **Total C execution time:** 0 ms
