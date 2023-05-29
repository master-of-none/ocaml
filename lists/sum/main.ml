let rec sum lst =
  match lst with
    | [] -> 0
    | h :: t -> h + sum t;;

let result = sum [1; 2; 3; 4; 5] in
  print_int result;
  print_newline() ;;
