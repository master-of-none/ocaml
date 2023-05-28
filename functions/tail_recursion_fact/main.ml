(* Has Integer overflow problem*)

let rec fact_aux n acc =
  if n = 0 then acc else fact_aux (n - 1) (n * acc)

let fact_tr n = fact_aux n 1

let () =
  let result = fact_tr 50 in
  print_string "The factorial value: ";
  print_int result;
  print_newline ()

