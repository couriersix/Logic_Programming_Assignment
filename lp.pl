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
sum-up-numbers-general([],0). /*defining functions*/
sum-up-numbers-general([[]],0). /*define function for nested list case*/
sum-up-numbers-general([Head|Tail, X]):- /*same as 1*/
	number(Head),
	sum-up-numbers-general(Tail, Sums),
	X is Head + Sums.

sum-up-numbers-general([Head|Tail], X):-
	atom(Head), /*checks if value is a list, and recurses if true*/
	sum-up-numbers-general(Tail, X).

sum-up-numbers-general([Head|Tail], X):- /*same as 1*/
	sum-up-numbers-general(Tail, Sums),
	X is Head + Sums.



/*4*/

common-unique-elements([L1], [L2], N).
common-unique-elements([L1], [L2], N):-
	member(L2, X),!, common-unique-elements([L1], [L2], [L3]).

common-unique-elements([L1], [L2], [L3]):-
	common-unique-elements([L1], [L2], [L3]).

	member([Head|Tail], X).
	member([Head|Tail, X]):-
		member(Tail, X).