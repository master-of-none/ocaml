open Core

let r file = In_channel.read_lines file

let () = let lines = r "file.txt" in List.iter ~f:print_endline lines