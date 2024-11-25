let rec total_keys dict = 
  let rec is_key_present key list = 
    match list with
    | [] -> false
    | (k, _) :: t -> if k = key then true else is_key_present key t
  in
  match dict with 
  | [] -> 0
  | (k, _) :: t ->
    if is_key_present k t then total_keys t else 1 + total_keys t