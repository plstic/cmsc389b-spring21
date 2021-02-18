: test-comp-tar
  2 1 comp-tar 1 2 comp-tar ;
: test-find-child
  1 0 find-child -1 0 find-child ;
: test-bin-search-1 
	-1 -1 -1 -1 3 1 2 1 bin-search ;
: test-bin-search-2
	-1 -1 -1 -1 3 1 2 2 bin-search ;
: test-bin-search-3 
	-1 -1 -1 -1 3 1 2 3 bin-search ;

: print-path ( -- )
  depth begin 0 > while . depth repeat ;

test-comp-tar print-path
10 emit 
test-find-child print-path
10 emit 
test-bin-search-1 print-path
10 emit 
test-bin-search-2 print-path
10 emit 
test-bin-search-3 print-path
10 emit 
