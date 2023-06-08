  type point = float * float
  type shape =
    | Point of point
    | Circle of point * float
    | Rect of point * point

  let area = function
    | Point _ -> 0.0
    | Circle (_, r) -> Float.pi *. (r ** 2.0)
    | Rect ((x1, y1), (x2, y2)) ->
        let w = x2 -. x1 in
        let h = y2 -. y1 in
        w *. h

  let center = function
    | Point p -> p
    | Circle (p, _) -> p
    | Rect ((x1, y1), (x2, y2)) -> ((x2 +. x1) /. 2.0, (y2 +. y1) /. 2.0)

  
  (** Testing the values*)
    let () = 
      let p = (2.0, 3.0) in
      let c = ((0.0, 0.0), 5.0) in
      let r = ((-2.0, -2.0), (2.0, 2.0)) in

      let point = Point p in
      let circle = Circle (fst c, snd c) in
      let rect = Rect (fst r, snd r) in

      let point_area = area point in
      let circle_area = area circle in
      let rect_area = area rect in

      let point_center = center point in
      let circle_center = center circle in
      let rect_center = center rect in

      print_endline ("Point area: " ^ string_of_float point_area);
      print_endline ("Circle area: " ^ string_of_float circle_area);
      print_endline ("Rectangle area: " ^ string_of_float rect_area);

      print_endline ("Point center: " ^ string_of_float (fst point_center) ^ ", " ^ string_of_float (snd point_center));
      print_endline ("Circle center: " ^ string_of_float (fst circle_center) ^ ", " ^ string_of_float (snd circle_center));
      print_endline ("Rectangle center: " ^ string_of_float (fst rect_center) ^ ", " ^ string_of_float (snd rect_center))

