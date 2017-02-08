/*1*/
sum-up-numbers-simple([], 0).
sum-up-numbers-simple([Head|Tail], X):-
	number(Head), 
	sum-up-numbers-simple(Tail, Sums), 
	X is Head + Sums.

sum-up-numbers-simple([Head|Tail], X):-
	\+number(Head;Tail), 
	sum-up-numbers-simple(Tail, X).


