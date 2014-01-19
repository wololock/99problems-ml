(* P05 Reverse a list.
    Example:

    scala> reverse(List(1, 1, 2, 3, 5, 8))
    res0: List[Int] = List(8, 5, 3, 2, 1, 1) *)    

use "p05.sml";

fun is_palindrome xs =
  xs = reverse(xs)
				
		
	