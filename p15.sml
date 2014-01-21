(* P15 Duplicate the elements of a list a given number of times.
    Example:

    scala> duplicateN(3, List('a, 'b, 'c, 'c, 'd))
    res0: List[Symbol] = List('a, 'a, 'a, 'b, 'b, 'b, 'c, 'c, 'c, 'c, 'c, 'c, 'd, 'd, 'd) *)
    
fun duplicateN(n,xs) = foldl (fn(x,acc) => acc @ (List.tabulate(n,(fn y => x)))) [] xs