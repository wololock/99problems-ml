(* P18 Extract a slice from a list.
    Given two indices, I and K, the slice is the list containing the elements from and including the Ith element up to but not including the Kth element of the original list. Start counting the elements with 0.

    Example:

    scala> slice(3, 7, List('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'i, 'j, 'k))
    res0: List[Symbol] = List('d, 'e, 'f, 'g) *)

use "../p01-10/p04.sml";

exception IndexOutOfBounds    

fun slice(i,k,xs) =
  let
    val xs_length = length xs
    val end_index = i + k
    val is_out_of_bounds = i < 0 orelse k < 0 orelse xs_length < end_index
    
    fun aux(xs,acc,n) = case (xs, is_out_of_bounds, n >= i, n = end_index) of
          (_, true, _, _) => raise IndexOutOfBounds
        | (_, _, _, true) => acc
        | (x::xs', _, true, _) => aux(xs', acc@[x], n+1)
        | (x::xs', _, _, _) => aux(xs',acc,n+1)
        | _ => acc
  in
    aux(xs,[],0)
  end
  
