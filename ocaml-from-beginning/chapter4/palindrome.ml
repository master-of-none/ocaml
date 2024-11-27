let build_palindrome list = 
  list @ List.rev list

let check_palindrome list = 
  list = List.rev list