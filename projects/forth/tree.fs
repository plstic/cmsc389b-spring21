variable index
variable path-index
create path 64 cells allot
0 index !
0 path-index !
\ take a number and a target and if target > number, place
\ 1 on the stack, if target < number, place -1 on  the 
\ stack and if target == number, place 0 on the stack
: comp-tar ( number target  -- val)
;

\ take a direction (-1 for left, 1 for right), and
\ an index and place the index of the child in question 
\ on the stack.
: find-child ( dir index -- val)
;

: drop-n ( number )
;

: bin-search ( tree... target --  path... )
;
