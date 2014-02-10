(* P31 (**) Determine whether a given integer number is prime.

    scala> 7.isPrime
    res0: Boolean = true *)

exception IllegalArgument
    
fun is_prime n =
  let fun check k = 
    if (n mod k = 0) then false
    else if (k*k >= n) then true
    else check(k+1)
  in
    if (n < 0) then raise IllegalArgument
    else check(2)
  end