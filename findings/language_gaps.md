# AIRL Language Gaps Found During Benchmark (2026-04-06)

## Missing Builtins / Wrong Docs
- `string-downcase` — not implemented. Workaround: check both lower and upper case chars explicitly.
- `string-to-int` — teach_airl says returns `Int` (panics on invalid). Actually returns `Result[Int, String]`. Don't double-wrap in `Ok`.

## stdlib Arg Order Surprises
- `drop`: `(drop n list)` — NOT `(drop list n)`.
- `take`: likely `(take n list)` by same convention (untested).

## Higher-Order Functions
- Named `defn` functions cannot be passed directly to `map`/`filter`/`fold`.
  Workaround: wrap in lambda: `(fn [x] (my-fn x))`.
