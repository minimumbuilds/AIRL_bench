# AIRL Training Data Generation Prompts

## List Operations - Basic
1. Write an AIRL function that takes a list of integers and returns the sum of all elements. Test with `[1,2,3,4,5]` → `15`, `[]` → `0`, and `[10,20,30]` → `60`.
2. Write an AIRL function that takes a list and returns it reversed. Test with `[1,2,3]` → `[3,2,1]`, `[1]` → `[1]`, and `[]` → `[]`.
3. Write an AIRL function that takes a list and returns the maximum element. Test with `[3,1,4,1,5,9]` → `9`, `[1]` → `1`, and `[-1,-2,-3]` → `-1`.
4. Write an AIRL function that takes a list and returns the minimum element. Test with `[3,1,4,1,5]` → `1`, `[7]` → `7`, and `[-5,0,5]` → `-5`.
5. Write an AIRL function that takes a list of integers and returns the count of elements. Test with `[1,2,3]` → `3`, `[]` → `0`, and `[5,5,5,5]` → `4`.
6. Write an AIRL function that takes a list and returns the first element. Test with `[1,2,3]` → `1`, `[42]` → `42`, and `[9,8,7]` → `9`.
7. Write an AIRL function that takes a list and returns the last element. Test with `[1,2,3]` → `3`, `[42]` → `42`, and `[9,8,7]` → `7`.
8. Write an AIRL function that takes a list and returns all elements except the first. Test with `[1,2,3]` → `[2,3]`, `[1]` → `[]`, and `[5,6,7,8]` → `[6,7,8]`.
9. Write an AIRL function that takes a list and returns all elements except the last. Test with `[1,2,3]` → `[1,2]`, `[1]` → `[]`, and `[5,6,7,8]` → `[5,6,7]`.
10. Write an AIRL function that takes a list and an element and returns true if the element is in the list. Test with `[1,2,3]` and `2` → `true`, `[1,2,3]` and `5` → `false`, and `[]` and `1` → `false`.

## List Operations - Filtering
11. Write an AIRL function that takes a list of integers and returns only the even numbers. Test with `[1,2,3,4,5,6]` → `[2,4,6]`, `[1,3,5]` → `[]`, and `[2,4,6]` → `[2,4,6]`.
12. Write an AIRL function that takes a list of integers and returns only the odd numbers. Test with `[1,2,3,4,5]` → `[1,3,5]`, `[2,4,6]` → `[]`, and `[7,8,9]` → `[7,9]`.
13. Write an AIRL function that takes a list of integers and returns only positive numbers. Test with `[-1,0,1,2,-3]` → `[1,2]`, `[-1,-2]` → `[]`, and `[1,2,3]` → `[1,2,3]`.
14. Write an AIRL function that takes a list of integers and returns only numbers greater than a given threshold. Test with `[1,2,3,4,5]` and `3` → `[4,5]`, `[1,2,3]` and `5` → `[]`, and `[10,20,30]` and `15` → `[20,30]`.
15. Write an AIRL function that takes a list of integers and removes all duplicates, returning unique elements. Test with `[1,1,2,2,3]` → `[1,2,3]`, `[1,2,3]` → `[1,2,3]`, and `[5,5,5]` → `[5]`.
16. Write an AIRL function that takes a list of integers and returns elements at even indices. Test with `[10,20,30,40,50]` → `[10,30,50]`, `[1,2]` → `[1]`, and `[9,8,7,6]` → `[9,7]`.
17. Write an AIRL function that takes a list of integers and returns elements at odd indices. Test with `[10,20,30,40,50]` → `[20,40]`, `[1,2]` → `[2]`, and `[9,8,7,6]` → `[8,6]`.
18. Write an AIRL function that takes a list and a count N and returns the first N elements. Test with `[1,2,3,4,5]` and `3` → `[1,2,3]`, `[1,2]` and `5` → `[1,2]`, and `[7,8,9]` and `1` → `[7]`.
19. Write an AIRL function that takes a list and a count N and returns the last N elements. Test with `[1,2,3,4,5]` and `2` → `[4,5]`, `[1,2]` and `5` → `[1,2]`, and `[7,8,9]` and `1` → `[9]`.
20. Write an AIRL function that takes a list of integers and returns only those divisible by 3. Test with `[1,2,3,4,5,6,9]` → `[3,6,9]`, `[1,2,4]` → `[]`, and `[12,15,17]` → `[12,15]`.

## List Operations - Mapping & Transformation
21. Write an AIRL function that takes a list of integers and returns each element doubled. Test with `[1,2,3]` → `[2,4,6]`, `[]` → `[]`, and `[5,10]` → `[10,20]`.
22. Write an AIRL function that takes a list of integers and returns the square of each element. Test with `[1,2,3,4]` → `[1,4,9,16]`, `[5]` → `[25]`, and `[0,1,2]` → `[0,1,4]`.
23. Write an AIRL function that takes a list of integers and returns the absolute value of each. Test with `[-1,2,-3,4]` → `[1,2,3,4]`, `[0,-5]` → `[0,5]`, and `[1,2,3]` → `[1,2,3]`.
24. Write an AIRL function that takes a list of integers and adds a given offset to each element. Test with `[1,2,3]` and `10` → `[11,12,13]`, `[0,0,0]` and `5` → `[5,5,5]`, and `[5,10]` and `-5` → `[0,5]`.
25. Write an AIRL function that takes a list of integers and returns a list of booleans indicating whether each element is even. Test with `[1,2,3,4]` → `[false,true,false,true]`, `[2,4]` → `[true,true]`, and `[1,3]` → `[false,false]`.
26. Write an AIRL function that takes two lists of equal length and returns a list of their pairwise sums. Test with `[1,2,3]` and `[4,5,6]` → `[5,7,9]`, `[0,0]` and `[1,1]` → `[1,1]`, and `[10,20]` and `[-10,-20]` → `[0,0]`.
27. Write an AIRL function that takes two lists of equal length and returns their pairwise products. Test with `[1,2,3]` and `[4,5,6]` → `[4,10,18]`, `[2,3]` and `[2,3]` → `[4,9]`, and `[1,0,1]` and `[5,5,5]` → `[5,0,5]`.
28. Write an AIRL function that takes a list of integers and returns a list of tuples pairing each element with its index. Test with `[10,20,30]` → `[(0,10),(1,20),(2,30)]`, `[5]` → `[(0,5)]`, and `[]` → `[]`.
29. Write an AIRL function that takes a list and returns a new list with each element repeated twice. Test with `[1,2,3]` → `[1,1,2,2,3,3]`, `[]` → `[]`, and `[5]` → `[5,5]`.
30. Write an AIRL function that takes a list of integers and returns the cumulative sum at each position. Test with `[1,2,3,4]` → `[1,3,6,10]`, `[5]` → `[5]`, and `[2,2,2]` → `[2,4,6]`.

