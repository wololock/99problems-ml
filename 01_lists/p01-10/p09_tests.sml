use "p09.sml";

val start = "------ TESTS STARTS HERE ---------"
(* tests *)

val pack_empty_list_returns_nested_empty_list =
  pack [] = [[]]
  
val pack_list_with_nonrepeating_elements_returns_list_with_list_packed_elements =
  pack ["a","b","c","d"] = [["a"],["b"],["c"],["d"]]
  
val pack_list_with_repeating_elements_returns_list_with_nested_duplicates = 
  pack [1,1,3,4,2,2,1,5] = [[1,1],[3],[4],[2,2],[1],[5]]
  
val pack_list_with_double_repeated_elements =
  pack ["a","a","b","b","c","c","d","d"] = [["a","a"],["b","b"],["c","c"],["d","d"]]