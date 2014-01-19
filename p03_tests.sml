use "p03.sml";

val start = "------ TESTS STARTS HERE ---------"
(* tests *)

val nth_requires_non_negative_k =
  (nth ~4 [1,2,3] handle Negative => NONE) = NONE

val nth_requires_k_in_range_of_given_list =
  (nth 10 [1,2,3] handle IndexOutOfBounds => NONE) = NONE
	
val nth_0_returns_first_element =
  nth 0 [1,2,3] = SOME(1)
	
val nth_returns_last_element_if_k_is_smaller_by_1_than_list_size =
  nth 2 [1,2,3] = SOME(3)
