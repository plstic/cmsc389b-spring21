adj(a,b).
adj(b,c).
adj(c,d).
adj(c,e).

member(X,[X|_]).
member(X,[_|Y]) :- member(X,Y).

go(A,A,_).
go(A,B,T) :- adj(A,C),not(member(C,T)),go(C,B,[C|T]).

