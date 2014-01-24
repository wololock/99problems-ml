use "p20.sml";

val start = "------ TESTS STARTS HERE ---------"
(* tests *)

val remove_at_empty_list_raises_exception =
  (removeAt(0,[]) handle IndexOutOfBounds => ([],NONE)) = ([],NONE)

val remove_at_nonexisting_index_raises_exception =
  (removeAt(5,["a","b","c"]) handle IndexOutOfBounds => ([],NONE)) = ([],NONE)
  
val remove_at_negative_index_raises_exception =
  (removeAt(~1,["a","b","c"]) handle IndexOutOfBounds => ([],NONE)) = ([],NONE)
  
val remove_at_first_index_of_single_element_list_returns_tuple_with_empty_list_and_removed_element =
  removeAt(0,["a"]) = ([],SOME("a"))
  
val remove_at_first_index_of_4_elements_list_returns_correct_tuple =
  removeAt(0,["a","b","c","d"]) = (["b","c","d"],SOME("a"))
  
val remove_at_last_index_of_3_elements_list_returns_correct_tuple =
  removeAt(2,[1,2,3]) = ([1,2],SOME(3))
  
val remove_at_from_middle_of_list_returns_correct_tuple =
  removeAt(1,["a","b","c"]) = (["a","c"],SOME("b"))