use "p17.sml";

val start = "------ TESTS STARTS HERE ---------"
(* tests *)

val split_empty_list_returns_tuple_of_empty_lists =
  split(2,[]) = ([],[])
  
val split_for_length_greater_than_splitting_size_returns_tuple_with_nonempty_and_empty_list = 
  split(5,["a","a"]) = (["a","a"], [])
  
val split_list_of_4_elements_into_2_2_elements_lists =
  split(2,["a","b","c","d"]) = (["a","b"],["c","d"])
  
val split_list_of_6_elements_into_2_and_4_elements_lists = 
  split(2,[1,2,3,4,5,6]) = ([1,2],[3,4,5,6])