let rec nth k = function
  | [] -> None
  | h :: t -> if k = 0 then Some h else nth (k - 1) t

let () =
  let my_list = [ 1; 2; 3; 4; 5 ] in
  let n = 3 in
  match nth n my_list with
  | None -> print_endline "Empty List"
  | Some x ->
      print_endline
        ("The " ^ string_of_int n ^ "th element is: " ^ string_of_int x)
