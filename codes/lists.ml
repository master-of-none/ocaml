(** Sum of all the elements in the list*)
let rec sum lst = match lst with [] -> 0 | h :: t -> h + sum t

(** Length of the list*)
let rec length lst = match lst with [] -> 0 | _ :: t -> 1 + length t
