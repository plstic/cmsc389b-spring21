loves(mary,food).
loves(mary,wine).
loves(john,wine).
loves(john,mary).
loves(mary,mary).

% the backtracking goes in order form the first line to the last line in the 
% order in which the rules were made. 

% thus, ?- loves(mary,X). will return food, then wine, then mary. 
% if this is the case, what is the order of reponses when the question is 
% loves(mary,X), loves(john,X). ?

