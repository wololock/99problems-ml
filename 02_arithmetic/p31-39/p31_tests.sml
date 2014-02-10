use "p31.sml";

val start = "------ TESTS STARTS HERE ---------"
(* tests *)

val is_prime_for_negative_number_raises_an_exception =
  (is_prime(~4) handle IllegalArgument => false) = false

val is_prime_1_returns_true =
  is_prime 1 = true

val is_prime_2_returns_false =
  is_prime 2 = false
  
val is_prime_13_returns_true =
  is_prime 13 = true
  
val is_prime_14_returns_false =
  is_prime 14 = false
  
val is_prime_6803_returns_true =
  is_prime 6803 = true
  
val is_prime_62869_returns_true =
  is_prime 62869 = true
  
val is_prime_155047_returns_true =
  is_prime 155047 = true
  
val is_prime_10541731_returns_true =
  is_prime 10541731 = true
  
val is_prime_15461807_returns_true =
  is_prime 15461807 = true