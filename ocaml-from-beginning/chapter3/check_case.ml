let checkCase c = 
    match c with
    | 'a'..'z' -> "lower"
    | 'A'..'Z' -> "upper" 
    | _ -> "not char"