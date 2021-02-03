inTrouble(A) :- committed(A,Crime),!,unlucky(A).
committed(cliff, clever_comback).
committed(cliff, being_too_attractive).
commtted(justin, sic_burn).
unlucky(cliff).

% if someone has commited a crime, it doesn't really matter which crime it is. 
% there is no reaon to have prolog cycle through all the crimes someone 
% commited should unlucky(A) fail and prolog start re-satisfying goals of 
% commited(A,Crime).
