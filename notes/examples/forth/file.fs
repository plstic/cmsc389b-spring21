: add ( n1 n2 -- n1+n2 ) 
  + ;

: get3 { n1 n2 n3 -- n1 n2 n3 n1 }
  n1 n2 n3 n1 ;
  
: start 
  1 2 3 get3 .s ;
