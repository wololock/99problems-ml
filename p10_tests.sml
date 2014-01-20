use "p10.sml";

val start = "------ TESTS STARTS HERE ---------"
(* tests *)

val pack_empty_list_returns_empty_list =
  encode [] = []
  
val pack_list_with_nonrepeating_elements_returns_list_with_list_packed_elements =
  encode ["a","b","c","d"] = [(1,"a"),(1,"b"),(1,"c"),(1,"d")]
  
val pack_list_with_repeating_elements_returns_list_with_nested_duplicates = 
  encode [1,1,3,4,2,2,1,5] = [(2,1),(1,3),(1,4),(2,2),(1,1),(1,5)]
  
val pack_list_with_double_repeated_elements =
  encode ["a","a","b","b","c","c","d","d"] = [(2,"a"),(2,"b"),(2,"c"),(2,"d")]