use "p04.sml";

val start = "------ TESTS STARTS HERE ---------"
(* tests *)

val length_of_empty_list_is_0 =
  length [] = 0
	
val length_of_3_elements_list_is_3 = 
  length [3,2,1] = 3
