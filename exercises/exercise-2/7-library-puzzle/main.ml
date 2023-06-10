let last_element list = 
  let reversed = List.rev list in
  List.hd reversed
;;

let my_list = [1; 2; 3; 4; 5];;

let last_val = last_element my_list;;
print_endline "Last value in the list is"; print_int last_val;;

