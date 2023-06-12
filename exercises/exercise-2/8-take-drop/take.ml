let take n lst = 
  let rec take_helper n acc lst = 
    match (n, lst) with
    | (0, _) | (_, []) -> List.rev acc
    | (_, x::xs) -> take_helper (n - 1) (x :: acc) xs
  in
  take_helper n [] lst

(* Test Case 1 *)
let lst1 = [1; 2; 3; 4; 5]
let result1 = take 3 lst1

let () = 
  print_endline "Test Case 1";
  print_endline "Input list is: [1; 2; 3; 4; 5]";
  print_endline "Result ";
  List.iter (fun x -> print_int x; print_string " ") result1;
  print_newline ()

(* Test Case 2 *)
let lst2 = [10; 20; 30; 40]
let result2 = take 5 lst2
let () =
  print_endline "Test Case 2";
  print_endline "Input list is: [10; 20; 30; 40]";
  print_endline "Result";
  List.iter (fun x -> print_int x; print_string " ") result2;
  print_newline()

(* Test Case 3 *)
let lst3 = [true; false; true; true]
let result3 = take 2 lst3
let () =
  print_endline "Test Case 3";
  print_endline "Input List is: [true; false; true; true]";
  print_endline "Result";
  List.iter (fun x -> print_string (string_of_bool x); print_string " ") result3;
  print_newline()