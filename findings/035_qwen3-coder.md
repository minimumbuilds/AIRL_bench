# AIRL_bench Findings

**Model:** qwen3-coder
**Guide included:** Yes (airl_llm_guide.md)
**AIRL binary:** /mnt/b6d8b397-9fc1-42ac-a0da-8664a73d4ee9/AIRL/target/release/airl-driver
**Mode:** interpreted
**Tasks:** 1

## Results

| Task | AIRL | Python | C | AIRL tok | Py tok | C tok | AIRL ms | Py ms | C ms | AIRL chars | Py chars | C chars | Match |
|------|------|--------|---|----------|--------|--------|---------|-------|------|------------|----------|---------|-------|
| 103_state_machine.md | FAIL | PASS | FAIL | 247 | 453 | 451 | 5 | 47 | 0 | 948 | 2186 | 2048 | skip |

## Summary

- **AIRL correct:** 0 / 1 (0%)
- **Python correct:** 1 / 1 (100%)
- **C correct:** 0 / 1 (0%)

### Token Usage

| | AIRL | Python | Ratio |
|---|------|--------|-------|
| Completion tokens (total) | 247 | 453 | 0.54× |
| Completion tokens (avg/task) | 247 | 453 | |
| Prompt tokens (avg/task) | 21168 | 251 | |

*Prompt tokens include the LLM guide (~13k for AIRL, ~500 for Python) — not comparable.*

### Execution

- **Total AIRL execution time:** 5 ms
- **Total Python execution time:** 47 ms
- **Total C execution time:** 0 ms

## Summary

- **AIRL correct:** 0 / 1
- **Python correct:** 1 / 1
- **C correct:** 0 / 1
- **Output matches:** 0 / 1

### Token Usage

| | AIRL | Python | Ratio |
|---|------|--------|-------|
| Completion tokens (total) | 247 | 453 | 0.54× |
| Completion tokens (avg/task) | 247 | 453 | |
| Prompt tokens (avg/task) | 21168 | 251 | |

*Prompt tokens include the LLM guide (~13k for AIRL, ~500 for Python) — not comparable.*

| C completion (total) | 451 |

### Execution

- **Total AIRL execution time:** 5 ms
- **Total Python execution time:** 47 ms
- **Total C execution time:** 0 ms
