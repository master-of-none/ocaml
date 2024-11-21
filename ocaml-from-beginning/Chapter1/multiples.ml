let multiple n = 
    n * 10;;

(* Read from CMD*)
let () = 
    if Array.length Sys.argv > 1 then
        let n = int_of_string Sys.argv.(1) in
        Printf.printf "%d\n" (multiple n)
    else
        Printf.printf "Usage: ./a.out <number>\n"