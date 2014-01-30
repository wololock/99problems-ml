(* P26 Generate the combinations of K distinct objects chosen from the N elements of a list.
    In how many ways can a committee of 3 be chosen from a group of 12 people? We all know that there are C(12,3) = 220 possibilities (C(N,K) denotes the well-known binomial coefficient). For pure mathematicians, this result may be great. But we want to really generate all the possibilities.

    Example:

    scala> combinations(3, List('a, 'b, 'c, 'd, 'e, 'f))
    res0: List[List[Symbol]] = List(List('a, 'b, 'c), List('a, 'b, 'd), List('a, 'b, 'e), ... *)
  
fun combinations(k,xs) = 
  let
    fun compute_combinations(k,xs) = case (k,xs) of
          (0,_) => [[]]
        | (_,[]) => [[]]
        | (k,x::xs') => map (fn y => x::y) (compute_combinations(k-1,xs'))@(compute_combinations(k,xs'))
  in
    List.filter (fn x => (length x) = k) (compute_combinations(k,xs))
  end