## List Operations - Sorting & Ordering
31. Write an AIRL function that takes a list of integers and returns it sorted in ascending order. Test with `[3,1,4,1,5]` → `[1,1,3,4,5]`, `[1]` → `[1]`, and `[5,4,3,2,1]` → `[1,2,3,4,5]`.
32. Write an AIRL function that takes a list of integers and returns it sorted in descending order. Test with `[3,1,4,1,5]` → `[5,4,3,1,1]`, `[1]` → `[1]`, and `[1,2,3]` → `[3,2,1]`.
33. Write an AIRL function that takes a list of integers and returns it with adjacent duplicates removed. Test with `[1,1,2,2,3,1,1]` → `[1,2,3,1]`, `[1,2,3]` → `[1,2,3]`, and `[5,5,5]` → `[5]`.
34. Write an AIRL function that takes a list and rotates it left by N positions. Test with `[1,2,3,4,5]` and `2` → `[3,4,5,1,2]`, `[1,2,3]` and `1` → `[2,3,1]`, and `[1,2,3]` and `3` → `[1,2,3]`.
35. Write an AIRL function that takes a list and rotates it right by N positions. Test with `[1,2,3,4,5]` and `2` → `[4,5,1,2,3]`, `[1,2,3]` and `1` → `[3,1,2]`, and `[1,2,3]` and `3` → `[1,2,3]`.

## List Operations - Combining & Splitting
36. Write an AIRL function that takes two lists and concatenates them. Test with `[1,2]` and `[3,4]` → `[1,2,3,4]`, `[]` and `[1]` → `[1]`, and `[1,2,3]` and `[]` → `[1,2,3]`.
37. Write an AIRL function that takes two lists and interleaves their elements. Test with `[1,3,5]` and `[2,4,6]` → `[1,2,3,4,5,6]`, `[1]` and `[2]` → `[1,2]`, and `[1,2]` and `[3,4]` → `[1,3,2,4]`.
38. Write an AIRL function that takes a list and splits it into two halves. Test with `[1,2,3,4]` → `([1,2],[3,4])`, `[1,2,3]` → `([1],[2,3])`, and `[1]` → `([],[1])`.
39. Write an AIRL function that takes a list and a predicate and splits it into elements that satisfy and don't satisfy the predicate. Test with `[1,2,3,4,5]` evens → `([2,4],[1,3,5])`, `[1,3,5]` evens → `([],[1,3,5])`, and `[2,4,6]` evens → `([2,4,6],[])`.
40. Write an AIRL function that takes a nested list and flattens it completely. Test with `[[1,[2,3]],[4]]` → `[1,2,3,4]`, `[[[1]]]` → `[1]`, and `[[1,2],[3,4]]` → `[1,2,3,4]`.
41. Write an AIRL function that takes a list and groups consecutive equal elements into sublists. Test with `[1,1,2,3,3,3]` → `[[1,1],[2],[3,3,3]]`, `[1,2,3]` → `[[1],[2],[3]]`, and `[5,5,5]` → `[[5,5,5]]`.
42. Write an AIRL function that takes a list and a size N and splits it into chunks of size N. Test with `[1,2,3,4,5,6]` and `2` → `[[1,2],[3,4],[5,6]]`, `[1,2,3,4,5]` and `2` → `[[1,2],[3,4],[5]]`, and `[1,2,3]` and `3` → `[[1,2,3]]`.
43. Write an AIRL function that takes a list of lists and returns the longest sublist. Test with `[[1,2],[3],[4,5,6]]` → `[4,5,6]`, `[[1],[2],[3]]` → `[1]`, and `[[1,2,3],[4,5]]` → `[1,2,3]`.
44. Write an AIRL function that takes two sorted lists and merges them into one sorted list. Test with `[1,3,5]` and `[2,4,6]` → `[1,2,3,4,5,6]`, `[1,2,3]` and `[]` → `[1,2,3]`, and `[1]` and `[2]` → `[1,2]`.
45. Write an AIRL function that takes a list and returns all possible pairs of elements. Test with `[1,2,3]` → `[(1,2),(1,3),(2,3)]`, `[1,2]` → `[(1,2)]`, and `[1]` → `[]`.

## Math & Arithmetic
46. Write an AIRL function that computes the factorial of a non-negative integer. Test with `5` → `120`, `0` → `1`, and `3` → `6`.
47. Write an AIRL function that computes the Nth Fibonacci number. Test with `0` → `0`, `6` → `8`, and `10` → `55`.
48. Write an AIRL function that takes two integers and returns their greatest common divisor. Test with `12` and `8` → `4`, `15` and `5` → `5`, and `7` and `13` → `1`.
49. Write an AIRL function that takes two integers and returns their least common multiple. Test with `4` and `6` → `12`, `3` and `5` → `15`, and `6` and `9` → `18`.
50. Write an AIRL function that takes an integer and returns true if it is prime. Test with `7` → `true`, `4` → `false`, and `1` → `false`.
51. Write an AIRL function that takes a list of integers and returns their product. Test with `[1,2,3,4]` → `24`, `[5]` → `5`, and `[2,3,4]` → `24`.
52. Write an AIRL function that takes an integer N and returns a list of all primes up to N. Test with `10` → `[2,3,5,7]`, `2` → `[2]`, and `1` → `[]`.
53. Write an AIRL function that takes an integer and returns its prime factorization as a list. Test with `12` → `[2,2,3]`, `7` → `[7]`, and `30` → `[2,3,5]`.
54. Write an AIRL function that takes a base and exponent and computes the power. Test with `2` and `10` → `1024`, `3` and `3` → `27`, and `5` and `0` → `1`.
55. Write an AIRL function that takes an integer and returns true if it is a perfect square. Test with `9` → `true`, `8` → `false`, and `16` → `true`.
56. Write an AIRL function that takes a list of integers and returns the average as a float. Test with `[1,2,3,4,5]` → `3.0`, `[10,20]` → `15.0`, and `[7]` → `7.0`.
57. Write an AIRL function that takes an integer and returns the sum of its digits. Test with `123` → `6`, `999` → `27`, and `10` → `1`.
58. Write an AIRL function that takes an integer and returns true if it is a palindrome number. Test with `121` → `true`, `123` → `false`, and `9` → `true`.
59. Write an AIRL function that takes two integers and returns the integer square root (floor). Test with `9` → `3`, `10` → `3`, and `16` → `4`.
60. Write an AIRL function that computes the sum of all integers from 1 to N inclusive. Test with `5` → `15`, `1` → `1`, and `10` → `55`.
61. Write an AIRL function that takes an integer and returns the number of divisors it has. Test with `12` → `6`, `7` → `2`, and `1` → `1`.
62. Write an AIRL function that takes an integer and returns a list of all its divisors. Test with `12` → `[1,2,3,4,6,12]`, `7` → `[1,7]`, and `6` → `[1,2,3,6]`.
63. Write an AIRL function that takes an integer N and returns the Nth triangular number. Test with `1` → `1`, `4` → `10`, and `5` → `15`.
64. Write an AIRL function that takes two floats and returns true if they are approximately equal within a given tolerance. Test with `1.0`, `1.001`, `0.01` → `true`, `1.0`, `2.0`, `0.01` → `false`, and `3.14`, `3.14159`, `0.01` → `true`.
65. Write an AIRL function that takes an integer and returns true if it is a perfect number (sum of divisors equals itself). Test with `6` → `true`, `28` → `true`, and `12` → `false`.

