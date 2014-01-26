use "intersect.sml";

val intersection_of_2_empty_lists_is_empty_list =
  intersect([],[]) = []
  
val intersection_of_empty_and_non_empty_list_of_strings_is_empty_list =
  intersect(["a","b","c"],[]) = []
  
val intersection_of_empty_and_non_empty_list_of_ints_is_empty_list =
  intersect([],[1,2,3,4]) = []
  
val intersection_of_nonempty_lists_with_different_elements_is_empty_list =
  intersect([1,2,3],[4,5,6]) = []
  
val intersection_of_2_same_lists_returns_the_same_list = 
  intersect([1,2,3],[1,2,3]) = [1,2,3]
  
val intersection_of_1_2_3_and_2_2_2_returns_single_element_list =
  intersect([1,2,3],[2,2,2]) = [2]
  
val intersection_of_2_2_2_and_1_2_3_returns_single_element_list =
  intersect([2,2,2],[1,2,3]) = [2]