# AIRL_bench Findings

**Model:** qwen3-coder
**Guide included:** Yes (airl_llm_guide.md)
**AIRL binary:** /mnt/b6d8b397-9fc1-42ac-a0da-8664a73d4ee9/AIRL/target/release/airl-driver
**Mode:** interpreted
**Tasks:** 1

## Results

| Task | AIRL | Python | C | AIRL tok | Py tok | C tok | AIRL ms | Py ms | C compile | C ms | AIRL chars | Py chars | C chars | Match |
|------|------|--------|---|----------|--------|--------|---------|-------|-----------|------|------------|----------|---------|-------|
| 01_safe_divide.md | PASS | PASS | PASS | 121 | 203 | 138 | 2272 | 68 | 439 | 331 | 334 | 778 | 448 | skip |

## Summary

- **AIRL correct:** 1 / 1 (100%)
- **Python correct:** 1 / 1 (100%)
- **C correct:** 1 / 1 (100%)

### Execution

- **Total AIRL execution time:** 2272 ms
- **Total Python execution time:** 68 ms
- **Total C execution time:** 331 ms

## Summary

- **AIRL correct:** 1 / 1
- **Python correct:** 1 / 1
- **C correct:** 1 / 1
- **Output matches:** 0 / 1

### Token Usage

| | AIRL | Python | C |
|---|------|--------|---|
| Generation (total) | 121 | 203 | 138 |

### Execution

- **Total AIRL execution time:** 2272 ms
- **Total Python execution time:** 68 ms
- **Total C execution time:** 331 ms
- **Total C compile time:** 439 ms
