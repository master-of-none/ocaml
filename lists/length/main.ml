let rec length lst = 
  match lst with
    | [] -> 0
    | _ :: t -> 1 + length t ;;

let result = length [1; 2; 3; 4; 5] in
print_int result;
print_newline() ;;