## String Operations
66. Write an AIRL function that takes a string and returns its length. Test with `"hello"` → `5`, `""` → `0`, and `"abc"` → `3`.
67. Write an AIRL function that takes a string and returns it reversed. Test with `"hello"` → `"olleh"`, `"a"` → `"a"`, and `"abcd"` → `"dcba"`.
68. Write an AIRL function that takes a string and returns true if it is a palindrome. Test with `"racecar"` → `true`, `"hello"` → `false`, and `"a"` → `true`.
69. Write an AIRL function that takes a string and returns it in uppercase. Test with `"hello"` → `"HELLO"`, `"World"` → `"WORLD"`, and `""` → `""`.
70. Write an AIRL function that takes a string and returns it in lowercase. Test with `"HELLO"` → `"hello"`, `"World"` → `"world"`, and `""` → `""`.
71. Write an AIRL function that takes a string and a character and returns the count of that character in the string. Test with `"hello"` and `"l"` → `2`, `"aaa"` and `"a"` → `3`, and `"abc"` and `"d"` → `0`.
72. Write an AIRL function that takes a string and returns a list of its characters. Test with `"abc"` → `["a","b","c"]`, `"x"` → `["x"]`, and `""` → `[]`.
73. Write an AIRL function that takes a list of characters and joins them into a string. Test with `["a","b","c"]` → `"abc"`, `["x"]` → `"x"`, and `[]` → `""`.
74. Write an AIRL function that takes a string and a delimiter and splits it into a list of substrings. Test with `"a,b,c"` and `","` → `["a","b","c"]`, `"hello"` and `","` → `["hello"]`, and `"a,,b"` and `","` → `["a","","b"]`.
75. Write an AIRL function that takes a list of strings and a delimiter and joins them. Test with `["a","b","c"]` and `","` → `"a,b,c"`, `["hello"]` and `"-"` → `"hello"`, and `[]` and `","` → `""`.
76. Write an AIRL function that takes a string and returns true if it contains only digits. Test with `"123"` → `true`, `"12a"` → `false`, and `""` → `false`.
77. Write an AIRL function that takes a string and removes all whitespace. Test with `"h e l l o"` → `"hello"`, `"  ab  "` → `"ab"`, and `"abc"` → `"abc"`.
78. Write an AIRL function that takes a string and trims leading and trailing whitespace. Test with `"  hello  "` → `"hello"`, `"abc"` → `"abc"`, and `"  "` → `""`.
79. Write an AIRL function that takes a string and a substring and returns true if the string starts with that substring. Test with `"hello"` and `"hel"` → `true`, `"hello"` and `"llo"` → `false`, and `"abc"` and `""` → `true`.
80. Write an AIRL function that takes a string and a substring and returns true if the string ends with that substring. Test with `"hello"` and `"llo"` → `true`, `"hello"` and `"hel"` → `false`, and `"abc"` and `""` → `true`.

## Higher-Order Functions
81. Write an AIRL function that takes a list and a predicate function and returns true if all elements satisfy the predicate. Test with `[2,4,6]` even → `true`, `[1,2,3]` even → `false`, and `[]` even → `true`.
82. Write an AIRL function that takes a list and a predicate function and returns true if any element satisfies the predicate. Test with `[1,2,3]` even → `true`, `[1,3,5]` even → `false`, and `[]` even → `false`.
83. Write an AIRL function that takes a list and a predicate and returns the count of elements satisfying the predicate. Test with `[1,2,3,4,5]` even → `2`, `[2,4,6]` even → `3`, and `[1,3,5]` even → `0`.
84. Write an AIRL function that takes a list, a binary function, and an initial value and performs a left fold. Test with `[1,2,3,4]`, add, `0` → `10`, `[1,2,3]`, multiply, `1` → `6`, and `[]`, add, `5` → `5`.
85. Write an AIRL function that takes a list, a binary function, and an initial value and performs a right fold. Test with `[1,2,3]`, subtract, `0` → `2`, `[1,2,3,4]`, add, `0` → `10`, and `[]`, add, `5` → `5`.
86. Write an AIRL function that takes a function and a count and returns a list of results from applying the function to 0..N-1. Test with square and `4` → `[0,1,4,9]`, double and `3` → `[0,2,4]`, and identity and `3` → `[0,1,2]`.
87. Write an AIRL function that takes a list of functions and a value and applies them in sequence (function composition pipeline). Test with `[double, increment]` and `3` → `7`, `[square, double]` and `3` → `18`, and `[]` and `5` → `5`.
88. Write an AIRL function that takes a binary function and returns its curried form. Test with add curried with `3` applied to `4` → `7`, multiply curried with `2` applied to `5` → `10`, and subtract curried with `10` applied to `3` → `7`.
89. Write an AIRL function that takes a predicate and returns its negation. Test with even negated applied to `2` → `false`, even negated applied to `3` → `true`, and always-true negated applied to anything → `false`.
90. Write an AIRL function that takes two predicates and returns a new predicate that is true when both are true. Test with even AND positive on `2` → `true`, even AND positive on `-2` → `false`, and even AND positive on `3` → `false`.

## Recursion
91. Write an AIRL function that uses recursion to compute the sum of a list of integers. Test with `[1,2,3,4,5]` → `15`, `[]` → `0`, and `[10]` → `10`.
92. Write an AIRL function that uses recursion to reverse a list. Test with `[1,2,3]` → `[3,2,1]`, `[]` → `[]`, and `[1]` → `[1]`.
93. Write an AIRL function that uses recursion to flatten a nested list. Test with `[[1,[2]],[3]]` → `[1,2,3]`, `[[[1]]]` → `[1]`, and `[1,2,3]` → `[1,2,3]`.
94. Write an AIRL function that uses recursion to compute the depth of a nested list. Test with `[1,2,3]` → `1`, `[[1,2],3]` → `2`, and `[[[1]]]` → `3`.
95. Write an AIRL function that uses mutual recursion to determine if a number is even or odd. Test with `4` → `true` (even), `7` → `false` (even), and `0` → `true` (even).
96. Write an AIRL function that uses tail recursion to compute the factorial. Test with `5` → `120`, `0` → `1`, and `7` → `5040`.
97. Write an AIRL function that uses recursion to generate all permutations of a list. Test with `[1,2,3]` → `[[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]`, `[1]` → `[[1]]`, and `[]` → `[[]]`.
98. Write an AIRL function that uses recursion to generate all subsets of a list. Test with `[1,2]` → `[[],[1],[2],[1,2]]`, `[1]` → `[[],[1]]`, and `[]` → `[[]]`.
99. Write an AIRL function that recursively computes the number of ways to make change for an amount given a list of coin denominations. Test with `4` and `[1,2]` → `3`, `3` and `[2]` → `0`, and `5` and `[1,2,5]` → `4`.
100. Write an AIRL function that uses recursion to implement binary search on a sorted list. Test with `[1,3,5,7,9]` and `5` → `2`, `[1,3,5,7,9]` and `1` → `0`, and `[1,3,5,7,9]` and `6` → `-1`.

