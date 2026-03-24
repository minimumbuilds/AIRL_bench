Here are complete, working AIRL programs. Study these patterns carefully before writing your solution.

## Example 1: Fold-based accumulation (filter + map + fold pipeline)

Task: Sum the doubled values of all even numbers in a list.

```
(defn sum-doubled-evens
  :sig [(xs : List) -> i64]
  :requires [(valid xs)]
  :ensures [(>= result 0)]
  :body
    (fold (fn [acc x] (+ acc x))
          0
          (map (fn [x] (* x 2))
               (filter (fn [x] (= (% x 2) 0)) xs))))

(print (sum-doubled-evens [1 2 3 4 5 6]))
```

## Example 2: String character processing (chars + fold + nested binary or)

Task: Count the vowels in a string.

```
(defn count-vowels
  :sig [(s : String) -> i64]
  :requires [(valid s)]
  :ensures [(>= result 0) (<= result (length s))]
  :body
  (let (lower : String (to-lower s))
    (let (cs : List (chars lower))
      (fold (fn [acc c]
        (if (or (= c "a") (= c "e"))
          (+ acc 1)
          (if (or (= c "i") (= c "o"))
            (+ acc 1)
            (if (= c "u")
              (+ acc 1)
              acc))))
        0 cs))))

(print (count-vowels "hello world"))
```

## Example 3: Map-based key-value accumulation (fold + map-has + map-set + map-get)

Task: Count occurrences of each word, preserving first-occurrence order.

```
(defn word-frequency
  :sig [(s : String) -> List]
  :requires [(valid s)]
  :ensures [(valid result)]
  :body
    (let (words : List (split s " "))
      (let (state : List
             (fold (fn [acc w]
                     (let (counts : _ (at acc 0))
                       (let (order : List (at acc 1))
                         (if (map-has counts w)
                           [(map-set counts w (+ (map-get counts w) 1)) order]
                           [(map-set counts w 1) (append order w)]))))
                   [(map-new) []]
                   words))
        (let (final-counts : _ (at state 0))
          (let (final-order : List (at state 1))
            (map (fn [w] [w (map-get final-counts w)]) final-order))))))

(print (word-frequency "one two one three two one"))
```

## Example 4: String-level character manipulation (index-of + char-at on alphabet strings)

Task: Caesar cipher — shift each letter by N positions.

```
(defn shift-char
  :sig [(c : String) (shift : i64) -> String]
  :requires [(>= shift 0) (<= shift 25)]
  :ensures [(valid result)]
  :body
  (let (lower : String "abcdefghijklmnopqrstuvwxyz")
    (let (upper : String "ABCDEFGHIJKLMNOPQRSTUVWXYZ")
      (let (li : i64 (index-of lower c))
        (if (!= li -1)
          (char-at lower (% (+ li shift) 26))
          (let (ui : i64 (index-of upper c))
            (if (!= ui -1)
              (char-at upper (% (+ ui shift) 26))
              c)))))))

(defn caesar-cipher
  :sig [(s : String) (shift : i64) -> String]
  :requires [(>= shift 0) (<= shift 25)]
  :ensures [(= (length result) (length s))]
  :body
  (let (char-list : List (chars s))
    (join (map (fn [c] (shift-char c shift)) char-list) "")))

(print (caesar-cipher "hello" 3))
```

## Example 5: Nested map with range (matrix operations using map + range + at)

Task: Transpose a matrix (list of lists).

```
(defn get-column
  :sig [(matrix : List) (col : i64) -> List]
  :requires [(>= col 0)]
  :ensures [(valid result)]
  :body (map (fn [row] (at row col)) matrix))

(defn transpose
  :sig [(matrix : List) -> List]
  :requires [(not (empty? matrix))]
  :ensures [(= (length result) (length (head matrix)))]
  :body
    (let (num-cols : i64 (length (head matrix)))
      (map (fn [c] (get-column matrix c)) (range 0 num-cols))))

(print (transpose [[1 2] [3 4] [5 6]]))
```
