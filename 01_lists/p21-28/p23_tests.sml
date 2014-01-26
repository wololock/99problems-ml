use "p23.sml";
use "../../helpers/intersect.sml";

val start = "------ TESTS STARTS HERE ---------"
(* tests *)

val random_select_3_on_empty_list_raises_exception = 
  (randomSelect(3,[]) handle IndexOutOfBounds => []) = []
  
val random_select_4_on_2_elements_list_raises_exception =
  (randomSelect(4,[1,2]) handle IndexOutOfBounds => []) = []
  
val random_select_negative_number_of_elements_raises_exception = 
  (randomSelect(~4,["a","b","c","d"]) handle IllegalArgument => []) = []
  
val random_select_0_on_empty_list_returns_empty_list =
  randomSelect(0,[]) = []

val random_select_0_on_non_empty_list_returns_empty_list = 
  randomSelect(0,[1,2,3,4]) = []
  
val random_select_2_on_same_4_elements_list_returns_list_with_size_2 =
  randomSelect(2,[1,1,1,1]) = [1,1]
    
val random_select_3_on_5_different_elements_list_returns_list_with_size_3_and_some_elements_from_input_list =
  length(intersect(["a","b","c","d","e","f"], randomSelect(3,["a","b","c","d","e","f"]))) = 3
  
val random_select_2_on_list_with_duplicated_elements_returns_list_with_size_2 =
  length(intersect(randomSelect(2,[1,1,2,2,3,3]),[1,1,2,2,3,3])) = 2