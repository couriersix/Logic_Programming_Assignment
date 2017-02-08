sum-up-numbers-simple(L, N).
sum-up-numbers-simple([L, N | Tail], Total) :-
	sum-up-numbers-simple([L + N | Tail]).



	