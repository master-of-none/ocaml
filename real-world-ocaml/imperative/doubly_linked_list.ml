open Base

(** Defining List *)
type 'a element = 
    {
        value: 'a ;
        mutable next: 'a element option;
        mutable prev: 'a element option
    }
type 'a t = 'a element option ref

(** Defining functions *)
let create () = ref None
let is_empty t = Option.is_none !t
let value elt = elt.value
let first t = !t
let next elt = elt.next
let prev elt = elt.prev

(** List modifications *)

(* Insert First*)
let insert_first t value =
    let new_elt = { prev = None; next = !t; value } in
    (match !t with
    | Some old_first -> old_first.prev <- Some new_elt
    | None -> ()
    );
    t := Some new_elt;
    new_elt

(* Insert after a value *)
let insert_after elt value = 
    let new_elt = { value; prev = Some elt; next = elt.next} in
    ( match elt.next with
    | Some old_next -> old_next.prev <- Some new_elt
    | None -> ());
    elt.next <- Some new_elt;
    new_elt

(* Remove element *)
let remove t elt =
    let {prev; next; _} = elt in
    (match prev with 
    | Some prev -> prev.next <- next
    | None -> t := next);
    (match next with
    | Some next -> next.prev <- prev
    | None -> ());
    elt.prev <- None;
    elt.next <- None

(** Iterating functions *)
let iter t ~f = 
    let rec loop = function
    | None -> ()
    | Some el ->
        f (value el);
        loop (next el)
    in
    loop !t

let find_element t ~f = 
    let rec loop = function
    | None -> None
    | Some elt -> if f (value elt) then Some elt else loop (next elt)
    in
    loop !t
