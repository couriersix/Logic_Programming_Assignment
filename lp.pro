sum-up-numbers-simple([], 0).
sum-up-numbers-simple([Head|Tail], Value) :-
	number(Head),
	sum-up-numbers-simple([L + Value | Tail]).



	