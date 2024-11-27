let rec fib n = 
  match n with
  | 1 -> 1
  | 2 -> 1
  | _ -> fib (n - 1) + fib (n - 2)
;;

let fib_fast n = 
  let rec tail_recurse aux n acc =
    match n with
    | 1 -> aux
    | 2 -> aux
    | _ -> tail_recurse acc (n - 1) (acc + aux) in 
    tail_recurse 1 n 1