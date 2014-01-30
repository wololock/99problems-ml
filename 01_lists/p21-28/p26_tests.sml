use "p26.sml";

val two_combinations_over_3_elements_list = combinations(2,["a","b","c"])

val two_combinations_over_3_elements_list_returns_list_of_size_3 =
  length two_combinations_over_3_elements_list = 3
  
val two_combinations_over_3_elements_list_contains_a_b_list =
  (List.exists (fn xs => xs = ["a","b"]) two_combinations_over_3_elements_list) = true
  
val two_combinations_over_3_elements_list_contains_b_c_list =
  (List.exists (fn xs => xs = ["b","c"]) two_combinations_over_3_elements_list) = true
  
val two_combinations_over_3_elements_list_contains_a_c_list =
  (List.exists (fn xs => xs = ["a","c"]) two_combinations_over_3_elements_list) = true
  
val zero_combinations_over_nonempty_list_returns_list_with_empty_list =
  combinations(0,[1,2,3,4]) = [[]]
  
val two_combinations_over_empty_list_returns_empty_list = 
  combinations(2,[]) = []