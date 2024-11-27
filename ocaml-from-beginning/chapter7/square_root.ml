exception Negative_argument of int

let largest_int n = 
  if n < 0 then raise (Negative_argument n)
  else
    let sqrt_float = sqrt (float_of_int n) in
  int_of_float (floor sqrt_float)


let largest_int_zero n =
  try largest_int n 
with | Negative_argument _ -> 0