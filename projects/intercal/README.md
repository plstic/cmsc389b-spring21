# List Reversal

Due (unofficially) May 11th, (officially) May 14th, 11:59pm Eastern

Points: 50 Public, 50 Semipublic

## Before you Start

Please make sure that if you are not using docker, or have updated the docker
image, that you are using at least C-INTERCAL installed. You should be able
to call the `ick` compiler.

## Introduction

You will be given a list of number, no longer than 40 numbers which terminates
with a zero, and all I want you to do is to print the list in reverse order.

Please look at the `input` and `sols` file to see an example. Notice there are 
empty lines between output. This is because `PLEASE READ OUT` will add this.

You will notice I added a varaible `,1` and gave it 50 length. You can choose to
use this array for your numbers or not. Notice that I used the spot charaacter
(`,`) so you can assume all number will fit within 16 bits. 

How I would suggest you do this: you have a loop that will read in numbers, and
store them to a place in the array. (To learn how to read in numbers, look at 
the `add.i` file and example. To learn how to add things to arrays, look at 
`hello.i` file and example. TO learn how to do loops, look at the `fibonacci.i`
file and example). Then do another loop, than just reverses through the list and
prints out the values. (To learn how to print out value, look at 'add.i' and 
maybe 'fibonacci.i'.). I would also reccomend having a variable that keeps track
of the index of the array, and since we are using an array, the index can also
act as the size of the list (assuming you keep a variable that keeps track of 
the index to add the next number). 

Ultimately, I believe you can use fibonacci as a template for this project, and 
make modificatons as needed (as that is what i did when I designed this 
project).

You can choose to do this project or the befunge project. You have until the 
last day of classes to do this project. 

If you have any question, please ask on ELMS or elms message us.
