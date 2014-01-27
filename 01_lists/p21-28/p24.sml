(* P24 Lotto: Draw N different random numbers from the set 1..M.
    Example:

    scala> lotto(6, 49)
    res0: List[Int] = List(23, 1, 17, 33, 21, 37) *)
    
use "p22.sml";
use "p23.sml";    
    
fun lotto(n,m) = 
  if n < 1 orelse n > m then raise IllegalArgument
  else randomSelect(n, range(1,m))