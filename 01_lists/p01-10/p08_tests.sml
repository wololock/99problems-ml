use "p08.sml";

val start = "------ TESTS STARTS HERE ---------"
(* tests *)


val compress_empty_list =
  compress [] = []
 
val compress_list_without_duplications_returns_same_list =
  compress ["a","b","c"] = ["a","b","c"]
  
val compress_list_with_nonrepeated_duplications_returns_same_list =
  compress ["a","b","a","c","b"] = ["a","b","a","c","b"]
  
val compress_removes_repeatations_in_list =
  compress ["a","a","a","a","a","b","c","c","a"] = ["a","b","c","a"]
  
val compress_removes_repeated_numbers =
  compress [1,1,2,3,3,4] = [1,2,3,4]