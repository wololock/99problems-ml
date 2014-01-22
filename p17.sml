(* P17 Split a list into two parts.
    The length of the first part is given. Use a Tuple for your result.

    Example:

    scala> split(3, List('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'i, 'j, 'k))
    res0: (List[Symbol], List[Symbol]) = (List('a, 'b, 'c),List('d, 'e, 'f, 'g, 'h, 'i, 'j, 'k)) *)
    
fun split(k,xs) =
  let
    fun aux(xs,acc,n) = if n > k then (acc,xs) else case xs of
          [] => (acc,xs)
        | x::xs' => aux(xs', acc@[x], n+1)
  in
    aux(xs,[],1)
  end