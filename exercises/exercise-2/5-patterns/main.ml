let matching1 list =
  match list with
  | "bigred" :: _ -> true
  | _ -> false
;;

let matching2 list =
  match list with 
  | _ :: _ :: [] -> true
  | _ :: _ :: _ :: _ :: [] -> true
  | _ -> false
;;

let matching3 list =
  match list with
  | [] | [_] -> false
  | x :: y :: _ when x = y -> true
  | _ -> false
;;

let test_list1 = ["bigred"; "apple"; "banana"; "cherry"];;
let test_list2 = ["bigred"; "bigred"];;
let test_list3 = ["orange"; "orange"; "grape"];;
let test_list4 = ["bigred"];;

  