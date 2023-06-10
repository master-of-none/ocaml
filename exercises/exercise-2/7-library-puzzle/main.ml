let last_element list = 
  let reversed = List.rev list in
  List.hd reversed
;;

let my_list1 = [1; 2; 3; 4; 5];;

let last_val = last_element my_list1;;
print_endline "Last value in the list is"; print_int last_val;;
print_newline();;

let check_zero list = 
  List.mem 0 list
;;

let my_list2 = [1; 2; 3;];;
let result = check_zero my_list2;;
print_string "There is a zero present in the list "; print_string (string_of_bool result);;