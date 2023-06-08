  let empty lst = 
  match lst with 
    | []  -> true
    | _ :: _ -> false;;


  let list1 = [];;
  let list2 = [1; 2; 3;];;

  assert ((empty list1) = true);;
  assert ((empty list2) = false);;

  (* Tested this in utop *)
