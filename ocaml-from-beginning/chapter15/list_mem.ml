let rec list_mem list = 
  match list with
  | [] -> true
  | x :: xs -> if List.mem true x then list_mem xs else false

(** Another Way *)
let list_check list = 
  List.for_all (fun lst -> List.mem true lst) list
  