let check_type a b =
    if a <> 0 && b <> 0 then true
    else false
;;

let () = 
    if Array.length Sys.argv < 3 then
        print_endline "Usage <executable> <int1> <int2>"
    else
        let a = int_of_string Sys.argv.(1) in
        let b = int_of_string Sys.argv.(2) in
        let result = check_type a b in
        print_endline (string_of_bool result)