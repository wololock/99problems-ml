(* P01 Find the last element of a list.
    Example:

    scala> last(List(1, 1, 2, 3, 5, 8))
    res0: Int = 8 *)

fun last_01 xs = case xs of
		x::[] => SOME(x)
	|	_::xs' => last_01 xs'
	| [] => NONE	
	
val last = last_01