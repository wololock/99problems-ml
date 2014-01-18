(* P02 Find the last but one element of a list.
    Example: *)
    
fun penultimate_01 xs = case xs of
		[] => NONE
	| [_] => NONE
	|	x::[_] => SOME(x)
	|	_::xs' => penultimate_01 xs'
	

val penultimate = penultimate_01