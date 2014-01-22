(* P09 Pack consecutive duplicates of list elements into sublists.
    If a list contains repeated elements they should be placed in separate sublists.

    Example:

    scala> pack(List('a, 'a, 'a, 'a, 'b, 'c, 'c, 'a, 'a, 'd, 'e, 'e, 'e, 'e))
    res0: List[List[Symbol]] = List(List('a, 'a, 'a, 'a), List('b), List('c, 'c), List('a, 'a), List('d), List('e, 'e, 'e, 'e)) *)

fun pack xs =
  let
    fun aux(xs, acc, packed, prev) = case xs of
          [] => acc@[packed]
        | x::xs' => case prev of
              NONE => aux(xs', acc, x::packed, SOME(x))
            | SOME(x') => if x = x' then aux(xs', acc, x::packed, prev)
                          else aux(xs', acc@[packed], [x], SOME(x))
  in
    aux(xs,[],[],NONE)
  end
        