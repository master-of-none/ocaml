let rec sum n =
    if n = 1 then 1
    else n + sum (n-1)
;;

let () = 
    if Array.length Sys.argv < 2 then
        print_endline "Usage <executable> <int>"
    else
        let n = int_of_string Sys.argv.(1) in
        let result = sum n in
        print_endline (string_of_int result)