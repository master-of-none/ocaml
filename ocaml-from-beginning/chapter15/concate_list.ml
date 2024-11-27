let concat_list list = 
  List.concat list

let rec concat list = 
  match list with
  | [] -> []
  | x :: xs -> x @ concat xs

let tail_recursive_concat list = 
  let rec aux lst acc = 
    match lst with
    | [] -> acc
    | x :: xs -> aux xs (acc @ x)
  in aux list []
