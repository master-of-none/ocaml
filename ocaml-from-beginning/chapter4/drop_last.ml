let rec drop_last list =
  match list with
  | [] -> []
  | [_] -> []
  | h :: t -> h :: drop_last t
;;

let drop_last_tail list =
  let rec aux list acc = 
    match list with 
    | [] -> acc
    | [_] -> List. rev acc
    | h :: t -> aux t (h :: acc)
  in 
    aux list []