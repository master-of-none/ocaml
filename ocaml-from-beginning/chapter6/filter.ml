let rec filter f list =
  match list with
  | [] -> []
  | h :: t -> if f h then h :: filter f t else filter f t