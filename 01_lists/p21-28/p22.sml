(* P22 Create a list containing all integers within a given range.
    Example:

    scala> range(4, 9)
    res0: List[Int] = List(4, 5, 6, 7, 8, 9) *)
    
fun range(from,to) =
  let
    val is_ascending = from <= to
    fun aux(n,acc) = case ((n > to andalso is_ascending) orelse (n < to andalso (is_ascending = false)), is_ascending) of
          (true,_) => acc
        | (_, true) => aux(n+1,acc@[n])
        | _ => aux(n-1,acc@[n])
  in
    aux(from,[])
  end