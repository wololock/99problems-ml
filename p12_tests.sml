use "p12.sml";

val start = "------ TESTS STARTS HERE ---------"
(* tests *)

val decode_empty_list =
  decode [] = []
  
val decode_nonrepeated_tuples =
  decode [(1,"a"),(1,"b"),(1,"z")] = ["a","b","z"]
  
val decode_duplicated_elements_in_decoded_list = 
  decode [(2,"z"),(3,"x"),(1,"f")] = ["z","z","x","x","x","f"]