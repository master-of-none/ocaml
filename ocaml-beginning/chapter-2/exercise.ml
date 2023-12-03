(* Question 1 *)
let times_ten x = x * 10

(* Question 2*)
let is_zero x y = x <> 0 && y <> 0

(* Question 3*)
let rec sum n = if n = 1 then 1 else n * sum (n - 1)

(* Question 4 *)
let power x n = x ** n

(* Question 5 *)
let is_vowel c = c = 'a' || c = 'e' || c = 'i' || c = 'o' || c = 'u'

let is_consonant c = not (is_vowel c)

(* Question 6 *)
let rec factorial n =
  if n < 0 then 0 else if n = 0 then 1 else n * factorial (n - 1)
