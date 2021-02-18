: max ( n1 n2 -- n3 )
  2dup > if
    drop
  else
    nip
  endif ;

: print10
  10 0 ?do
    i .
  loop ;

