use "p05.sml";

val start = "------ TESTS STARTS HERE ---------"
(* tests *)

val reverse_empty_list_returns_empty_list =
	reverse [] = []
	
val reverse_list_containg_the_same_values_returns_the_same_list =
	reverse ["a", "a", "a", "a"] = ["a", "a", "a", "a"]
	
val reverse_list_of_numbers_changes_its_elements_order =
	reverse [1,2,3,4,5] = [5,4,3,2,1]
	
val reverse_list_of_words =
	reverse ["programming", " ", "in", " ", "sml", " ", "is", " ", "fun"] = ["fun", " ", "is", " ", "sml", " ", "in", " ", "programming"]
