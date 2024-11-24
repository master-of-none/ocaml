let rec evens list =
  match list with
  | [] -> []
  | [a] -> []
  | _ :: b :: t ->  b :: evens t;;
  