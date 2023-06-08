  let rec sum (l : int list) : int =
    match l with
    | [] -> 0
    | x :: xs -> x + (sum xs) 
  ;;

  let rec sum_plus_acc (acc : int) (l : int list) : int =
    match l with
      | [] -> acc
      | x :: xs -> sum_plus_acc (acc + x) xs 
  ;;

  let sum_tr : int list -> int =
    sum_plus_acc 0
  ;;

  let result = sum [1; 2; 3;] in 
  print_string "Sum of list using normal recursion: ";
  print_int result;
  print_newline()
  ;;

  let result = sum_tr [1; 2; 3;] in
  print_string "Sum of list using tail recursion: ";
  print_int result;
  print_newline()
  ;;
