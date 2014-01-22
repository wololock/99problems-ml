(* P14 Duplicate the elements of a list.
    Example:

    scala> duplicate(List('a, 'b, 'c, 'c, 'd))
    res0: List[Symbol] = List('a, 'a, 'b, 'b, 'c, 'c, 'c, 'c, 'd, 'd) *)
    
fun duplicate_01 xs =
  let
    fun aux(xs,acc) = case xs of
            [] => acc
          | x::xs' => aux(xs', acc @ [x,x])
  in
    aux(xs,[])
  end
  

fun duplicate_02 xs = foldl (fn(x,acc) => acc@[x,x]) [] xs


val duplicate = duplicate_01