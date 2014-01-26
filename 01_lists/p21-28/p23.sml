(* P23 Extract a given number of randomly selected elements from a list.
    Example:

    scala> randomSelect(3, List('a, 'b, 'c, 'd, 'f, 'g, 'h))
    res0: List[Symbol] = List('e, 'd, 'a)

    Hint: Use the solution to problem P20 *)

use "../p11-20/p20.sml";

exception IllegalArgument
    
fun randomSelect(n,xs) = 
  let
    val seed = Random.rand(0,512)
    fun aux(xs,k) = 
      let
        val list_size = length(xs)
        val divider = if list_size = 0 then 1 else list_size
        val random_index = Random.randNat(seed) mod divider
      in case k of
          0 => xs
        | n => case removeAt(random_index, xs) of
            (ys,_) => aux(ys,n-1)
      end
  in
    if n < 0 then raise IllegalArgument
    else aux(xs, length(xs) - n)
  end
    