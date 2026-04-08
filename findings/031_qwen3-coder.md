# AIRL_bench Findings

**Model:** qwen3-coder
**Guide included:** Yes (airl_llm_guide.md)
**AIRL binary:** /mnt/b6d8b397-9fc1-42ac-a0da-8664a73d4ee9/AIRL/target/release/airl-driver
**Mode:** interpreted
**Tasks:** 1

## Results

| Task | AIRL | Python | C | AIRL tok | Py tok | C tok | AIRL ms | Py ms | C ms | AIRL chars | Py chars | C chars | Match |
|------|------|--------|---|----------|--------|--------|---------|-------|------|------------|----------|---------|-------|
| 100_variant_payload.md | FAIL | PASS | FAIL | 128 | 562 | 908 | 19 | 42 | 0 | 391 | 2367 | 3768 | skip |

## Summary

- **AIRL correct:** 0 / 1 (0%)
- **Python correct:** 1 / 1 (100%)
- **C correct:** 0 / 1 (0%)

### Token Usage

| | AIRL | Python | Ratio |
|---|------|--------|-------|
| Completion tokens (total) | 128 | 562 | 0.22× |
| Completion tokens (avg/task) | 128 | 562 | |
| Prompt tokens (avg/task) | 21288 | 371 | |

*Prompt tokens include the LLM guide (~13k for AIRL, ~500 for Python) — not comparable.*

### Execution

- **Total AIRL execution time:** 19 ms
- **Total Python execution time:** 42 ms
- **Total C execution time:** 0 ms

## Summary

- **AIRL correct:** 0 / 1
- **Python correct:** 1 / 1
- **C correct:** 0 / 1
- **Output matches:** 0 / 1

### Token Usage

| | AIRL | Python | Ratio |
|---|------|--------|-------|
| Completion tokens (total) | 128 | 562 | 0.22× |
| Completion tokens (avg/task) | 128 | 562 | |
| Prompt tokens (avg/task) | 21288 | 371 | |

*Prompt tokens include the LLM guide (~13k for AIRL, ~500 for Python) — not comparable.*

| C completion (total) | 908 |

### Execution

- **Total AIRL execution time:** 19 ms
- **Total Python execution time:** 42 ms
- **Total C execution time:** 0 ms
