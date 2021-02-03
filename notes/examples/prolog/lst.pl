list_length([],0).
list_length([H|T],L) :- list_length(T,L1), L is L1+1.

factorial(0,1).
factorial(X,Y) :- factorial(X1,Y1), X is X1 + 1, Y is Y1 * X.
