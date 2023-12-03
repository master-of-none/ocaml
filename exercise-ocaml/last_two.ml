let rec last_two = function
  | [] -> None
  | [ _ ] -> None
  | [ x; y ] -> Some (x, y)
  | _ :: t -> last_two t

let () =
  let my_list = [ 1; 2; 3; 4; 5 ] in
  match last_two my_list with
  | None -> print_endline "One element or empty list"
  | Some (x, y) ->
      print_endline
        ("Last two elements are: " ^ string_of_int x ^ string_of_int y)
