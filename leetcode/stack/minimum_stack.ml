[@@@warning "-32"]

type min_stack =
  { mutable stack : int list
  ; mutable min_stack : int list
  }

let create_stack () = { stack = []; min_stack = [] }

let push ms v =
  ms.stack <- v :: ms.stack;
  let min_val =
    match ms.min_stack with
    | [] -> v
    | hd :: _ -> min v hd
  in
  ms.min_stack <- min_val :: ms.min_stack

let pop ms =
  match (ms.stack, ms.min_stack) with
  | _ :: stack_tail, _ :: min_stack_tail ->
      ms.stack <- stack_tail;
      ms.min_stack <- min_stack_tail
  | _ -> failwith "Empty Stack"

let top ms =
  match ms.stack with
  | hd :: _ -> hd
  | _ -> failwith "Empty stack"

let get_min ms =
  match ms.min_stack with
  | hd :: _ -> hd
  | _ -> failwith "Empty Stack"
