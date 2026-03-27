# AIRL Benchmark Expansion Guide

**Current state:** 25 tasks, 100% pass rate (qwen3-coder, v0.6.0)
**Target:** 100 tasks across 6 difficulty tiers
**Goal:** Find where models actually fail, produce statistically meaningful comparisons

---

## Why 100 Tasks

- At 25 tasks, each task is 4% of the score. LLM generation variance alone can swing 1-2 tasks, making the difference between 92% and 100% noise.
- At 100 tasks, each task is 1%. You need ~5 simultaneous failures to move the needle, which is signal, not noise.
- Beyond 100, diminishing returns on signal-to-noise vs benchmark runtime cost.

---

## Tier Structure

### Tier 1: Stdlib Direct (20 tasks, numbered 26-45)

*"Can the model call the right function?"*

These test whether the model knows what's available in the 68-function stdlib. The existing 25 tasks are mostly this tier.

| # | Task | Key Functions Tested |
|---|------|---------------------|
| 26 | String trimming and padding | `trim`, `length`, `str` |
| 27 | Check if string contains all vowels | `contains`, `and` (nested binary) |
| 28 | Replace all occurrences in string | `replace` |
| 29 | String starts-with / ends-with check | `starts-with?`, `ends-with?` |
| 30 | Split string and rejoin with delimiter | `split`, `join` |
| 31 | Find index of element in list | `index-of` |
| 32 | Take first N elements from list | `take` |
| 33 | Drop first N elements from list | `drop` |
| 34 | Check if list is sorted | `zip`, `drop`, `all?` or fold |
| 35 | Set union of two lists | `set-from-list`, `set-union`, `set-to-list` |
| 36 | Set intersection of two lists | `set-from-list`, `set-intersection` |
| 37 | Map insert and lookup | `map-new`, `map-insert`, `map-get` |
| 38 | Get all keys from a map | `map-keys` |
| 39 | Sum of squares using map | `map`, `fold`, arithmetic |
| 40 | Absolute difference between two numbers | `abs`, `-` |
| 41 | Clamp value to range | `max`, `min` |
| 42 | Integer division with remainder | `div`, `mod`, list return |
| 43 | Convert list of chars to uppercase check | `char-at`, `length`, fold |
| 44 | Range generation | `range` |
| 45 | Check if number is prime | `mod`, recursion, `range` |

### Tier 2: Composition (25 tasks, numbered 46-70)

*"Can the model chain 2-3 operations correctly?"*

This is where models start failing — they need to get types right across function boundaries and compose multiple stdlib functions.

| # | Task | What It Tests |
|---|------|--------------|
| 46 | Find the longest string in a list | `fold` + `length` + comparison |
| 47 | Count word frequencies (enhanced) | `split` + `fold` + `map-insert` + `map-get` with default |
| 48 | Deduplicate list preserving order | `fold` + `set-contains?` + `set-insert` |
| 49 | Second-largest element | `fold` with two-value accumulator |
| 50 | Group strings by first character | `group-by` + `char-at` |
| 51 | Flatten list of lists and sort unique | `flat-map` + `unique` + `sort` |
| 52 | Compute running averages | `enumerate` + `fold` + `int-to-float` |
| 53 | Multi-binding let with computation | `let` with 3+ bindings chained |
| 54 | Nested if/do with side effects | `if` + `do` blocks for multi-expression branches |
| 55 | Partition list by predicate | `fold` returning two lists |
| 56 | Interleave two lists | Recursive zip-style merge |
| 57 | Rotate list by N positions | `take` + `drop` + `concat` |
| 58 | Sliding window average | `range` + `take` + `drop` + `fold` |
| 59 | RLE encoding | `fold` with accumulator tracking current run |
| 60 | RLE decoding | `fold` + `range` + `concat` |
| 61 | Convert integer to binary string | Recursive division + `mod` + `str` |
| 62 | Matrix multiplication (2x2) | Nested `map` + `fold` + `zip` |
| 63 | Histogram (bar chart as string) | `map` + `fold` + string repetition via fold |
| 64 | Top-N elements from list | `sort` + `take` (but sorted descending requires composition) |
| 65 | Cumulative product | `fold` returning intermediate results |
| 66 | String anagram check | `sort` on char lists + comparison |
| 67 | Difference between two lists | `filter` + `set-contains?` |
| 68 | Chunk list into groups of N | Recursive `take`/`drop` |
| 69 | Deep map — apply function to nested lists | Recursive `map` with type check |
| 70 | Compose two functions and apply | Higher-order function composition |

### Tier 3: Recursion & Data Structures (15 tasks, numbered 71-85)

*"Can the model handle AIRL's functional-only control flow?"*

No loops, no mutation. This is where Python-trained models break — they reach for `while` and `for` and have nothing.

| # | Task | What It Tests |
|---|------|--------------|
| 71 | Binary search (recursive) | Recursion + `div` + list indexing |
| 72 | Merge sort | Recursive split + merge + `take`/`drop` |
| 73 | Tree depth (from nested lists) | Recursive descent + `max` |
| 74 | Flatten arbitrarily nested structure | Recursive with variant matching |
| 75 | Fibonacci with memoization | Map-passing recursion pattern |
| 76 | Tower of Hanoi (return move list) | Classic recursion + list concatenation |
| 77 | Balanced parentheses check | Fold with counter accumulator |
| 78 | Generate all permutations | Recursive selection + `concat` |
| 79 | Path finding in adjacency list | Recursive DFS with visited set |
| 80 | Evaluate arithmetic expression tree | Recursive variant matching |
| 81 | Tail-recursive list reverse | Accumulator pattern |
| 82 | Mutual recursion: is-even? / is-odd? | Tests `defn` ordering and mutual calls |
| 83 | Recursive string matching (glob pattern) | Recursive with `char-at` and backtracking |
| 84 | Build a trie from word list | Nested maps as trie nodes |
| 85 | Convert nested map to flat dotted keys | Recursive key concatenation |

