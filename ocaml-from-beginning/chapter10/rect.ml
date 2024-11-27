type rect =
| Square of int
| Rectangle of int * int

let area shape =
  match shape with 
  | Square side -> side * side
  | Rectangle (length, breadth) -> length * breadth


let rotate_side shape = 
  match shape with
  | Square _ -> shape
  | Rectangle (length, width) -> if length >= width then shape else Rectangle(width, length)

let small_width shape = 
  let rotated_rect = List.map rotate_side shape in 
  List.sort (fun r1 r2 ->
    let w1 = match r1 with
    | Square side -> side
    | Rectangle (length, _) -> length
  in
    let w2 = match r2 with
    | Square side -> side
    | Rectangle (length, _) -> length
in compare w1 w2
    ) rotated_rect