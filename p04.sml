(* P04 Find the number of elements of a list.
    Example:

    scala> length(List(1, 1, 2, 3, 5, 8))
    res0: Int = 6 *)

fun length xs = 
	let fun aux(xs,acc) = case xs of
			[] => acc
		| _::xs' => aux(xs',acc+1)
	in
		aux(xs,0)
	end
		
	