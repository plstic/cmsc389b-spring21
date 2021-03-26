\ place 1 on the stack for true 
\ place 0 on the stack for false
\ will not enforce the need to consume the parameters


\ n - the number of values to take from the recursive sequence
\ s - the sum of the first n values from the recursive sequence
\ a - the value of a(1)
\ b - the value of a(2)
\ c - the coefficient of the a_{n-1} term on the linear combination
\ d - the coefficient of the a_{n-2} term of the linear combination
: sequence ( n s a b c d )

;

3 4 1 1 1 1 sequence
\ . should print 1
