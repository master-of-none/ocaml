(* power calculates power of x
  base case y = 0, return 1*)

let rec pow x y = if y = 0 then 1 else x * pow x (y - 1)

let () =
  let result = pow 2 3 in
  print_string "The power of x ^ y is: ";
  print_int result;
  print_newline()
 