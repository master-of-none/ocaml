type 'a tree = 
| Lf
| Br of 'a * 'a tree * 'a tree

let rec check_element tr elem = 
  match tr with
  | Lf -> false
  | Br (x, l, r) -> if x = elem then true else (check_element l elem) || (check_element r elem)

let rec flip_tree tr = 
  match tr with
  | Lf -> Lf
  | Br (x, l, r) -> Br(x, flip_tree r, flip_tree l)

(*? Another Way *)
let rec invert_tree tr = 
  match tr with
  | Lf -> Lf
  | Br (x, l, r) -> 
    let left = invert_tree l in
    let right = invert_tree r in 
    Br (x, right, left)

let rec same_shape tr1 tr2 = 
  match tr1, tr2 with 
  | Lf, Lf -> true
  | Br(_, l1, r1), Br(_, l2, r2) -> same_shape l1 l2 && same_shape r1 r2
  | _ -> false