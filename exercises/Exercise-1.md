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

let double = fun x -> x \* 2;;
assert ((double 7) = 14);;
assert ((double 2) <> 14);;

## Question 7 - More Fun (Medium)

- Define a function that computes the cube of a floating-point number. Test your function by applying it to a few inputs.

### Answer

let cubing = fun cube -> (cube \*\*3);;
assert ((cubing 3.) = 27.);;
