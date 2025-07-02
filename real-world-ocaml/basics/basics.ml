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

let languages = "OCaml, Python, C++";;
let dashed_languages = 
  let language_list = String.split languages ~on: ',' in
  let trimmed_list = List.map ~f: String.strip language_list in
  String.concat ~sep: "-" trimmed_list

(**? Other Way *)
let dashed_languages_pipe = 
  languages
  |> String.split ~on: ','
  |> List.map ~f: String.strip
  |> String.concat ~sep: "-"

let () = print_endline ("Dashed Languages: " ^  dashed_languages_pipe)

(* let rec read_and_accumulate accum =
  let line = In_channel.input_line In_channel.stdin in
  match line with
  | None -> accum
  | Some x -> read_and_accumulate (accum +. Float.of_string x)

let () =
  print_endline "Enter numbers and enter <C-d> to stop the code";
  printf "Total: %F\n" (read_and_accumulate 0.)
 *)
