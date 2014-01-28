(* P23 Extract a given number of randomly selected elements from a list.
    Example:

    scala> randomSelect(3, List('a, 'b, 'c, 'd, 'f, 'g, 'h))
    res0: List[Symbol] = List('e, 'd, 'a)

    Hint: Use the solution to problem P20 *)

use "../p11-20/p20.sml";

exception IllegalArgument
    
fun randomSelect(n,xs) = 
  let
    val now = Time.now()
    val l = Int.fromLarge(Time.toSeconds(now) mod Int.toLarge(valOf(Int.maxInt)))
    val h = Int.fromLarge(Time.toMilliseconds(now) mod Int.toLarge(valOf(Int.maxInt)))
    val seed = Random.rand (l,h)
    fun aux(xs,acc,k) = 
      let
        val list_size = length(xs)
        val divider = if list_size = 0 then 1 else list_size
        val random_index = Random.randNat(seed) mod divider
      in case k of
          0 => acc
        | n => case removeAt(random_index, xs) of
            (ys,SOME x) => aux(ys,x::acc,n-1)
          | (ys, _) => aux(ys,acc,n-1)
      end
  in
    if n < 0 then raise IllegalArgument
    else aux(xs,[],n)
  end