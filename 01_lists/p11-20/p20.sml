(* P20 Remove the Kth element from a list.
    Return the list and the removed element in a Tuple. Elements are numbered from 0.

    Example:

    scala> removeAt(1, List('a, 'b, 'c, 'd))
    res0: (List[Symbol], Symbol) = (List('a, 'c, 'd),'b) *)
    
exception IndexOutOfBounds    
    
fun removeAt(k,xs) = 
  let
    val xs_length = length xs
    val is_out_of_bounds = k < 0 orelse k >= xs_length
    
    fun aux(xs,acc,n,removed) = case (xs, is_out_of_bounds, n=k) of
            (_,true,_) => raise IndexOutOfBounds
          | ([],_,_) => (acc,removed)
          | (x::xs',_,true) => aux(xs',acc,n+1,SOME(x))
          | (x::xs',_,_) => aux(xs',acc@[x],n+1,removed)
  in
    aux(xs,[],0,NONE)
  end