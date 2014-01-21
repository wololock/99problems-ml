use "p14.sml";

val start = "------ TESTS STARTS HERE ---------"
(* tests *)

val duplicate_empty_list_returns_empty_list =
  duplicate [] = []

val duplicate_list_with_one_element =
  duplicate [1] = [1,1]
  
val duplicate_list_with_two_same_elements =
  duplicate [1,1] = [1,1,1,1]
  
val duplicate_list_with_words = 
  duplicate ["lorem", "ipsum", "dolor"] = ["lorem","lorem","ipsum","ipsum","dolor","dolor"]