let rec sum = function
  | [] -> 0
  | h :: t -> h + sum t;;

let result = sum [1; 2; 3;] in
print_string "Sum of list: ";  
print_int result;
print_newline();;
 
