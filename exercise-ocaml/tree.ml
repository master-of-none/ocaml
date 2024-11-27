type 'a tree = 
| Lf
| Br of 'a * 'a tree * 'a tree

(** Depth of Tree *)
let rec depth tr =
  match tr with
  | Lf -> 0
  | Br(_, l, r) -> 1 + max(depth l) (depth r)

(** Same Tree *)
let rec same_tree tr1 tr2 = 
  match tr1, tr2 with
  | Lf, Lf -> true
  | Br(_, l1, r1), Br(_, l2, r2) -> same_tree l1 l2 && same_tree r1 r2
  | _ -> false