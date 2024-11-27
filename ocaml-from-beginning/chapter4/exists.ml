let rec exists member list = 
  match list with
  | [] -> false
  | h :: t -> if h = member then true else exists member t
;;

let rec make_set list = 
  match list with
  | [] -> []
  | h :: t -> if exists h t then make_set t else h :: make_set t
;;