## Maps & Key-Value Structures
101. Write an AIRL function that takes a list of key-value pairs and builds a map. Test with `[("a",1),("b",2)]` → `{a:1,b:2}`, `[]` → `{}`, and `[("x",10)]` → `{x:10}`.
102. Write an AIRL function that takes a map and a key and returns the associated value or a default. Test with `{a:1,b:2}` and `"a"` → `1`, `{a:1}` and `"b"` and default `0` → `0`, and `{}` and `"x"` and default `-1` → `-1`.
103. Write an AIRL function that takes a map and returns a list of its keys. Test with `{a:1,b:2,c:3}` → `["a","b","c"]`, `{}` → `[]`, and `{x:10}` → `["x"]`.
104. Write an AIRL function that takes a map and returns a list of its values. Test with `{a:1,b:2,c:3}` → `[1,2,3]`, `{}` → `[]`, and `{x:10}` → `[10]`.
105. Write an AIRL function that takes two maps and merges them, with the second map's values winning on key conflicts. Test with `{a:1,b:2}` and `{b:3,c:4}` → `{a:1,b:3,c:4}`, `{}` and `{a:1}` → `{a:1}`, and `{a:1}` and `{}` → `{a:1}`.
106. Write an AIRL function that takes a list of integers and returns a map of each integer to its square. Test with `[1,2,3]` → `{1:1,2:4,3:9}`, `[]` → `{}`, and `[5]` → `{5:25}`.
107. Write an AIRL function that takes a list and returns a frequency map counting occurrences of each element. Test with `[1,2,2,3,3,3]` → `{1:1,2:2,3:3}`, `[]` → `{}`, and `["a","b","a"]` → `{a:2,b:1}`.
108. Write an AIRL function that takes a map and a function and applies the function to each value. Test with `{a:1,b:2}` and double → `{a:2,b:4}`, `{x:5}` and square → `{x:25}`, and `{}` and double → `{}`.
109. Write an AIRL function that takes a map and a predicate and returns a new map with only entries where the value satisfies the predicate. Test with `{a:1,b:2,c:3}` even → `{b:2}`, `{a:2,b:4}` even → `{a:2,b:4}`, and `{a:1}` even → `{}`.
110. Write an AIRL function that takes a list of maps and merges them all into one. Test with `[{a:1},{b:2},{c:3}]` → `{a:1,b:2,c:3}`, `[{}]` → `{}`, and `[{a:1},{a:2}]` → `{a:2}`.

## Tuples & Structured Data
111. Write an AIRL function that takes a list of tuples and returns the list sorted by the first element of each tuple. Test with `[(3,"c"),(1,"a"),(2,"b")]` → `[(1,"a"),(2,"b"),(3,"c")]`, `[(1,"z")]` → `[(1,"z")]`, and `[]` → `[]`.
112. Write an AIRL function that takes a list of tuples and returns the list sorted by the second element. Test with `[(1,3),(2,1),(3,2)]` → `[(2,1),(3,2),(1,3)]`, `[(1,1)]` → `[(1,1)]`, and `[]` → `[]`.
113. Write an AIRL function that takes a list of (name, score) tuples and returns the name with the highest score. Test with `[("a",10),("b",20),("c",5)]` → `"b"`, `[("x",100)]` → `"x"`, and `[("a",5),("b",5)]` → `"a"`.
114. Write an AIRL function that takes a list of tuples and unzips them into two separate lists. Test with `[(1,"a"),(2,"b"),(3,"c")]` → `([1,2,3],["a","b","c"])`, `[(1,2)]` → `([1],[2])`, and `[]` → `([],[])`.
115. Write an AIRL function that takes two lists and zips them into a list of tuples. Test with `[1,2,3]` and `["a","b","c"]` → `[(1,"a"),(2,"b"),(3,"c")]`, `[]` and `[]` → `[]`, and `[1]` and `["x"]` → `[(1,"x")]`.

## Conditional Logic & Control Flow
116. Write an AIRL function that takes three integers and returns the largest. Test with `1`, `2`, `3` → `3`, `5`, `3`, `4` → `5`, and `7`, `7`, `7` → `7`.
117. Write an AIRL function that takes three integers and returns the median value. Test with `1`, `2`, `3` → `2`, `3`, `1`, `2` → `2`, and `5`, `5`, `5` → `5`.
118. Write an AIRL function that takes an integer and returns "fizz" if divisible by 3, "buzz" if by 5, "fizzbuzz" if by both, else the number as string. Test with `15` → `"fizzbuzz"`, `3` → `"fizz"`, and `7` → `"7"`.
119. Write an AIRL function that takes an integer and classifies it as "negative", "zero", or "positive". Test with `-5` → `"negative"`, `0` → `"zero"`, and `3` → `"positive"`.
120. Write an AIRL function that takes a list and returns "empty", "singleton", or "multiple" based on its length. Test with `[]` → `"empty"`, `[1]` → `"singleton"`, and `[1,2]` → `"multiple"`.

## Pattern Matching
121. Write an AIRL function that uses pattern matching to extract the head and tail of a list and return the head doubled plus the sum of the tail. Test with `[1,2,3]` → `8`, `[5]` → `10`, and `[2,2,2]` → `8`.
122. Write an AIRL function that uses pattern matching on tuples to swap the elements of a pair. Test with `(1,2)` → `(2,1)`, `("a","b")` → `("b","a")`, and `(true,false)` → `(false,true)`.
123. Write an AIRL function that uses pattern matching to implement a simple expression evaluator for add and multiply operations represented as tuples. Test with `("add",2,3)` → `5`, `("mul",4,5)` → `20`, and `("add",0,0)` → `0`.
124. Write an AIRL function that uses pattern matching to safely get the Nth element of a list, returning a default if out of bounds. Test with `[10,20,30]` and `1` → `20`, `[10]` and `5` → `-1` (default), and `[]` and `0` → `-1`.
125. Write an AIRL function that uses pattern matching to decode a simple tagged union representing a shape and compute its area. Circle with radius, rectangle with width and height. Test with `("circle",5)` → `78.54`, `("rect",4,3)` → `12`, and `("circle",1)` → `3.14`.

## Type Checking & Validation
126. Write an AIRL function that takes a list and returns true if it is empty. Test with `[]` → `true`, `[1]` → `false`, and `[1,2,3]` → `false`.
127. Write an AIRL function that takes a value and returns true if it is a list. Test with `[1,2]` → `true`, `5` → `false`, and `[]` → `true`.
128. Write an AIRL function that takes a list of integers and validates that all values are within a given range. Test with `[1,2,3]`, `1`, `5` → `true`, `[1,2,6]`, `1`, `5` → `false`, and `[]`, `0`, `10` → `true`.
129. Write an AIRL function that takes a list and returns true if it is sorted in ascending order. Test with `[1,2,3,4]` → `true`, `[1,3,2,4]` → `false`, and `[1]` → `true`.
130. Write an AIRL function that takes a list and returns true if all elements are unique. Test with `[1,2,3]` → `true`, `[1,2,2]` → `false`, and `[]` → `true`.

