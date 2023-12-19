let some_or_zero = function
  | Some x -> x
  | None -> 0
;;

List.map some_or_zero [ Some 3; None; Some 4 ]

let rec sum list =
  match list with
  | [] -> 0
  | hd :: tl -> hd + sum tl

let _ = sum [ 1; 2; 3; 4; 5 ]

let rec drop_value list to_drop =
  match list with
  | [] -> []
  | head :: tail ->
      let new_tail = drop_value tail to_drop in
      if head = to_drop then new_tail else head :: new_tail

let _ = drop_value [ 1; 2; 3; 4; 5 ] 3

let rec drop_zero = function
  | [] -> []
  | 0 :: tail -> drop_zero tail
  | head :: tail -> head :: drop_zero tail

let _ = drop_zero [ 1; 2; 3; 0; 4; 5 ]

(** Performance Checkking code*)
open Core_bench
let plus_one_match x = 
    match x with
    | 0 -> 1
    | 1 -> 2
    | 2 -> 3
    | 3 -> 4
    | _ -> x + 1
;;

let plus_one_if x = 
    if x = 0 then 1
    else if x = 1 then 2
    else if x = 2 then 3
    else x + 1
;;

[Bench.Test.create ~name: "plus_one_match" ( fun () -> plus_one_match 10);
    Bench.Test.create ~name: "plus_one_if" (fun () -> plus_one_if 10)
]
|> Bench.bench