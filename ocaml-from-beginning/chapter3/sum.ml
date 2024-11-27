let rec sum n =
    match n with
    | 1 -> 1
    | _ -> n + sum (n - 1)
;;