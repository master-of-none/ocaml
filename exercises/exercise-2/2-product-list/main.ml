let rec product my_list =
  match my_list with
  | [] -> 1
  | x :: xs -> x * product xs
;;

let rec print_list = function
  | [] -> ()
  | x :: xs -> print_int x; print_string " "; print_list xs;
;;

let my_list = [1; 2; 3; 4; 5];;


  print_string "Before multiplying";
  print_newline();
  print_list my_list;
  
  let value = product my_list in
  print_newline();
  print_string "The product of list is";
  print_newline();
  print_int value;
  print_newline();
