(* P32 (**) Determine the greatest common divisor of two positive integer numbers.
    Use Euclid's algorithm.

    scala> gcd(36, 63)
    res0: Int = 9 *)
    
fun gcd(a,b) = if b = 0 then a else gcd(b, a mod b)