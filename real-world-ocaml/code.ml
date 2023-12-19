let some_or_zero = function
    | Some x -> x
    | None -> 0
;;
List.map some_or_zero [Some 3; None; Some 4];;

let rec sum list = 
    match list with
    | [] -> 0
    | hd :: tl -> hd + sum tl
;;