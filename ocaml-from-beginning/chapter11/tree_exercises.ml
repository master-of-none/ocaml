type 'a tree = 
| Lf
| Br of 'a * 'a tree * 'a tree

let rec check_element tr elem = 
  match tr with
  | Lf -> false
  | Br (x, l, r) -> if x = elem then true else (check_element l elem) || (check_element r elem)