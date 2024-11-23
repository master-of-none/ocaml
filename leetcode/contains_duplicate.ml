open OUnit2

let contains_duplicate nums =
  let hashmap = Hashtbl.create (List.length nums) in
  let rec check lst =
    match lst with
    | [] -> false
    | x :: xs ->
        if Hashtbl.mem hashmap x then true
        else (
          Hashtbl.add hashmap x ();
          check xs)
  in
  check nums

let tests =
  "Tests For Contains Duplicate"
  >::: [ ( "Has duplicate" >:: fun _ ->
           assert_equal true (contains_duplicate [ 1; 2; 3; 2 ]) )
       ; ( "No Duplicate" >:: fun _ ->
           assert_equal false (contains_duplicate [ 1; 2; 3; 4 ]) )
       ]

let _ = run_test_tt_main tests
