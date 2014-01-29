use "p25.sml";
use "../../helpers/intersect.sml";

val start = "------ TESTS STARTS HERE ---------"
(* tests *)

val random_permutate_empty_list_returns_empty_list =
  randomPermutate([]) = []
  
val random_permutate_single_element_list_returns_same_list = 
  randomPermutate(["a"]) = ["a"]
  
val random_permutate_two_elements_list_returns_same_or_permutated_list =
  randomPermutate(["a","b"]) = ["a","b"] orelse randomPermutate(["a","b"]) = ["b","a"]

val random_permutate_returns_same_size_list =
  length(intersect(randomPermutate([1,2,3,4,5]), [1,2,3,4,5])) = 5
  
val random_permuate_10_elements_list_returns_size_10_list =
  length(intersect(randomPermutate(["a","b","c","d","e","f","g","h","i","j"]), ["a","b","c","d","e","f","g","h","i","j"])) = 10