open OUnit2

let two_sum nums target =
  let hashmap = Hashtbl.create (List.length nums) in
  let rec loop i = function
    | [] -> []
    | x :: xs ->
        let diff = target - x in
        if Hashtbl.mem hashmap diff then [ Hashtbl.find hashmap diff; i ]
        else (
          Hashtbl.add hashmap x i;
          loop (i + 1) xs)
  in
  loop 0 nums

let tests =
  "Tests for Two Sum"
  >::: [ ("Test 1" >:: fun _ -> assert_equal [ 0; 1 ] (two_sum [ 3; 4; 5; 6 ] 7))
       ; ("Test 2" >:: fun _ -> assert_equal [ 0; 2 ] (two_sum [ 4; 5; 6 ] 10))
       ; ("Test 3" >:: fun _ -> assert_equal [ 0; 1 ] (two_sum [ 5; 5 ] 10))
       ]

let _ = run_test_tt_main tests
