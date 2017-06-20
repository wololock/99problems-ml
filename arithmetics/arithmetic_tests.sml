val test3101 = isPrime 1 = true
val test3102 = isPrime 3 = true
val test3103 = isPrime 15 = false
val test3104 = isPrime 133 = true
val test3105 = isPrime 123456 = false
val test3106 = isPrime 0 = false  handle IllegalArgument =>true
val test3107 = isPrime ~3 = false  handle IllegalArgument =>true
			       
val test3201 = gcd_eucl 4 1 = 1
val test3202 = gcd_eucl 3 6 = 3
val test3203 = gcd_eucl 50 7 = 1
val test3204 = gcd_eucl 15 15 = 15
val test3205 = gcd_eucl 6 33 = 3

val test3301 = ifComprime 4 1 = true
val test3302 = ifComprime 3 6 = false
val test3303 = ifComprime 50 7 = true
val test3304 = ifComprime 15 15 = false
val test3305 = ifComprime 6 33 = false

val test3401 = totient 1 = 1
val test3402 = totient 3 = 2
val test3403 = totient 31 = 30
val test3404 = totient 8 = 4
val test3405 = totient 27 = 18
val test3406 = totient 10 = 4
val test3407 = totient 12 = 2*2


					    