### Tier 4: Contracts & Types (15 tasks, numbered 86-100)

*"Can the model use AIRL's distinguishing features?"*

This tests idiomatic AIRL — contracts, ownership, variants, Result handling. Not just "S-expression Python."

| # | Task | What It Tests |
|---|------|--------------|
| 86 | Function with meaningful `:requires` | Pre-condition that rejects bad input |
| 87 | Function with `:ensures` on return value | Post-condition on result range |
| 88 | Safe division with Result return | `(Ok value)` / `(Err msg)` pattern |
| 89 | Chain multiple Result operations | Nested `match` on `(Ok ...)` / `(Err ...)` |
| 90 | Custom variant type with 3+ tags | `deftype` + exhaustive `match` |
| 91 | Option-like type: find-first with None | Variant return + match at call site |
| 92 | Validated constructor with contracts | `:requires` that enforces invariants on construction |
| 93 | Accumulate errors from list of Results | `fold` over Results collecting errors |
| 94 | Type-safe state machine | Variants as states, functions as transitions |
| 95 | Contract that should fail (negative test) | Model must write a `:requires` that catches bad input AND print the violation |
| 96 | Parse and validate structured data | String → variant with error cases |
| 97 | Generic higher-order function with sig | Function that takes a function parameter with type signature |
| 98 | Map with default values | `map-get` with fallback pattern |
| 99 | Result-based pipeline with early exit | Chain of operations that short-circuits on first error |
| 100 | Multi-field variant with extraction | Variant with payload, match and destructure |

---

## Trap Tasks (Weave Into Tiers 2-4)

These aren't a separate tier — embed them as requirements within the tasks above. The model shouldn't know it's being tested for footguns.

| Trap | Where to Embed | How |
|------|---------------|-----|
| Model tries `while`/`for` | Tasks 71-85 (recursion tier) | Tasks naturally require loops — model must use fold/recursion |
| Model writes `(and a b c)` | Task 27 (vowel check) | Requires checking 5 vowels — must nest binary `and` |
| Model mixes int/float | Task 52 (running averages) | Must use `int-to-float` explicitly |
| Model forgets `do` in `if` branch | Task 54 (designed for this) | Multi-expression branch requires `do` wrapper |
| Model uses `+` for string concat | Task 63 (histogram) | Multi-arg string building should use `(str ...)` |
| Model tries `return` / early exit | Task 99 (Result pipeline) | Must restructure as nested match, no early return |
| Model uses `(or a b)` for short-circuit | Task 79 (path finding) | Must use nested `if` for short-circuit evaluation |
| Model forgets 3-form `if` | Task 91 (Option find-first) | Both `if` branches required even when one is trivial |

---

## Metrics to Track

| Metric | How | Why |
|--------|-----|-----|
| **Correctness** (per task) | Output matches expected | Baseline |
| **Correctness** (per tier) | % correct within each tier | Shows where difficulty cliff is |
| **Gen tokens** (per tier) | Average tokens generated | Token efficiency should vary by tier |
| **First-try pass rate** | % correct on first generation (no retries) | Measures reliability, not luck |
| **Error category** | Classify failures: syntax / type / wrong-function / logic / trap | Most actionable metric — tells you what to fix |
| **Contract usage rate** | % of Tier 4 tasks where model adds contracts | Measures AIRL idiom adoption |
| **Trap hit rate** | % of trap-embedded tasks where model falls into the trap | Measures guide effectiveness |

### Error Categories (classify every failure as exactly one):

1. **Syntax error** — malformed S-expression, unbalanced parens
2. **Type error** — wrong types passed to function (int where string expected)
3. **Wrong function** — called a function that doesn't exist or wrong function for the job
4. **Control flow error** — used `while`/`for`/`return`, ternary `and`/`or`, missing `do` block
5. **Logic bug** — syntactically and type-correct but wrong answer
6. **Ownership error** — use-after-move, double use of linear value
7. **Contract error** — contract fires correctly (this might be intentional in Task 95)

---

## Model Matrix

Run all 100 tasks across:

| Model | Role |
|-------|------|
| qwen3-coder | Current baseline, cheapest |
| Sonnet | Mid-tier reference (have run 008 data) |
| Haiku | Floor test — how low can you go? |
| Opus | Ceiling test — best possible score |

The spread between Haiku and Opus tells you whether AIRL's learnability is model-dependent or genuinely accessible. If Haiku hits 80%+ on Tiers 1-2, the syntax works. If Opus struggles on Tier 5 traps, the language guide needs work.

---

## Minimum Viable Version

If 100 tasks is too much work right now: **add 25 tasks from Tiers 2 and 4 only** (tasks 46-58 and 86-98). Composition and contracts are where the current benchmark is blind. You'll learn more from 25 hard tasks than 75 easy ones.

---

## Implementation Priority

1. Write tasks 46-70 (Tier 2: Composition) — highest signal, tests real code generation
2. Write tasks 86-100 (Tier 4: Contracts & Types) — tests AIRL-specific features
3. Write tasks 71-85 (Tier 3: Recursion) — tests functional-only control flow
4. Write tasks 26-45 (Tier 1: Stdlib) — fills gaps in current coverage, lowest priority
