let rec tail_of_list lst =
  match lst with
  | [] -> None
  | [ x ] -> Some x
  | _ :: t -> tail_of_list t

let () =
  let my_list = [ 1 ] in
  match tail_of_list my_list with
  | None -> print_endline "Empty list"
  | Some x -> print_endline ("Tail of the list: " ^ string_of_int x)
