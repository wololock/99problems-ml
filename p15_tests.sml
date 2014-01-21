use "p15.sml";

val start = "------ TESTS STARTS HERE ---------"
(* tests *)

val duplicateN_four_times_empty_list_returns_empty_list =
  duplicateN(4,[]) = []
  
val duplicateN_3_times_list_with_one_element_returns_list_with_three_elements =
  duplicateN(3,["a"]) = ["a","a","a"]
  
val duplicateN_1_time_list_of_words_returns_same_list = 
  duplicateN(1,["functional","programming","is","fun"]) = ["functional","programming","is","fun"]
  
val duplicateN_4_times_list_of_numbers_returns_list_with_duplications =
  duplicateN(4,[1,2,3]) = [1,1,1,1,2,2,2,2,3,3,3,3]