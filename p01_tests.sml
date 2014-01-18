use "p01.sml";

val xs = [1,2,3,4,5]
val names = ["johh", "ann", "mark"]

val start = "------ TESTS STARTS HERE ---------"

(* tests *)
val last_on_empty_list_return_none =
	last [] = NONE
	
val last_on_xs_list_returns_5 =
	last xs = SOME(5)
	
val last_on_names_list_returns_mark =
	last names = SOME("mark")
	
val last_on_signle_element_list_returns_its_only_one_element =
	last [1] = SOME(1)
