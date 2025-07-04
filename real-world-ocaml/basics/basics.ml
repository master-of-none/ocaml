open Base
open Stdio

let () = Stdio.print_endline "Hello"

(** Arrays *)
let _ = [| 1; 2; 3; 4 |]

(** Recursion *)
let rec sum l =
  match l with
  | [] -> 0
  | hd :: tl -> hd + sum tl

let () = print_endline (Int.to_string (sum [ 1; 2; 3; 4 ]))

let rec remove_sequential_duplicates list =
  match list with
  | [] -> []
  | [ x ] -> [ x ]
  | first :: second :: tl ->
      if first = second then remove_sequential_duplicates (second :: tl)
      else first :: remove_sequential_duplicates (second :: tl)

let _ = remove_sequential_duplicates [ 1; 1; 2; 3; 4 ]

let languages = "OCaml, Python, C++"

let dashed_languages =
  let language_list = String.split languages ~on:',' in
  let trimmed_list = List.map ~f:String.strip language_list in
  String.concat ~sep:"-" trimmed_list

(**? Other Way *)
let dashed_languages_pipe =
  languages
  |> String.split ~on:','
  |> List.map ~f:String.strip
  |> String.concat ~sep:"-"

let () = print_endline ("Dashed Languages: " ^ dashed_languages)

let () = print_endline ("Dashed Languages: " ^ dashed_languages_pipe)

(** Pattern Matching in let *)
let _, _ = List.unzip [ (1, "one"); (2, "two"); (3, "three") ]

(** UpperCasing First entry of line *)
let up_case_entry line =
  match String.split ~on:',' line with
  | [] -> assert false
  | first :: rest -> String.concat ~sep:"," (String.uppercase first :: rest)

(** Anon function *)
let list = List.map ~f:(fun x -> x + 1) [ 1; 2; 3 ]

let transforms = [ String.uppercase; String.lowercase ]

let list = List.map ~f:(fun g -> g "Hello World") transforms

let rec find_first_repeat (list : int list) : int option =
  match list with
  | [] | [ _ ] -> None
  | x :: y :: tl -> if x = y then Some x else find_first_repeat (y :: tl)

let () =
  match find_first_repeat [ 1; 1; 2; 3; 4 ] with
  | Some x -> printf "The first repeat character is %d\n" x
  | None -> print_endline "No repeat character found"

let rec is_even x = if x = 0 then true else is_odd (x - 1)

and is_odd x = if x = 0 then false else is_even (x - 1)

let list = List.map ~f:is_even [ 0; 1; 2; 3; 4; 5 ]

let list = List.map ~f:is_odd [ 0; 1; 2; 3; 4; 5 ]

let ( +! ) (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

(** Print UNIX elements of PATH *)
let path = "/usr/bin:/usr/local/bin:/bin:/sbin:/usr/bin"

let () =
  String.split ~on:':' path
  |> List.dedup_and_sort ~compare:String.compare
  |> List.iter ~f:print_endline

(** Another way for function *)
let some_or_zero = function
  | Some x -> x
  | None -> 0

let list = List.map ~f:some_or_zero [ Some 3; None; Some 5 ]

let rec read_and_accumulate accum =
  let line = In_channel.input_line In_channel.stdin in
  match line with
  | None -> accum
  | Some x -> read_and_accumulate (accum +. Float.of_string x)

let () =
  print_endline "Enter numbers and enter <C-d> to stop the code";
  printf "Total: %F\n" (read_and_accumulate 0.)
