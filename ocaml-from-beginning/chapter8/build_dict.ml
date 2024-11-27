let rec build_dict keys values = 
  match (keys,values) with
  | ([], []) -> []
  | (k::kx, v::vx) -> (k,v) :: build_dict kx vx
  | _ -> raise (Invalid_argument "Lists not same length")

let rec build_list dict = 
  match dict with 
  | [] -> ([], [])
  | (k, v) :: t -> 
    let (keys, values) = build_list t in (k :: keys, v::values)