open OUnit2

let group_anagrams strs = 
  let hashmap = Hashtbl.create 10 in 
  let sorted_string s = 
    let chars = String.to_seq s |> List.of_seq |> List.sort Char.compare in
    String.of_seq (List.to_seq chars)
  in
  List.iter (fun s ->
    let key = sorted_string s in
    let group = Hashtbl.find_opt hashmap key |> Option.value ~default:[] in
    Hashtbl.replace hashmap key (s :: group)
    ) strs;
    Hashtbl.fold (fun _ group acc -> group :: acc) hashmap []
;;

(* Helper Function for testing*)
let normalize groups = 
  groups
  |> List.map(List.sort String.compare)
  |> List.sort compare
;;

let tests = 
  "Tests for group anagrams" >::: [
    ("Test 1" >:: fun _ -> assert_equal (normalize [["hat"];["act";"cat"];["stop";"pots";"tops"]]) ( normalize (group_anagrams ["act";"pots";"tops";"cat";"stop";"hat"])))
    ;("Test 2" >:: fun _ -> assert_equal (normalize [["x"]]) (normalize (group_anagrams ["x"])))
    ;("Test 3") >:: fun _ -> assert_equal [[""]] (group_anagrams [""])

  ]

let _ = run_test_tt_main tests