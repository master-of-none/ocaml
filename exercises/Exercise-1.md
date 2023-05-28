# Exercise 1

## Shrikrishna Bhat

## Question 1 - Values (Easy)

What is the type and value of each of the following OCaml expressions?

- 7 \* (1 + 2 + 3)

### Answer

Type is 'int' and answer is 42

- "CS " ^ string_of_int 3110

### Answer

This concatenates the string, hence the answer is 'string'

## Question 2 - Operators (Easy)

- Write an expression that multiplies 42 by 10.

### Answer

42 \* 10;;

- Write an expression that divides 3.14 by 2.0. Hint: integer and floating-point operators are written differently in
  OCaml.

### Answer

This is a floating-point operation, hence we have to add a dot after '/' operator.
3.14 /. 2.0;;

- Write an expression that computes 4.2 raised to the seventh power. Note: there is no built-in integer exponentiation
  operator in OCaml (nor is there in C, by the way), in part because it is not an operation provided by most CPUs.

### Answer

4.2 \*\* 7.0

## Question 3 - Equality (Easy)

- Write an expression that compares 42 to 42 using structural equality.

### Answer

42 = 42;;

- Write an expression that compares "hi" to "hi" using structural equality. What is the result?

### Answer

"hi" = "hi";;
We get the answer as true.

- Write an expression that compares "hi" to "hi" using physical equality. What is the result?

### Answer

"hi" == "hi";;
We get the answer as false.

## Question 4 - assert (Easy)

- Enter 'assert true;;' into utop and see what happens.

### Answer

We get the 'unit =()' as output.

- Enter 'assert false;;' into utop and see what happens.

### Answer

We get the exception - Assert_failure.

- Write an expression that asserts 2110 is not (structurally) equal to 3110.

### Answer

assert (2110 <> 3110);;

## Question 5 - if (Easy)

- Write an if expression that evaluates to 42 if 2 is greater than 1 and otherwise evaluates to 7.

### Answer

if 2 > 1 then 42 else 7 ;;

## Question 6 - Double Fun (Easy)

Using the increment function from above as a guide, define a function double that multiplies its input by 2. For example,
double 7 would be 14. Test your function by applying it to a few inputs. Turn those test cases into assertions.

### Answer

```OCaml

let double = fun x -> x \* 2;;
assert ((double 7) = 14);;
assert ((double 2) <> 14);;
```

## Question 7 - More Fun (Medium)

- Define a function that computes the cube of a floating-point number. Test your function by applying it to a few inputs.

### Answer

```OCaml
let cubing = fun cube -> (cube \*\*3);;
assert ((cubing 3.) = 27.);;
assert ((cubing 4.) <> 69.);;
```

- Define a function that computes the sign (1, 0, or -1) of an integer. Use a nested if expression.

### Answer

```OCaml
let sign x =
    if x > 0 then
        1

    else if x < 0
        then -1

    else
        0
(* Testing - all will return Unit*)

assert((sign 10) = 1);;
assert((sign 0) = 0);;
assert((sign(-10)) = (-1));;
```

- Define a function that computes the area of a circle given its radius. Test your function with assert.

### Answer

```OCaml
let area r =
    3.14 *. (r**2.)

(* Testing *)
assert(area(2.) = 12.56);;
assert(area(3.) <> 12.);;

```

## Question 8 - RMS (Med)

- Find root mean square √(𝑥^2 + 𝑦^2)/2.

### Answer

```OCaml
let rms x y =
    sqrt ((x**2. +. y**2.) /. 2.);;
    let result = rms 2 3;;
```

## Question 9 - Date fun (Hard)

- Define a function that takes an integer d and string m as input and returns true just when d and m form a valid date.
  Here, a valid date has a month that is one of the following abbreviations: Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sept, Oct,
  Nov, Dec. And the day must be a number that is between 1 and the minimum number of days in that month, inclusive.
  For example, if the month is Jan, then the day is between 1 and 31, inclusive, whereas if the month is Feb, then the day
  is between 1 and 28, inclusive.
  How terse (i.e., few and short lines of code) can you make your function? You can definitely do this in fewer than 12 lines.

```OCaml
let date d m =
    if (m = "Jan" || m = "Mar" || m = "May" || m = "Jul" || m = "Aug" || m = "Oct" || m = "Dec" ) && ( d >=1 && d <=31 ) then
        true

    else if (m = "Apr" || m = "Jun" || m = "Sep" || m = "Nov") && (d >=1 && d <= 30) then
        true

    else if (m = "Feb" && (d >=1 && d <= 28)) then
        true
    else
        false ;;

(* Testing *)
assert((date 0 "Jan") = false);;
assert((date 22 "Feb") = true);;
assert((date 29 "Mar") = true);;

```

## Question 10 - Fibonacci (Medium)

- Define a recursive function fib : int -> int, such that fib n is the nth number in the Fibonacci sequence.

### Answer

```OCaml

let rec fib n =
    if n = 1 || n = 2 then
        1
    else
        fib (n - 1) + fib (n - 2);;
```

### Question 11 - fib fast (Hard)

- Fast Fibonacci using helper function (Medium)

### Answer

```OCaml
let rec fib n =
    let rec helper n pp p =
        if n = 1 then
            p
        else
            helper(n-1) p (pp + p)
    in
    helper n 0 1
```

## Question 12 - poly types (Hard)

- What is the type of each of the functions below?

- let f x = if x then x else x
  Answer: bool, x is of type bool.

- let g x y = if y then x else x
  Answer: Returns polymorphic type 'a. x is of type 'a, and y is of type bool.
- let h x y z = if x then y else z
  Answer: polymorphic type 'a. x is of type bool, y and z are of types 'a.

- let i x y z = if x then y else y
  Answer: Here, x will be of type bool, y will be of type 'a and z will be of type 'b
  Since we are playing with values of x and z, type 'a is returned.

## Question 13 - Divide (Medium)

- Write a function divide : numerator:float -> denominator:float -> float.

### Answer

```OCaml
let divide x y =
    x /. y
```

Note: Always messed up floating-point arithmetic -\_-'

## Question 14 - Associativity (Medium)

- Suppose that we have defined let add x y = x + y. Which of the following produces an integer, which produces
  a function, and which produces an error? Decide on an answer, then check your answer in the toplevel.

- add 5 1 \- Produces int.
- add 5 \- Produces a new function
- (add 5) 1 \- Produces int
- add (5 1) \- Produces error

## Question 15 - Average (Medium)

- Define an infix operator +/. to compute the average of two floating-point numbers. For example,
  - 1.0 +/. 2.0 = 1.5
  - 0. +/. 0. = 0.

### Answer

let (+/.) a b = (a +. b) /. 2.0;;

## Question 16 - Print hello world (Easy)

- Type the following in utop:
  - print_endline "Hello world!";;
  - print_string "Hello world!";;
    Notice the difference in output from each.

### Answer

Both return unit() but in the former new line is printed.
