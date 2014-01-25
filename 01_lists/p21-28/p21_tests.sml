use "p21.sml";

val start = "------ TESTS STARTS HERE ---------"
(* tests *)

val insert_a_at_1_in_empty_list_raises_exception =
  (insertAt("a",1,[]) handle IndexOutOfBounds => []) = []

val insert_a_outside_list_raises_exception =
  (insertAt("a",4,["a","b","c","d"]) handle IndexOutOfBounds => []) = []
  
val insert_a_at_the_beginning_of_empty_list_returns_single_element_list =
  insertAt("a",0,[]) = ["a"]
  
val insert_a_in_the_place_of_last_element_of_the_list =
  insertAt("a",3,["a","b","c","d"]) = ["a","b","c","a","d"]
  
val insert_a_at_the_beginning_of_4_elements_list =
  insertAt("a",0,["c","c","c","d"]) = ["a","c","c","c","d"]
  
