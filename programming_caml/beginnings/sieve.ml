let max =
  Printf.printf "Enter interger upto which prime number is to be calculated\n";
  read_int ()

let prime = Array.make (max + 1) true

let () =
  prime.(0) <- false;
  prime.(1) <- false;

  let limit = truncate (sqrt (float max)) in
  Printf.printf "Limit is %d\n" limit;
  for n = 2 to limit do
    if prime.(n) then begin
      let m = ref (n * n) in
      while !m <= max do
        prime.(!m) <- false;
        m := !m + n
      done
    end
  done

let () =
  for n = 2 to max do
    if prime.(n) then Printf.printf "%d\n" n
  done
