open Base

type 'a t

type 'a element

val create : unit -> 'a t
(** List Operations *)

val is_empty : 'a t -> bool

val first : 'a t -> 'a element option
(** Traversing List *)

val next : 'a element -> 'a element option

val prev : 'a element -> 'a element option

val value : 'a element -> 'a

val iter : 'a t -> f:('a -> unit) -> unit
(** Whole list itereation *)

val find_element : 'a t -> f:('a -> bool) -> 'a element option

val insert_first : 'a t -> 'a -> 'a element
(** List mutations *)

val insert_after : 'a element -> 'a -> 'a element

val remove : 'a t -> 'a element -> unit
