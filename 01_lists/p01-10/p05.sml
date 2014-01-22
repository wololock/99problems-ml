(* P05 Reverse a list.
    Example:

    scala> reverse(List(1, 1, 2, 3, 5, 8))
    res0: List[Int] = List(8, 5, 3, 2, 1, 1) *)    

fun reverse xs =
  let
    fun aux(xs,reversed) = case xs of
        [] => reversed
      | x::xs' => aux(xs', x::reversed)			
  in
    aux(xs, [])
  end
				
		
	