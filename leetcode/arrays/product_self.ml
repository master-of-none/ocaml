open OUnit2

let product_self nums = 
  let n = Array.length nums in 
  let res = Array.make n 1 in

  let prefix = ref 1 in
  for i = 0 to n - 1 do
    res.(i) <- !prefix;
    prefix := !prefix * nums.(i)
  done;

  let postfix = ref 1 in
  for i = n-1 downto 0 do
    res.(i) <- res.(i) * !postfix;
    postfix := !postfix * nums.(i)
  done;
  res 
;;

let tests = "Tests for Product Self" >::: [
  ("Tests 1" >:: fun _ -> assert_equal [|48;24;12;8|] (product_self [|1;2;4;6|]));
  ("Tests 2" >:: fun _ -> assert_equal [|0;-6;0;0;0|] (product_self [|-1;0;1;2;3|]))
]

let _ = run_test_tt_main tests