(* First problem various ways to create list*)

(** Question 1*)
let my_list1 = [1; 2; 3; 4; 5;];;

(** Question 2*)
let my_list2 = 1 :: 2 :: 3 :: 4 :: 5 :: [];;

(** Question 3*)

let my_list3 = 1 :: [2; 3; 4;] @ [5];;

let rec print_list = function
  | [] -> ()
  | x :: xs -> print_int x; print_string " "; print_list xs
;;

print_string "First string ";;
print_list my_list1;;
print_newline();;

print_string "Second string ";;
print_list my_list2;;
print_newline();;

print_string "Third string ";;
print_list my_list3;;
print_newline();;
