(* P16 Drop every Nth element from a list.
    Example:

    scala> drop(3, List('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'i, 'j, 'k))
    res0: List[Symbol] = List('a, 'b, 'd, 'e, 'g, 'h, 'j, 'k) *)
    
fun drop(k,xs) =
  let
    fun aux(xs,acc,n) = case xs of
          [] => acc
        | x::xs' => aux(xs', if n mod k = 0 then acc else acc@[x], n+1)
  in
    aux(xs,[],1)
  end