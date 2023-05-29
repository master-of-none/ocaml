let rec length lst = 
  match lst with
    | [] -> 0
    | _ :: t -> 1 + length t ;; (* The value h gives error, hence we have to replace it with _*)

let result = length [1; 2; 3; 4; 5] in
print_string "The length of the list is: ";
print_int result;
print_newline() ;;

