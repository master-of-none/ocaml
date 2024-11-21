let rec power x n = 
    if n = 0 then 1
    else x * power x (n - 1)
;;

let power_tail x n =
    let rec aux x n acc = 
        if n = 0 then acc
        else aux x (n - 1) (acc * x)
    in
    aux x n 1
;;

let () =
    if Array.length Sys.argv < 3 then
        print_endline "Usage: <executable> <base> <exponent>"
    else
        let x = int_of_string Sys.argv.(1) in
        let n = int_of_string Sys.argv.(2) in
        let result1 = power x n in
        let result2 = power_tail x n in
        print_endline (string_of_int result1);
        print_endline (string_of_int result2)
;;

