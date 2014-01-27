use "p24.sml";

val number_of_drawn_numbers_must_be_greater_than_0 =
  (lotto(0,3) handle IllegalArgumen => []) = []
  
val number_of_drawn_numbers_cannot_be_negative =
  (lotto(~4,~2) handle IllegalArgument => []) = []

val number_of_drawn_numbers_must_be_greater_than_range_size =
  (lotto(6,3) handle IllegalArgument => []) = []
  
val all_10_drawn_lotto_numbers_from_1_to_10_become_from_given_range =
  List.all (fn x => x >= 1 andalso x <= 10) (lotto(10,10))
  
val all_6_drawn_lotto_numbers_from_1_to_49_become_from_given_range =
  List.all (fn x => x >= 1 andalso x <= 49) (lotto(6,49))
  
val all_5_drawn_lotto_numbers_from_1_to_10_are_unique =
  length(foldl (fn(x,acc) => if (List.exists (fn y => y = x) acc) = false then x::acc else acc) [] (lotto(5,10))) = 5  