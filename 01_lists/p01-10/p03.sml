(* P03 Find the Kth element of a list.
    By convention, the first element in the list is element 0.

    Example:

    scala> nth(2, List(1, 1, 2, 3, 5, 8))
    res0: Int = 2 *)

exception Negative
exception IndexOutOfBounds

fun nth k xs = 
  let
    fun aux(k,xs,acc) = case (xs, k<0) of
        (_, true) => raise Negative
      | (x::xs', _) =>  if acc = k then SOME(x)
                        else aux(k,xs',acc+1)
      | _ => raise IndexOutOfBounds
  in
    aux(k,xs,0)
  end
		
	