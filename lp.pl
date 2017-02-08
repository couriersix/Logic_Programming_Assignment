/*1*/
sum-up-numbers-simple([], 0). /*declaring the function*/
sum-up-numbers-simple([Head|Tail], X):- /*define the function*/
	number(Head), /*check if head is a number*/
	sum-up-numbers-simple(Tail, Sums), /*Recursing the function, iterating through the rest of the list*/
	X is Head + Sums. /*Adds value to the total sum*/

sum-up-numbers-simple([Head|Tail], X):- 
	\+number(Head;Tail), /*if the value is not a number...*/
	sum-up-numbers-simple(Tail, X). /*the list iterates to the next value*/

/*2*/
sum-up-numbers-general([],0).
sum-up-numbers-general([[]],0).
sum-up-numbers-general([Head|Tail, X]):-
	number(Head),
	sum-up-numbers-general(Tail, Sums),
	X is Head + Sums.

sum-up-numbers-general([Head|Tail], X):-
	atom(Head|Tail),
	sum-up-numbers-general(Tail, Sums).

/* sum-up-numbers-general([Head|Tail], X):- */
/*	\+number(Head;Tail), */
/*	sum-up-numbers-general(Tail, X). */



