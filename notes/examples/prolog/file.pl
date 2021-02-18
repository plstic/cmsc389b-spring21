parent(astoria, clyde).
parent(daphne, clyde).
parent(justin, alan).

siblings(X,Y) :- dif(X,Y),parent(X,Z), parent(Y,Z).
