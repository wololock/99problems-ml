use "p16.sml";

val start = "------ TESTS STARTS HERE ---------"
(* tests *)

val drop_every_1_element_from_empty_list_returns_empty_list =
  drop(1,[]) = []
  
val drop_every_third_element_from_empty_list_returns_empty_list =
  drop(3,[]) = []
  
val drop_every_1_element_on_nonempty_list_returns_empty_list =
  drop(1,["a","a","a"]) = []
  
val drop_every_third_element_on_list_with_6_elements_returns_list_with_4_elements =
  drop(3,["a","b","c","d","e","f"]) = ["a","b","d","e"]
  
val drop_every_4_element_on_list_with_2_elements_returns_same_list =
  drop(4,["a","b"]) = ["a","b"]
  
val drop_every_second_element_on_list_with_2n_elments_returns_list_with_n_elements =
  drop(2,[1,1,2,2,3,3,4,4,5,5,6,6]) = [1,2,3,4,5,6]