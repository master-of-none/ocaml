type 'a tree = 
| Leaf
| Br of 'a * 'a tree * 'a tree

(** Size of the tree *)

let rec size tr = 
  match tr with
  | Leaf -> 0
  | Br (_, l, r) -> 1 + size l + size r

let rec total tr = 
  match tr with 
  | Leaf -> 0
  | Br (x, l, r) -> x + total l + total r

(** Max depth of a tree *)
let max x y = 
  if x > y then x else y

let rec max_depth tr = 
  match tr with
  | Leaf -> 0
  | Br (_, l, r) -> 1 + max (max_depth l) (max_depth r)