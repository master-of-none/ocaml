  open OUnit2
  open Sum

  let tests = "testings" >::: [
    "Empty" >:: (fun _ -> assert_equal 0 (sum []));
    "Singleton" >:: (fun _ -> assert_equal 1 (sum [1]));
    "Two Elements" >:: (fun _ -> assert_equal 3 (sum [1; 2]));
  ]

  let _ = run_test_tt_main tests
