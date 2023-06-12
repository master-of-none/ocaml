let is_unimodal lst = 
  let rec increasing_max = function
    | [] | [_] -> true
    | x :: y :: tl -> if y < x then false else increasing_max (y :: tl)
  
  in

  let rec decreasing_max = function
    | [] | [_] -> true
    | x :: y :: tl -> if y > x then false else decreasing_max (y :: tl)
  
  in

  match lst with
  | [] | [_] -> true
  | x :: y :: tl -> increasing_max (x :: y :: tl) && decreasing_max (y :: tl)
;;

let result1 = is_unimodal [];;                  (* true *)
let result2 = is_unimodal [1];;                 (* true *)
let result3 = is_unimodal [1; 2; 3; 2; 1];;     (* true *)
let result4 = is_unimodal [1; 2; 3; 3; 2; 1];;  (* true *)
let result5 = is_unimodal [1; 2; 3; 4; 2; 1];;  (* false *)
 