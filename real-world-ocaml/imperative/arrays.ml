open Base
let rev_inplace arr = 
    let i = ref 0 in
    let j = ref (Array.length arr - 1) in
    while !i < !j do
        let temp = arr.(!i) in
        arr.(!i) <- arr.(!j);
        arr.(!j) <- temp;
        Int.incr i;
        Int.decr j
    done
;;

let nums = [|1;2;3;4;5|] in rev_inplace nums;;