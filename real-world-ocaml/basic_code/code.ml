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

open Core_bench
(** Performance Checkking code*)

let plus_one_match x =
  match x with
  | 0 -> 1
  | 1 -> 2
  | 2 -> 3
  | 3 -> 4
  | _ -> x + 1

let plus_one_if x =
  if x = 0 then 1 else if x = 1 then 2 else if x = 2 then 3 else x + 1
;;

[ Bench.Test.create ~name:"plus_one_match" (fun () -> plus_one_match 10)
; Bench.Test.create ~name:"plus_one_if" (fun () -> plus_one_if 10)
]
|> Bench.bench

open Base
(** Another testing example*)

let rec sum_if list =
  if List.is_empty list then 0 else List.hd_exn list + sum_if (List.tl_exn list)
;;

let numbers = List.range 0 1000 in
[ Bench.Test.create ~name:"sum_if" (fun () -> sum_if numbers)
; Bench.Test.create ~name:"sum" (fun () -> sum numbers)
]
|> Bench.bench

(** Fold Function *)
(* let _ = List.fold ~init:0 ~f:( + ) [ 1; 2; 3; 4 ] *)

(** Fold reverse *)
(* let _ = List.fold ~init:[] ~f:(fun acc hd -> hd :: acc) [ 1; 2; 3; 4 ] *)

(** Filter *)
(* List.filter ~f:(fun x -> x % 2 = 0) [1; 2; 3; 4; 5] *)

