open Linked_list

let reverse_list head =
  let rec aux prev cur =
    match cur with
    | Nil -> prev
    | Node (value, next) ->
        let new_next = prev in
        aux (Node (value, new_next)) next
  in
  aux Nil head