## Numeric Algorithms
131. Write an AIRL function that implements the bubble sort algorithm on a list of integers. Test with `[5,3,1,4,2]` → `[1,2,3,4,5]`, `[1]` → `[1]`, and `[2,1]` → `[1,2]`.
132. Write an AIRL function that implements insertion sort on a list of integers. Test with `[5,3,1,4,2]` → `[1,2,3,4,5]`, `[]` → `[]`, and `[3,1,2]` → `[1,2,3]`.
133. Write an AIRL function that implements merge sort on a list of integers. Test with `[5,3,1,4,2]` → `[1,2,3,4,5]`, `[]` → `[]`, and `[2,1]` → `[1,2]`.
134. Write an AIRL function that implements quicksort on a list of integers. Test with `[5,3,1,4,2]` → `[1,2,3,4,5]`, `[1]` → `[1]`, and `[3,2,1]` → `[1,2,3]`.
135. Write an AIRL function that takes a list of integers and returns the two elements closest in value. Test with `[1,5,3,19,18]` → `(18,19)`, `[1,2]` → `(1,2)`, and `[10,1,5]` → `(5,10)`.

## Matrix & 2D Operations
136. Write an AIRL function that takes a 2D list (list of lists) and returns its transpose. Test with `[[1,2,3],[4,5,6]]` → `[[1,4],[2,5],[3,6]]`, `[[1]]` → `[[1]]`, and `[[1,2],[3,4]]` → `[[1,3],[2,4]]`.
137. Write an AIRL function that takes two matrices (2D lists) and returns their sum. Test with `[[1,2],[3,4]]` and `[[5,6],[7,8]]` → `[[6,8],[10,12]]`, `[[0]]` and `[[1]]` → `[[1]]`, and `[[1,0],[0,1]]` and `[[1,0],[0,1]]` → `[[2,0],[0,2]]`.
138. Write an AIRL function that takes a matrix and returns the sum of all elements. Test with `[[1,2],[3,4]]` → `10`, `[[5]]` → `5`, and `[[1,1,1],[1,1,1]]` → `6`.
139. Write an AIRL function that takes a matrix and returns its diagonal elements. Test with `[[1,2,3],[4,5,6],[7,8,9]]` → `[1,5,9]`, `[[1]]` → `[1]`, and `[[1,2],[3,4]]` → `[1,4]`.
140. Write an AIRL function that takes a 2D list and returns the maximum value in each row. Test with `[[1,5,3],[2,4,6],[9,1,2]]` → `[5,6,9]`, `[[1]]` → `[1]`, and `[[3,2],[1,4]]` → `[3,4]`.

## Functional Patterns
141. Write an AIRL function that implements memoization for the Fibonacci function. Test with `10` → `55`, `0` → `0`, and `7` → `13`.
142. Write an AIRL function that takes a list and applies a function to each element, returning only non-null results (filter-map). Test with `[1,2,3,4]` with safe-reciprocal-if-even → `[0.5,0.25]`, `[1,3,5]` → `[]`, and `[2]` → `[0.5]`.
143. Write an AIRL function that implements a simple state machine that processes a list of events and returns a final state. States: idle, running, stopped. Events: start, stop, reset. Test with `["start","stop"]` → `"stopped"`, `["start","reset"]` → `"idle"`, and `[]` → `"idle"`.
144. Write an AIRL function that takes a list of optional values and returns a list with all present values unwrapped. Test with `[some(1),none,some(3)]` → `[1,3]`, `[none,none]` → `[]`, and `[some(5)]` → `[5]`.
145. Write an AIRL function that takes a list of results (ok/err) and partitions them into successes and failures. Test with `[ok(1),err("x"),ok(2)]` → `([1,2],["x"])`, `[err("a")]` → `([],["a"])`, and `[ok(1)]` → `([1],[])`.

## Tree Structures
146. Write an AIRL function that takes a binary tree and returns its height. Test with a tree of height 3 → `3`, a single node → `1`, and an empty tree → `0`.
147. Write an AIRL function that takes a binary tree and returns all values in in-order traversal. Test with a balanced BST `[1,2,3,4,5]` → `[1,2,3,4,5]`, a single node `[5]` → `[5]`, and empty → `[]`.
148. Write an AIRL function that takes a binary tree and returns all values in pre-order traversal. Test with root=1, left=2, right=3 → `[1,2,3]`, single node=5 → `[5]`, and empty → `[]`.
149. Write an AIRL function that takes a binary search tree and a value and returns true if the value exists. Test with BST containing `[1,3,5,7]` and `3` → `true`, same BST and `4` → `false`, and empty BST and `1` → `false`.
150. Write an AIRL function that takes a binary tree and returns the sum of all leaf node values. Test with a tree with leaves `[1,3,5]` → `9`, single node `7` → `7`, and a tree with leaves `[2,4]` → `6`.

## Error Handling & Edge Cases
151. Write an AIRL function that safely divides two integers, returning an error or result type. Test with `10` and `2` → `ok(5)`, `5` and `0` → `err("division by zero")`, and `9` and `3` → `ok(3)`.
152. Write an AIRL function that safely gets the head of a list, returning an option type. Test with `[1,2,3]` → `some(1)`, `[]` → `none`, and `[42]` → `some(42)`.
153. Write an AIRL function that safely parses an integer from a string, returning an option. Test with `"123"` → `some(123)`, `"abc"` → `none`, and `"0"` → `some(0)`.
154. Write an AIRL function that takes a list and an index and safely returns the element at that index as an option. Test with `[10,20,30]` and `1` → `some(20)`, `[10]` and `5` → `none`, and `[]` and `0` → `none`.
155. Write an AIRL function that chains two optional values with a binary function, returning none if either is none. Test with `some(3)` and `some(4)` and add → `some(7)`, `none` and `some(4)` and add → `none`, and `some(3)` and `none` and add → `none`.

## Accumulation & Aggregation
156. Write an AIRL function that takes a list of integers and returns a running maximum list. Test with `[3,1,4,1,5,9]` → `[3,3,4,4,5,9]`, `[1]` → `[1]`, and `[9,8,7]` → `[9,9,9]`.
157. Write an AIRL function that takes a list of integers and returns a running minimum list. Test with `[3,1,4,1,5]` → `[3,1,1,1,1]`, `[5]` → `[5]`, and `[1,2,3]` → `[1,1,1]`.
158. Write an AIRL function that takes a list and returns a list of all prefixes. Test with `[1,2,3]` → `[[],[1],[1,2],[1,2,3]]`, `[1]` → `[[],[1]]`, and `[]` → `[[]]`.
159. Write an AIRL function that takes a list and returns a list of all suffixes. Test with `[1,2,3]` → `[[1,2,3],[2,3],[3],[]]`, `[1]` → `[[1],[]]`, and `[]` → `[[]]`.
160. Write an AIRL function that takes a list of lists and returns their concatenation. Test with `[[1,2],[3,4],[5]]` → `[1,2,3,4,5]`, `[[]]` → `[]`, and `[]` → `[]`.

