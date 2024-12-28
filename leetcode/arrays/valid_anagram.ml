open OUnit2

let valid_anagram s t =
  if String.length s <> String.length t then false
  else
    let count_chars str =
      let hashmap = Hashtbl.create 26 in
      String.iter
        (fun c ->
          Hashtbl.replace hashmap c
            ((Hashtbl.find_opt hashmap c |> Option.value ~default:0) + 1))
        str;
      hashmap
    in
    let count_s = count_chars s in
    let count_t = count_chars t in
    let check_hashmap list1 list2 =
      Hashtbl.fold
        (fun key value acc ->
          acc && Hashtbl.find_opt list2 key |> Option.value ~default:0 = value)
        list1 true
    in
    check_hashmap count_s count_t && check_hashmap count_t count_s

let tests =
  "Tests For Valid Anagram"
  >::: [ ( "Valid" >:: fun _ ->
           assert_equal true (valid_anagram "anagram" "nagaram") )
       ; ("Invalid" >:: fun _ -> assert_equal false (valid_anagram "car" "bat"))
       ]

let _ = run_test_tt_main tests
