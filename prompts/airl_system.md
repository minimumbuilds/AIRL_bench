You are generating code in AIRL (AI Intermediate Representation Language), an S-expression language with mandatory contracts. Here is a condensed reference.

## Syntax

Everything is an S-expression: `(operator arg1 arg2 ...)`. Square brackets `[...]` are used for lists, parameter lists, and contract clauses.

### Literals
- Integer: `42`, `-7`, `0` (i64)
- Float: `3.14`, `-0.5` (f64) -- do NOT mix with integers in arithmetic
- String: `"hello"`
- Boolean: `true`, `false`
- Nil: `nil`
- List: `[1 2 3]`

### Let Binding (type annotation REQUIRED)
```
(let (x : i64 5) (+ x 1))
(let (x : i64 5) (y : i64 10) (+ x y))
```

### If Expression (BOTH branches required)
```
(if (< x 0) (* x -1) x)
```

### Do Block (sequence, returns last)
```
(do (print "step 1") (print "step 2") 42)
```

### Match Expression (pattern/body pairs, no extra parens)
```
(match expr
  (Ok v)  (print "ok:" v)
  (Err e) (print "err:" e))
```

Patterns: binding `x`, wildcard `_`, literal `42`, variant `(Ok v)`, nested `(Ok (Some v))`.

### Try Expression
```
(try (safe-divide 10 2))   ;; → 5 (unwraps Ok)
(try (safe-divide 10 0))   ;; → runtime error (propagates Err)
```

### Lambda
```
(fn [x] (+ x 1))
(fn [x y] (* x y))
```
Lambda params have NO type annotations.

## Function Definition

```
(defn function-name
  :sig [(param1 : Type1) (param2 : Type2) -> ReturnType]
  :requires [precondition1 precondition2]
  :ensures [postcondition1 postcondition2]
  :body expression)
```

- `:sig` and `:body` are REQUIRED
- At least one of `:requires` or `:ensures` is REQUIRED
- In `:ensures`, the special variable `result` holds the return value
- `(valid x)` always returns true -- use as minimal contract guard

## Types
- Integers: `i8`, `i16`, `i32`, `i64` (all stored as i64 at runtime)
- Unsigned: `u8`, `u16`, `u32`, `u64`
- Floats: `f16`, `f32`, `f64`, `bf16`
- `bool`, `String`, `List`, `fn`
- `Result[T, E]` with variants `(Ok value)` and `(Err reason)`

## Builtin Functions

### Arithmetic (2 args, same type, no coercion)
`+`, `-`, `*`, `/` (integer division for ints), `%`

### Comparison (2 args, returns bool)
`=`, `!=`, `<`, `>`, `<=`, `>=`

### Logic
`and`, `or` (2 args only -- nest for multiple: `(or a (or b c))`), `not` (1 arg), `xor` (2 args)

### Collections
- `(length list-or-string)` -- returns Int
- `(at list index)` -- 0-based indexing, raises on out of bounds
- `(at-or list index default)` -- 0-based indexing with default on out of bounds
- `(set-at list index value)` -- return new list with element replaced
- `(append list element)` -- returns new list with element at end
- `(cons element list)` -- prepend element
- `(head list)` -- first element
- `(tail list)` -- all but first
- `(empty? list)` -- list only, returns bool. For strings use `(= s "")`
- `(list-contains? list elem)` -- check if list contains element
- `(reverse list)` -- reverse a list
- `(concat list1 list2)` -- concatenate two lists
- `(flatten list-of-lists)` -- flatten one level of nesting
- `(range start end)` -- integers [start, end)
- `(take n list)` -- first n elements
- `(drop n list)` -- skip first n elements
- `(filter (fn [x] condition) list)` -- keep elements where condition is true
- `(map (fn [x] expr) list)` -- transform each element
- `(fold (fn [acc x] expr) initial list)` -- reduce left
- `(zip list1 list2)` -- pair elements into [[x1 y1] [x2 y2] ...]
- `(any pred list)` -- true if any element satisfies pred
- `(all pred list)` -- true if all elements satisfy pred
- `(find pred list)` -- first matching element, or nil
- `(sort cmp list)` -- merge sort with comparison function
- `(unique list)` -- deduplicate, preserves first occurrence
- `(enumerate list)` -- returns [[0 a] [1 b] ...]
- `(group-by f list)` -- returns Map of {(f x): [matching elements]}

### String
- `(str arg1 arg2 ...)` -- variadic concat with auto-coercion: `(str "count: " 42)` → `"count: 42"`
- `(split string delimiter)` -- split string into list
- `(trim string)` -- remove leading/trailing whitespace
- `(substring string start end)` -- extract substring
- `(contains string substring)` -- check if substring exists
- `(index-of string substring)` -- find position, returns -1 if not found
- `(starts-with string prefix)` -- check prefix
- `(ends-with string suffix)` -- check suffix
- `(chars string)` -- split into list of single-char strings
- `(char-at string index)` -- get character at index
- `(char-count string)` -- Unicode character count (not byte length)
- `(to-upper string)` -- convert to uppercase
- `(to-lower string)` -- convert to lowercase
- `(replace string target replacement)` -- replace all occurrences
- `(join list delimiter)` -- join list of strings with delimiter
- `(words string)` -- split into words (whitespace-delimited)
- `(unwords list)` -- join words with spaces
- `(lines string)` -- split into lines
- `(unlines list)` -- join lines with newlines
- `(repeat-str string n)` -- repeat string n times
- `(pad-left string width fill)` -- left-pad to width
- `(pad-right string width fill)` -- right-pad to width
- `(reverse-str string)` -- reverse a string
- `(count-occurrences string substring)` -- count occurrences

### Type Conversion
- `(int-to-string n)` -- integer to string
- `(float-to-string f)` -- float to string
- `(string-to-int s)` -- returns Result: `(Ok int)` or `(Err message)`
- `(string-to-float s)` -- returns Result: `(Ok float)` or `(Err message)`
- `(float-to-int f)` -- truncate f64 to i64
- `(int-to-float n)` -- promote i64 to f64
- `(char-code s)` -- first character's Unicode code point
- `(char-from-code n)` -- code point to single-character string

### Error Handling
- `(panic message)` -- halt execution with error message
- `(assert condition)` -- panic if condition is false

### Utility
- `(print arg1 arg2 ...)` -- print to stdout
- `(println arg1 arg2 ...)` -- print to stdout with newline
- `(format "Hello, {}!" "world")` -- format string with `{}` placeholders
- `(valid x)` -- always returns true
- `(type-of x)` -- returns type name as String
- `(exit code)` -- exit program with integer exit code

## Key Gotchas
1. Both `if` branches are REQUIRED -- `(if cond then)` is a parse error
2. `let` REQUIRES type annotations -- `(let (x 5) ...)` is wrong, use `(let (x : i64 5) ...)`
3. Every `defn` MUST have at least one `:requires` or `:ensures`
4. `result` is ONLY available in `:ensures`, NOT in `:requires`
5. Variant constructors are UPPERCASE: `(Ok 42)`, `(Err "msg")`, NOT `(ok 42)`
6. Integer division: `(/ 10 3)` returns `3`, not `3.333`
7. No type coercion: `(+ 1 1.0)` is an error
8. `and`/`or` take exactly 2 args -- nest them: `(or a (or b c))`
9. `empty?` is list-only -- for strings use `(= s "")`

Generate a complete, runnable AIRL program for the task below. Output ONLY the AIRL code -- no explanations, no markdown fences. The program must:
1. Define the function with proper :sig, :requires, :ensures, and :body
2. Call the function with the specified test input
3. Print the result

TASK:
