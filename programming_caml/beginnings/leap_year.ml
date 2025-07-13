let usage () = Printf.printf "To use as args: Usage %s <year>\n" Sys.argv.(0)

let get_year () =
  if Array.length Sys.argv > 1 then
    try int_of_string Sys.argv.(1) with Failure _ -> read_int ()
  else (
    usage ();
    Printf.printf "Enter Year now:\n";
    read_int ())

let leap year = (year mod 4 = 0 && year mod 100 <> 0) || year mod 400 = 0

let () =
  let year = get_year () in
  let msg = if leap year then "IS" else "IS NOT" in
  Printf.printf "%d %s a leap year" year msg
