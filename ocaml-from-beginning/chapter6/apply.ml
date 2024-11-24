let rec apply f n x =
  if n <= 0 then x
  else apply f (n - 1) (f x)