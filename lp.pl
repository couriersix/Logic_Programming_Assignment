/*1*/
sum-up-numbers-simple([], 0). 
sum-up-numbers-simple([Head|Tail], X):-
	number(Head), 
	sum-up-numbers-simple(Tail, Sums), 
	X is Head + Sums.

sum-up-numbers-simple([Head|Tail], X):- 
	\+number(Head;Tail), 
	sum-up-numbers-simple(Tail, X). 

/*2*/
sum-up-numbers-general([],0).
sum-up-numbers-general([Head|Tail, X]):-
	number(Head),
	sum-up-numbers-general(Tail, Sums),
	X is Head + Sums.

sum-up-numbers-general([Head|Tail], X):-
	\+number(Head;Tail),
	sum-up-numbers-general(Tail, X).

	