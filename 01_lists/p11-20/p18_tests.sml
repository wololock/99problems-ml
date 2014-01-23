use "p18.sml";

val start = "------ TESTS STARTS HERE ---------"
(* tests *)

val slice_on_empty_list_raises_exception =
  (slice(0,4,[]) handle IndexOutOfBounds => []) = []

val slice_outside_list_raises_exception =
  (slice(2,4,["a"]) handle IndexOutOfBounds => []) = []
  
val slice_negative_length_raises_exception =
  (slice(0,~5,[1,2,3,4]) handle IndexOutOfBounds => []) = []
  
val slice_from_negative_index_raises_exception =
  (slice(~5,10,[1,2,3,4]) handle IndexOutOfBounds => []) = []

val slice_total_length_of_list_from_the_beginnig_returns_same_list =
  slice(0,5,["a","b","c","d","e"]) = ["a","b","c","d","e"]

val slice_from_the_middle_to_the_end_returns_second_half_of_list =
  slice(3,3,[1,2,3,4,5,6]) = [4,5,6]
  
val slice_from_the_begining_to_the_half_of_list_returns_first_half_of_that_list =
  slice(0,3,[1,3,2,4,3,5]) = [1,3,2]
  
val slice_1_element_from_the_third_of_the_list =
  slice(2,1,[1,2,3,4,5,6]) = [3]