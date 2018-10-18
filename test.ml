open OUnit2;;

let multiple_de_trois_donne_fizz test_ctxt = assert_equal "fizz" (Fizzbuzz.fizzbuzz 3);;
let six_donne_fizz test_ctxt = assert_equal "fizz" (Fizzbuzz.fizzbuzz 6);;
let multiple_de_cinq_donne_buzz test_ctxt = assert_equal "buzz" (Fizzbuzz.fizzbuzz 5);;
let multiple_de_trois_et_cinq_donne_fizzbuzz test_ctxt = assert_equal "fizzbuzz" (Fizzbuzz.fizzbuzz 15);;
let non_multiple_de_trois_ni_cinq_donne_valeur test_ctxt = assert_equal "19" (Fizzbuzz.fizzbuzz 19);;

(* Name the test cases and group them together *)
let suite =
"suite">:::
 ["multiple_de_trois_donne_fizz">:: multiple_de_trois_donne_fizz;
 "six_donne_fizz">:: six_donne_fizz;
 "multiple_de_cinq_donne_buzz">:: multiple_de_cinq_donne_buzz;
 "multiple_de_trois_et_cinq_donne_fizzbuzz">:: multiple_de_trois_et_cinq_donne_fizzbuzz;
 "non_multiple_de_trois_ni_cinq_donne_valeur">:: non_multiple_de_trois_ni_cinq_donne_valeur
 ]
;;

let () =
  run_test_tt_main suite
;;