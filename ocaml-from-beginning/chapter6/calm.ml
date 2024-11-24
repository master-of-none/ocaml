let rec calm list =
  match list with 
  | [] -> []
  | h :: t -> if h = '!' then '.' :: calm t else h :: calm t

let rec map f l = 
  match l with 
  | [] -> []
  | h :: t -> f h :: map f t
;;

let calm_map list = 
  map (fun h -> if h = '!' then '.' else h) list 