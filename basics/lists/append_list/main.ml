  let rec append lst1 lst2 =
    match lst1 with
      | [] -> lst2
      | h :: t -> h :: append t lst2 ;;

  let rec print_list lst =
    match lst with
      | [] -> ()
      | h :: t ->
      print_int h;
      print_string " ";
      print_list t ;;

  let result = append [1; 2;] [3; 4] in
    print_list result;
    print_newline ()
