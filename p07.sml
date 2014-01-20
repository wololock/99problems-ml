(* P05 Reverse a list.
    Example:

    scala> reverse(List(1, 1, 2, 3, 5, 8))
    res0: List[Int] = List(8, 5, 3, 2, 1, 1) *)    

(* WARNING: because of ML type system, it works only for 'a list list type *)
fun flatten xs =
  foldl (fn(x,acc) => acc @ x) [] xs
	