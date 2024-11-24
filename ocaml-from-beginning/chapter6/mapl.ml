let rec mapl f list = 
  match list with
  | [] -> []
  | x :: xs ->
    match x with
    | [] -> []
    | _ -> (List.map f x ) :: mapl f xs
