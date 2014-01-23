(* P19 Rotate a list N places to the left.
    Examples:

    scala> rotate(3, List('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'i, 'j, 'k))
    res0: List[Symbol] = List('d, 'e, 'f, 'g, 'h, 'i, 'j, 'k, 'a, 'b, 'c)

    scala> rotate(-2, List('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'i, 'j, 'k))
    res1: List[Symbol] = List('j, 'k, 'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'i) *)
    
use "p18.sml";    
    
fun rotate(k,xs) = case xs of
      [] => []
    | xs => let
              val xs_length = length xs
              val from = k mod xs_length
              val to = xs_length - from
            in
              slice(from,to,xs) @ slice(0,from,xs)
            end