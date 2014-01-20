(* P08 Eliminate consecutive duplicates of list elements.
    If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.

    Example:

    scala> compress(List('a, 'a, 'a, 'a, 'b, 'c, 'c, 'a, 'a, 'd, 'e, 'e, 'e, 'e))
    res0: List[Symbol] = List('a, 'b, 'c, 'a, 'd, 'e) *)
    
fun compress xs =
  let
    fun aux(xs,acc,prev) = case xs of
          [] => acc
        | x::xs' => case prev of
              NONE => aux(xs', acc @ [x], SOME(x))
            | SOME(x') => if x = x' then aux(xs', acc, prev)
                          else aux(xs', acc @ [x], SOME(x))
  in
    aux(xs,[],NONE)
  end
        