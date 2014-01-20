use "p07.sml";

val start = "------ TESTS STARTS HERE ---------"
(* tests *)


val flatting_simple_list_of_numbers =
  flatten [[1],[2],[3]] = [1,2,3]
  
val flatting_list_of_numbers =
  flatten [[1,1],[2],[3]] = [1,1,2,3]
  
val flatting_list_of_words =
  flatten [["a","b"], ["a"], ["c","b","a"]] = ["a","b","a","c","b","a"]