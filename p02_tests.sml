use "p02.sml";

val numbers = [1,2,3,4,5]

val start = "------ TESTS STARTS HERE ---------"
(* tests *)

val penultimate_of_empty_list_returns_none = 
  penultimate [] = NONE
	
val penultimate_of_single_element_list_returns_none =
  penultimate [1] = NONE
	
val penultimate_of_number_returns_4 =
	 penultimate numbers = SOME(4)
		