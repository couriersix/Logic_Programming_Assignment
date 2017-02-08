sum-up-numbers-simple([], 0).
sum-up-numbers-simple([Head|Tail], Value) :-
	number(Head),
	sum-up-numbers-simple([L + Value | Tail]),
	Value is Head + Value.

sum-up-numbers-simple([Head|Tail, Value]):-
	\+num(head),
	sum-up-numbers-simple(Tail, Value).

	