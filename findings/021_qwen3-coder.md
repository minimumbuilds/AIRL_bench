# AIRL_bench Findings

**Model:** qwen3-coder
**Guide included:** Yes (airl_llm_guide.md)
**AIRL binary:** /mnt/b6d8b397-9fc1-42ac-a0da-8664a73d4ee9/AIRL/target/release/airl-driver
**Mode:** interpreted
**Tasks:** 1

## Results

| Task | AIRL | Python | AIRL gen tok | Py gen tok | AIRL ms | Py ms | AIRL chars | Py chars | Output Match |
|------|------|--------|-------------|------------|---------|-------|------------|----------|-------------|
| 28_replace_all.md | PASS | FAIL | 137 | 0 | 3 | 0 | 528 | 0 | skip |

## Summary

- **AIRL correct:** 1 / 1 (100%)
- **Python correct:** 0 / 1 (0%)
- **Output matches:** 0 / 1

### Token Usage

| | AIRL | Python |
|---|------|--------|
| Context (avg per task) | 18518 | 0 |
| Generation (total) | 137 | 0 |
| Prompt (total) | 18518 | 0 |

### Execution

- **Total AIRL execution time:** 3 ms
- **Total Python execution time:** 0 ms
