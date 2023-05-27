let rec fact n = if n = 0 then 1 else n * fact (n - 1)

let () = 
  let result = fact 3 in
  
  print_string "The factorial of the mumber is: ";
  print_int result;
  print_newline ()
