let valid_parantheses s =
  let stack = Stack.create () in
  let close_to_open = [ (')', '('); (']', '['); ('}', '{') ] in
  let hashmap = List.to_seq close_to_open |> Hashtbl.of_seq in

  let rec check chars =
    match chars with
    | [] -> Stack.is_empty stack
    | c :: rest ->
        if Hashtbl.mem hashmap c then
          if
            (not (Stack.is_empty stack))
            && Stack.top stack = Hashtbl.find hashmap c
          then
            let _ = Stack.pop stack in
            check rest
          else false
        else (
          Stack.push c stack;
          check rest)
  in
  check (List.init (String.length s) (String.get s))

let _ = valid_parantheses "([{}])"
