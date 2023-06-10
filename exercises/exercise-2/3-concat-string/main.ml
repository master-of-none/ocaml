let rec concat_string s =
  match s with
    | [] -> ""
    | x :: xs -> x ^ concat_string xs
;;

let my_list = ["Hello"; "World";];;
let result = concat_string my_list;;
print_endline "Concatenated list is";;
print_string result;;


