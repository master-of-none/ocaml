let rec for_all f list = 
  match list with
  | [] -> true
  | h :: t -> if f h then for_all f t else false
