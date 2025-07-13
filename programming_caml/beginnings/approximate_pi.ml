let usage () = Printf.printf "To use as args: Usage %s <number>\n" Sys.argv.(0)

let get_value () =
  if Array.length Sys.argv > 1 then
    try int_of_string Sys.argv.(1) with Failure _ -> read_int ()
  else (
    usage ();
    Printf.printf "Enter a number: \n";
    read_int ())

let () =
  let n = get_value () in
  let p = ref 0 in

  for i = 1 to n do
    let x = Random.float 1.0 in
    let y = Random.float 1.0 in

    if (x *. x) +. (y *. y) <= 1.0 then p := !p + 1
  done;

  let pi = 4.0 *. float !p /. float n in
  Printf.printf "%f\n" pi
