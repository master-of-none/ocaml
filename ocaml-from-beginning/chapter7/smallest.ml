let rec smallest list = 
  let sorted_list = List.sort compare list in
  match sorted_list with
  | [] -> raise Not_found
  | h :: t -> if h > 0 then h else smallest t

let smallest_or_zero list = 
  try 
    smallest list
  with | Not_found -> 0