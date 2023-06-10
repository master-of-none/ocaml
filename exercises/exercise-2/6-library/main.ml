let get_fifth_element list = 
  match List.length list with
  | n when n >=5 -> List.nth list 4
  | _ -> 0
;;

let sort_desc list =
  match List.sort Stdlib.compare list with
  | sorted -> List.rev sorted
;;

let list1 = [1; 3; 4; 5; 2;];;
let list2 = [1; 3; 2;];;

let result1 = get_fifth_element list1;;
let result2 = get_fifth_element list2;;
let sorted_list = sort_desc list1;;

let rec print_list list =
  match list with
  | [] -> ()
  | x :: xs -> print_int x; print_string " "; print_list xs;;
;;

print_endline "Fifth element is";;
print_int result1;;
print_newline();;
print_endline "Fifth element is : <List less than 5>";;
print_int result2;;
print_newline();;
print_list sorted_list;;
print_newline();;
