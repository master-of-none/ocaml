let drop n lst =
  let rec drop_helper n acc lst =
    match (n, lst) with
    | (0, _) | (_, []) -> List.rev acc
    | (_, _::xs) -> drop_helper (n - 1) acc xs
  in
  drop_helper n [] lst

(* Test case 1 *)
let lst1 = [1; 2; 3; 4; 5]
let result1 = drop 2 lst1
let () = 
  print_endline "Test case 1:";
  print_endline "Input list: [1; 2; 3; 4; 5]";
  print_endline "Result: ";
  List.iter (fun x -> print_int x; print_string " ") result1;
  print_newline ()

(* Test case 2 *)
let lst2 = [10; 20; 30; 40]
let result2 = drop 5 lst2
let () =
  print_endline "Test case 2:";
  print_endline "Input list: [10; 20; 30; 40]";
  print_endline "Result: ";
  List.iter (fun x -> print_int x; print_string " ") result2;
  print_newline ()

(* Test case 3 *)
let lst3 = [true; false; true; true]
let result3 = drop 3 lst3
let () =
  print_endline "Test case 3:";
  print_endline "Input list: [true; false; true; true]";
  print_endline "Result: ";
  List.iter (fun x -> print_string (string_of_bool x); print_string " ") result3;
  print_newline ()