## Searching & Lookup
161. Write an AIRL function that takes a list and a value and returns the first index of that value, or -1. Test with `[10,20,30,20]` and `20` → `1`, `[1,2,3]` and `5` → `-1`, and `[5]` and `5` → `0`.
162. Write an AIRL function that takes a list and a value and returns the last index of that value, or -1. Test with `[1,2,3,2,1]` and `2` → `3`, `[1,2,3]` and `5` → `-1`, and `[5,5,5]` and `5` → `2`.
163. Write an AIRL function that takes a sorted list and performs binary search returning the index or -1. Test with `[1,3,5,7,9]` and `7` → `3`, `[2,4,6]` and `3` → `-1`, and `[1]` and `1` → `0`.
164. Write an AIRL function that takes a list and a predicate and returns the first element satisfying the predicate or a default. Test with `[1,3,4,5]` even and default `0` → `4`, `[1,3,5]` even and default `0` → `0`, and `[2,4,6]` even and default `0` → `2`.
165. Write an AIRL function that takes a list and returns the index of the maximum element. Test with `[3,1,4,1,5,9,2]` → `5`, `[1]` → `0`, and `[5,5,5]` → `0`.

## Set Operations
166. Write an AIRL function that takes two lists and returns their union as a set (no duplicates). Test with `[1,2,3]` and `[3,4,5]` → `[1,2,3,4,5]`, `[1,2]` and `[1,2]` → `[1,2]`, and `[]` and `[1]` → `[1]`.
167. Write an AIRL function that takes two lists and returns their intersection. Test with `[1,2,3,4]` and `[3,4,5,6]` → `[3,4]`, `[1,2]` and `[3,4]` → `[]`, and `[1,2,3]` and `[1,2,3]` → `[1,2,3]`.
168. Write an AIRL function that takes two lists and returns their difference (elements in first but not second). Test with `[1,2,3,4]` and `[3,4,5]` → `[1,2]`, `[1,2,3]` and `[1,2,3]` → `[]`, and `[1,2,3]` and `[]` → `[1,2,3]`.
169. Write an AIRL function that takes two lists and returns their symmetric difference. Test with `[1,2,3]` and `[3,4,5]` → `[1,2,4,5]`, `[1,2]` and `[1,2]` → `[]`, and `[1]` and `[2]` → `[1,2]`.
170. Write an AIRL function that takes a list and returns true if it represents a valid set (no duplicates). Test with `[1,2,3]` → `true`, `[1,2,2]` → `false`, and `[]` → `true`.

## Number Theory
171. Write an AIRL function that takes an integer N and returns the first N Fibonacci numbers. Test with `5` → `[0,1,1,2,3]`, `1` → `[0]`, and `7` → `[0,1,1,2,3,5,8]`.
172. Write an AIRL function that takes an integer and returns true if it is a perfect power (a^b for a,b > 1). Test with `8` → `true`, `9` → `true`, and `6` → `false`.
173. Write an AIRL function that takes a positive integer and returns its Collatz sequence. Test with `6` → `[6,3,10,5,16,8,4,2,1]`, `1` → `[1]`, and `2` → `[2,1]`.
174. Write an AIRL function that takes an integer N and uses the Sieve of Eratosthenes to return all primes up to N. Test with `20` → `[2,3,5,7,11,13,17,19]`, `2` → `[2]`, and `1` → `[]`.
175. Write an AIRL function that takes two integers and returns true if they are coprime (GCD = 1). Test with `8` and `9` → `true`, `6` and `9` → `false`, and `1` and `100` → `true`.

## Combinatorics
176. Write an AIRL function that computes N choose K (binomial coefficient). Test with `5` and `2` → `10`, `4` and `0` → `1`, and `6` and `3` → `20`.
177. Write an AIRL function that generates all combinations of K elements from a list. Test with `[1,2,3]` and `2` → `[[1,2],[1,3],[2,3]]`, `[1,2,3]` and `1` → `[[1],[2],[3]]`, and `[1]` and `1` → `[[1]]`.
178. Write an AIRL function that generates the Nth row of Pascal's triangle. Test with `0` → `[1]`, `3` → `[1,3,3,1]`, and `4` → `[1,4,6,4,1]`.
179. Write an AIRL function that takes a list and returns all permutations of length K. Test with `[1,2,3]` and `2` → `[[1,2],[1,3],[2,1],[2,3],[3,1],[3,2]]`, `[1,2]` and `2` → `[[1,2],[2,1]]`, and `[1]` and `1` → `[[1]]`.
180. Write an AIRL function that computes the number of permutations of N items taken K at a time. Test with `5` and `2` → `20`, `3` and `3` → `6`, and `4` and `0` → `1`.

