(* P21 Insert an element at a given position into a list.
    Example:

    scala> insertAt('new, 1, List('a, 'b, 'c, 'd))
    res0: List[Symbol] = List('a, 'new, 'b, 'c, 'd) *)
    
use "../p11-20/p18.sml";

(* using solution from p18 *)
fun insertAt(elem,k,xs) = 
  slice(0,k,xs) @ [elem] @ slice(k, (length xs)-k, xs)