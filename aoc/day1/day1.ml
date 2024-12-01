let split_lines lines =
  let rec split acc_left acc_right = function
    | [] -> (List.rev acc_left, List.rev acc_right)
    | line :: rest ->
        let left, right = Scanf.sscanf line "%d %d" (fun l r -> (l, r)) in
        split (left :: acc_left) (right :: acc_right) rest
  in
  split [] [] lines

let puzzle1 left right =
  let sorted_left = List.sort compare left in
  let sorted_right = List.sort compare right in
  List.fold_left2 (fun acc x y -> acc + abs (x - y)) 0 sorted_left sorted_right

let build_hashmap list =
  List.fold_left
    (fun acc n ->
      let count = try List.assoc n acc with Not_found -> 0 in
      (n, count + 1) :: List.remove_assoc n acc)
    [] list

let puzzle2 left hashmap_right =
  List.fold_left
    (fun acc n ->
      let count = try List.assoc n hashmap_right with Not_found -> 0 in
      acc + (n * count))
    0 left

let solve filename =
  let lines = Read_file.read_file filename in
  let left, right = split_lines lines in

  let res1 = puzzle1 left right in
  Printf.printf "The Puzzle 1 Solution is: %d\n" res1;

  let hashmap_right = build_hashmap right in
  let res2 = puzzle2 left hashmap_right in
  Printf.printf "THe Puzzle 2 Solution is %d\n" res2
