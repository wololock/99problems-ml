use "p19.sml";

val start = "------ TESTS STARTS HERE ---------"
(* tests *)

val rotate_empty_list_by_1_returns_empty_list =
  rotate(1,[]) = []
  
val rotate_empty_list_by_minus_3_returns_empty_list =
  rotate(~3,[]) = []
  
val rotate_single_element_list_by_4_returns_same_list =
  rotate(3,["a"]) = ["a"]
  
val rotate_single_element_list_by_minus_2_returns_same_list =
  rotate(~2,["x"]) = ["x"]
  
val rotate_two_elements_list_by_one_returns_its_mirror_list =
  rotate(1,["a","b"]) = ["b","a"]
  
val rotate_four_elements_list_by_three =
  rotate(3,["a","b","c","d"]) = ["d","a","b","c"]
  
val rotate_list_by_three =
  rotate(3,["a","b","c","d","e","f","g","h","i","j","k"]) = ["d","e","f","g","h","i","j","k","a","b","c"]
  
val rotate_list_by_minus_two =
  rotate(~2,["a","b","c","d","e","f","g","h","i","j","k"]) = ["j","k","a","b","c","d","e","f","g","h","i"]