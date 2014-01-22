use "p06.sml";

val start = "------ TESTS STARTS HERE ---------"
(* tests *)

val empty_list_is_palindrome =
  is_palindrome [] = true
  
val palindrome_list_1_2_3_2_1 =
  is_palindrome [1,2,3,2,1] = true
  
val palindrome_list_a_b_b_a =
  is_palindrome ["a", "b", "b", "a"] = true
  
val palindrome_list_4_5_6_6_5_4 =
  is_palindrome [4,5,6,6,5,4] = true
  
val not_palindrome_1_2_3_1_2_3 =
  is_palindrome [1,2,3,1,2,3] = false
  
val not_palindrome_a_b_c_a_b_c = 
  is_palindrome ["a", "b", "c", "a", "b", "c"] = false