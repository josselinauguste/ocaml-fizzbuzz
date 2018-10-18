(* The functions we wish to test *)
let fizzbuzz = function
  | x when x mod 3 = 0 && x mod 5 = 0 -> "fizzbuzz"
  | x when x mod 3 = 0 -> "fizz"
  | x when x mod 5 = 0 -> "buzz"
  | x -> string_of_int x