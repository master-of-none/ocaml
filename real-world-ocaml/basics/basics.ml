let () = Stdio.print_endline "Hello"

(** Arrays *)
let _ = [| 1; 2; 3; 4 |]

(** Recursion *)
let rec sum l =
  match l with
  | [] -> 0
  | hd :: tl -> hd + sum tl

let () = print_endline (string_of_int (sum [ 1; 2; 3; 4 ]))

let rec remove_sequential_duplicates list =
  match list with
  | [] -> []
  | [ x ] -> [ x ]
  | first :: second :: tl ->
      if first = second then remove_sequential_duplicates (second :: tl)
      else first :: remove_sequential_duplicates (second :: tl)

let _ = remove_sequential_duplicates [ 1; 1; 2; 3; 4 ]
