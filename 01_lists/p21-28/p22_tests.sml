use "p22.sml";

val start = "------ TESTS STARTS HERE ---------"
(* tests *)

val range_from_0_to_0_returns_single_element_list =
  range(0,0) = [0]
  
val range_from_10_to_10_returns_single_element_list =
  range(10,10) = [10]
  
val range_from_negative_5_to_positive_5_returns_11_elements_list =
  range(~5,5) = [~5,~4,~3,~2,~1,0,1,2,3,4,5]
  
val range_from_number_greather_than_to_number_returns_list_with_desc_order = 
  range(10,5) = [10,9,8,7,6,5]