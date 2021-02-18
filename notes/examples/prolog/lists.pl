lists([cliff,justin,rachel]).
lists([cliff,rachel, anna]).
lists([justin, cliff, anna]).

member(X,[X|_]).
member(X,[_|Y]) :- member(X,Y).

change(i,you).
change(am, [am ,not]).
change(X,X).

alter([],[]).
alter([X|Y],[A|B]) :- change(X,A), alter(Y,B).