## Sliding Window & Subsequences
181. Write an AIRL function that takes a list and a window size N and returns all sliding windows of that size. Test with `[1,2,3,4]` and `2` → `[[1,2],[2,3],[3,4]]`, `[1,2,3]` and `3` → `[[1,2,3]]`, and `[1,2]` and `3` → `[]`.
182. Write an AIRL function that takes a list and returns the maximum sum contiguous subarray (Kadane's algorithm). Test with `[-2,1,-3,4,-1,2,1,-5,4]` → `6`, `[1]` → `1`, and `[-1,-2,-3]` → `-1`.
183. Write an AIRL function that takes two lists and returns the length of their longest common subsequence. Test with `[1,3,4,5,6,7,8]` and `[1,3,5,7]` → `4`, `[1,2,3]` and `[4,5,6]` → `0`, and `[1,2,3]` and `[1,2,3]` → `3`.
184. Write an AIRL function that takes a list of integers and returns the length of the longest increasing subsequence. Test with `[10,9,2,5,3,7,101,18]` → `4`, `[0,1,0,3,2,3]` → `4`, and `[7,7,7]` → `1`.
185. Write an AIRL function that takes a list and a window size and returns the moving average at each position. Test with `[1,2,3,4,5]` and `3` → `[2.0,3.0,4.0]`, `[1,2,3]` and `2` → `[1.5,2.5]`, and `[5,5,5]` and `3` → `[5.0]`.

## Graph-like Structures
186. Write an AIRL function that takes an adjacency list and a start node and returns nodes reachable via breadth-first search. Test with `{0:[1,2],1:[3],2:[],3:[]}` from `0` → `[0,1,2,3]`, from `2` → `[2]`, and `{}` from `0` → `[]`.
187. Write an AIRL function that takes an adjacency list and returns true if it contains a cycle. Test with `{0:[1],1:[2],2:[0]}` → `true`, `{0:[1],1:[2],2:[]}` → `false`, and `{}` → `false`.
188. Write an AIRL function that takes a weighted edge list and computes the total weight of a minimum spanning tree using a greedy approach. Test with edges `[(0,1,1),(0,2,3),(1,2,2)]` → `3`, single node → `0`, and two nodes one edge `[(0,1,5)]` → `5`.
189. Write an AIRL function that takes an adjacency list and performs topological sort. Test with `{0:[1,2],1:[3],2:[3],3:[]}` → `[0,1,2,3]` or `[0,2,1,3]`, `{0:[]}` → `[0]`, and `{0:[1],1:[]}` → `[0,1]`.
190. Write an AIRL function that takes a grid represented as a 2D list of 0s and 1s and counts the number of connected islands (groups of 1s). Test with `[[1,1,0],[0,1,0],[0,0,1]]` → `2`, `[[0,0],[0,0]]` → `0`, and `[[1,0],[0,1]]` → `2`.

## Encoding & Transformation
191. Write an AIRL function that takes a list and returns its run-length encoding as a list of (count, value) pairs. Test with `[1,1,2,3,3,3]` → `[(2,1),(1,2),(3,3)]`, `[1]` → `[(1,1)]`, and `[]` → `[]`.
192. Write an AIRL function that takes a run-length encoded list and decodes it back to the original. Test with `[(2,1),(1,2),(3,3)]` → `[1,1,2,3,3,3]`, `[(1,5)]` → `[5]`, and `[]` → `[]`.
193. Write an AIRL function that takes an integer and returns its binary representation as a list of bits. Test with `5` → `[1,0,1]`, `8` → `[1,0,0,0]`, and `0` → `[0]`.
194. Write an AIRL function that takes a list of bits and returns the integer they represent. Test with `[1,0,1]` → `5`, `[1,0,0,0]` → `8`, and `[0]` → `0`.
195. Write an AIRL function that takes an integer and returns its hexadecimal representation as a string. Test with `255` → `"ff"`, `16` → `"10"`, and `0` → `"0"`.

## Advanced List Algorithms
196. Write an AIRL function that takes a list and a value and returns a new list with the value inserted in sorted position. Test with `[1,3,5]` and `4` → `[1,3,4,5]`, `[]` and `1` → `[1]`, and `[2,4]` and `1` → `[1,2,4]`.
197. Write an AIRL function that takes a list and partitions it into sublists where each sublist is a maximal increasing run. Test with `[1,2,1,2,3]` → `[[1,2],[1,2,3]]`, `[3,2,1]` → `[[3],[2],[1]]`, and `[1,2,3]` → `[[1,2,3]]`.
198. Write an AIRL function that takes a list and returns the majority element (appearing more than n/2 times), or none if none exists. Test with `[3,3,4,2,3,3,1]` → `some(3)`, `[1,2,3]` → `none`, and `[1,1,2]` → `some(1)`.
199. Write an AIRL function that takes a list of integers and returns the smallest missing positive integer. Test with `[1,2,3]` → `4`, `[3,4,-1,1]` → `2`, and `[7,8,9]` → `1`.
200. Write an AIRL function that takes a list of integers and returns true if it can be split into two sublists with equal sums. Test with `[1,5,11,5]` → `true`, `[1,2,3,5]` → `false`, and `[1,1]` → `true`.

## Complex Compositions
201. Write an AIRL function that takes a list of integers and returns the top K most frequent elements. Test with `[1,1,1,2,2,3]` and `2` → `[1,2]`, `[1]` and `1` → `[1]`, and `[1,2,3]` and `2` → any two of `[1,2,3]`.
202. Write an AIRL function that takes a list of intervals represented as pairs and merges all overlapping intervals. Test with `[(1,3),(2,6),(8,10)]` → `[(1,6),(8,10)]`, `[(1,4),(4,5)]` → `[(1,5)]`, and `[(1,2)]` → `[(1,2)]`.
203. Write an AIRL function that takes a list of integers and a target sum and returns all pairs that sum to the target. Test with `[1,2,3,4,5]` and `6` → `[(1,5),(2,4)]`, `[1,2,3]` and `10` → `[]`, and `[3,3]` and `6` → `[(3,3)]`.
204. Write an AIRL function that takes a list of integers and a target sum and returns all triplets that sum to zero. Test with `[-1,0,1,2,-1,-4]` → `[(-1,-1,2),(-1,0,1)]`, `[0,0,0]` → `[(0,0,0)]`, and `[1,2,3]` → `[]`.
205. Write an AIRL function that takes a list of integers representing heights and computes the maximum water trapped between them. Test with `[0,1,0,2,1,0,1,3,2,1,2,1]` → `6`, `[4,2,0,3,2,5]` → `9`, and `[1,1]` → `0`.
206. Write an AIRL function that takes a string and returns the length of the longest substring without repeating characters. Test with `"abcabcbb"` → `3`, `"bbbbb"` → `1`, and `"pwwkew"` → `3`.
207. Write an AIRL function that takes a list and a target and returns two indices whose values sum to the target. Test with `[2,7,11,15]` and `9` → `(0,1)`, `[3,2,4]` and `6` → `(1,2)`, and `[3,3]` and `6` → `(0,1)`.
208. Write an AIRL function that takes a list of coin denominations and an amount and returns the minimum number of coins needed, or -1 if impossible. Test with `[1,5,6,9]` and `11` → `2`, `[2]` and `3` → `-1`, and `[1,2,5]` and `11` → `3`.
209. Write an AIRL function that takes a list of job intervals with start/end times and returns the maximum number of non-overlapping jobs. Test with `[(1,3),(2,4),(3,5)]` → `2`, `[(1,2),(3,4),(5,6)]` → `3`, and `[(1,10),(2,3),(3,4)]` → `2`.
210. Write an AIRL function that takes a list of integers and returns the number of inversions (pairs where left element is greater than right). Test with `[3,1,2]` → `2`, `[1,2,3]` → `0`, and `[3,2,1]` → `3`.

## Specification & Contract Oriented
211. Write an AIRL function with a precondition that the input list is non-empty and returns the second largest element. Test with `[1,2,3,4,5]` → `4`, `[5,5,5]` → `5`, and `[1,2]` → `1`.
212. Write an AIRL function with postcondition that the result list is sorted and contains the same elements as input. Test with `[3,1,2]` → `[1,2,3]`, `[]` → `[]`, and `[1]` → `[1]`.
213. Write an AIRL function with invariant that a running total never exceeds a budget, returning true if a list of costs fits within budget. Test with `[10,20,30]` and `60` → `true`, `[10,20,30]` and `50` → `false`, and `[]` and `0` → `true`.
214. Write an AIRL function with precondition that both inputs are sorted lists and returns their merged sorted result. Test with `[1,3,5]` and `[2,4,6]` → `[1,2,3,4,5,6]`, `[]` and `[1,2]` → `[1,2]`, and `[1]` and `[1]` → `[1,1]`.
215. Write an AIRL function with postcondition that result length equals input length, that normalizes a list of floats to sum to 1.0. Test with `[1.0,1.0,2.0]` → `[0.25,0.25,0.5]`, `[2.0]` → `[1.0]`, and `[1.0,3.0]` → `[0.25,0.75]`.

## Multi-argument & Currying
216. Write an AIRL function that takes a list and a binary function and reduces the list using that function from the left with no initial value. Test with `[1,2,3,4]` and max → `4`, `[5,3,7,1]` and min → `1`, and `[1,2,3]` and add → `6`.
217. Write an AIRL function that takes a function and returns a version that applies the function twice. Test with double applied to `3` → `12`, increment applied to `5` → `7`, and square applied to `2` → `16`.
218. Write an AIRL function that takes a list of functions and composes them right to left. Test with `[double, increment]` on `3` → `8`, `[square, double]` on `2` → `16`, and `[increment]` on `5` → `6`.
219. Write an AIRL function that takes a function and a list and applies the function to each pair of adjacent elements. Test with add on `[1,2,3,4]` → `[3,5,7]`, multiply on `[2,3,4]` → `[6,12]`, and subtract on `[5,3,1]` → `[2,2]`.
220. Write an AIRL function that takes a predicate and a list and returns the longest prefix satisfying the predicate. Test with even on `[2,4,5,6]` → `[2,4]`, positive on `[-1,2,3]` → `[]`, and even on `[2,4,6]` → `[2,4,6]`.

## Numeric Formatting & Output
221. Write an AIRL function that takes an integer and returns it as a zero-padded string of width N. Test with `42` and `5` → `"00042"`, `100` and `3` → `"100"`, and `7` and `4` → `"0007"`.
222. Write an AIRL function that takes a float and rounds it to N decimal places. Test with `3.14159` and `2` → `3.14`, `2.5` and `0` → `3.0`, and `1.005` and `2` → `1.01`.
223. Write an AIRL function that takes a list of integers and formats them as a comma-separated string. Test with `[1,2,3]` → `"1,2,3"`, `[42]` → `"42"`, and `[]` → `""`.
224. Write an AIRL function that takes a number of seconds and returns it as a "HH:MM:SS" formatted string. Test with `3661` → `"01:01:01"`, `0` → `"00:00:00"`, and `7384` → `"02:03:04"`.
225. Write an AIRL function that takes an integer and returns a string representation with thousands separators. Test with `1000000` → `"1,000,000"`, `999` → `"999"`, and `1234567` → `"1,234,567"`.

## Boolean Logic
226. Write an AIRL function that takes a list of booleans and returns true if an even number of them are true. Test with `[true,true,false]` → `true`, `[true,false,false]` → `false`, and `[]` → `true`.
227. Write an AIRL function that takes a list of booleans and computes their logical AND. Test with `[true,true,true]` → `true`, `[true,false,true]` → `false`, and `[]` → `true`.
228. Write an AIRL function that takes a list of booleans and computes their logical OR. Test with `[false,false,true]` → `true`, `[false,false]` → `false`, and `[]` → `false`.
229. Write an AIRL function that takes two lists of booleans and returns their element-wise XOR. Test with `[true,false,true]` and `[false,false,true]` → `[true,false,false]`, `[true]` and `[true]` → `[false]`, and `[false]` and `[false]` → `[false]`.
230. Write an AIRL function that takes an integer and returns its bit count (number of 1 bits). Test with `7` → `3`, `8` → `1`, and `255` → `8`.

## Miscellaneous Challenges
231. Write an AIRL function that takes a list of integers and returns true if it forms an arithmetic sequence. Test with `[1,3,5,7]` → `true`, `[1,2,4,8]` → `false`, and `[5]` → `true`.
232. Write an AIRL function that takes a list of integers and returns true if it forms a geometric sequence. Test with `[2,4,8,16]` → `true`, `[1,2,4,9]` → `false`, and `[3]` → `true`.
233. Write an AIRL function that takes a list of integers representing a histogram and returns the largest rectangle that fits within it. Test with `[2,1,5,6,2,3]` → `10`, `[1,1]` → `2`, and `[2,4]` → `4`.
234. Write an AIRL function that takes a list and returns true if it can be rearranged into a palindrome. Test with `[1,2,1]` → `true`, `[1,2,3]` → `false`, and `[1,1,2,2]` → `true`.
235. Write an AIRL function that takes two strings and returns true if one is an anagram of the other. Test with `"listen"` and `"silent"` → `true`, `"hello"` and `"world"` → `false`, and `"abc"` and `"cba"` → `true`.
236. Write an AIRL function that takes a list of integers and returns the number of pairs whose sum is even. Test with `[1,2,3,4]` → `4`, `[1,3,5]` → `3`, and `[2,4,6]` → `3`.
237. Write an AIRL function that takes a list and returns every other element starting from the first. Test with `[1,2,3,4,5]` → `[1,3,5]`, `[1,2]` → `[1]`, and `[]` → `[]`.
238. Write an AIRL function that takes two integers and returns a list of all integers between them inclusive. Test with `1` and `5` → `[1,2,3,4,5]`, `3` and `3` → `[3]`, and `5` and `1` → `[5,4,3,2,1]`.
239. Write an AIRL function that takes a list and returns true if it is a valid min-heap structure. Test with `[1,3,5,7,9,8,6]` → `true`, `[1,3,2,7,5,8,4]` → `true`, and `[5,3,1]` → `false`.
240. Write an AIRL function that takes a list of integers and returns the difference between the maximum and minimum values. Test with `[3,1,4,1,5,9]` → `8`, `[5]` → `0`, and `[1,10]` → `9`.
241. Write an AIRL function that takes a list of integer pairs representing edges and returns the number of connected components. Test with `[(0,1),(1,2),(3,4)]` and `5` nodes → `2`, `[(0,1),(0,2),(0,3)]` and `4` nodes → `1`, and no edges and `3` nodes → `3`.
242. Write an AIRL function that takes a matrix of distances and returns the shortest path between two nodes using Floyd-Warshall. Test with a 3x3 matrix → correct shortest distances, a 2x2 identity-like matrix, and a direct path of length 1.
243. Write an AIRL function that takes a list of integers and a modulus and returns a list of their remainders. Test with `[10,15,20]` and `7` → `[3,1,6]`, `[6,12,18]` and `6` → `[0,0,0]`, and `[1,2,3]` and `2` → `[1,0,1]`.
244. Write an AIRL function that takes a list of booleans and returns the indices of all true values. Test with `[false,true,false,true]` → `[1,3]`, `[true,true]` → `[0,1]`, and `[false,false]` → `[]`.
245. Write an AIRL function that takes two lists and returns true if the second is a rotation of the first. Test with `[1,2,3,4]` and `[3,4,1,2]` → `true`, `[1,2,3]` and `[1,3,2]` → `false`, and `[1]` and `[1]` → `true`.
246. Write an AIRL function that takes a list of integers and returns the length of the longest subarray with equal numbers of 0s and 1s. Test with `[0,1,0,1,1,0,1]` → `6`, `[0,1]` → `2`, and `[0,0,0]` → `0`.
247. Write an AIRL function that takes a list of integers and groups them into lists of equal values, preserving order of first appearance. Test with `[1,2,1,3,2]` → `[[1,1],[2,2],[3]]`, `[5,5,5]` → `[[5,5,5]]`, and `[1,2,3]` → `[[1],[2],[3]]`.
248. Write an AIRL function that takes a list of integers and returns the sum of all contiguous subarray sums. Test with `[1,2,3]` → `20`, `[1]` → `1`, and `[1,2]` → `6`.
249. Write an AIRL function that takes a list and returns a new list with elements at odd and even positions swapped pairwise. Test with `[1,2,3,4]` → `[2,1,4,3]`, `[1,2,3]` → `[2,1,3]`, and `[]` → `[]`.
250. Write an AIRL function that takes a list of integers and returns all unique triplets (a,b,c) where a < b < c and a+b+c equals a given target. Test with `[1,2,3,4,5]` and `9` → `[(1,3,5),(2,3,4)]`, `[1,2,3]` and `10` → `[]`, and `[0,0,0]` and `0` → `[(0,0,0)]`.


