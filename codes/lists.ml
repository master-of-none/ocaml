(** Sum of all the elements in the list *)
let rec sum lst =
  match lst with
  | [] -> 0
  | h :: t -> h + sum t

(** Length of the list *)
let rec length lst =
  match lst with
  | [] -> 0
  | _ :: t -> 1 + length t

(** Appending the list *)
let rec append lst1 lst2 =
  match lst1 with
  | [] -> lst2
  | h :: t -> h :: append t lst2

(** Empty List *)
let empty lst =
  match lst with
  | [] -> true
  | h :: t -> false

(** Another way of empty list *)
let empty_alt lst = lst = []

(** Incrementing all the elements in the list *)
let rec inc lst =
  match lst with
  | [] -> []
  | h :: t -> (h + 1) :: inc t
