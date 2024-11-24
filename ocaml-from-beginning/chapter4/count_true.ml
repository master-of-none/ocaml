let rec count_true list = 
  match list with
  | [] -> 0
  | h :: t -> if h then 1 + count_true t else count_true t
;;

(* Count True Tail recursive *)
let count_true_tail list = 
  let rec aux list acc = 
    match list with
    | [] -> acc
    | h :: t -> if h then aux t (acc + 1) else aux t acc
  in 
    aux list 0