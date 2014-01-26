(* computes intersection of two lists *)
fun intersect(xs,ys) =
  let
    fun aux(xs,ys,acc) = case xs of
          [] => acc
        | x::xs' => if List.exists (fn y => y = x) ys then aux(xs', List.filter (fn y => y <> x) ys, acc@[x])
                    else aux(xs',ys,acc)
  in
    aux(xs,ys,[])
  end
