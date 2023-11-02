let plus_one digits =
  let rec helper carry = function
    | [] -> if carry = 0 then [] else [ carry ]
    | h :: t ->
        let sum = h + carry in
        (sum mod 10) :: helper (sum / 10) t
  in

  List.rev (helper 1 (List.rev digits))
