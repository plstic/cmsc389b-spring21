# Security

Due: 26 March 2021, 11:59pm EDT  

Points: 15 Public, 35 semipublic, 50 Short answers

## Before You Start

Please make sure that if you are not using docker (or have updated things on the
docker image), that you are using the at least `rustc 1.50.0`. You 
can check this by running `rustc --version`. If the command does not run, then 
you do not have Rust. 

### Introduction

This project has two functions, one you need to fill out, and one segment of code 
you need to complete: `string_to_integer`, and part of the `main` function.

You then need to do some short answer :)

### Rust

#### string_to_integer

This function will take in a reference to a string slice, and return an integer.
The string that is being referenced consists of the written version of the digits
that make up the integer. 

For example, the string "one two three" should have the equivalent integer of 
123. The string of "four four six seven" should have the equivalent integer of
4467. You will take in a reference to such a string, and return the equivalent 
integer. I should suggest finding a way to isolate the intevidual digit strings,
and associating them with the digit and then doing some fancy math to combine
them.

One thing to note: the string "zero" and the string "oh" should both be associated 
with the 0 digit. So "two oh two zero" should be 2020. Also, the input will all
be lowercase.

You are free to import any library you may need.

#### standard IO

The last part of this project involves reading a properly formated string from 
stdin. I will handle the rest of calling the functions with input and printing
out what needs to be printed out.

You are free to import any library you may need.

### Short Answer

There are 3 short answer. I will give you a segment of unsafe C code. You should
then do the following:

+ Tell me what makes it unsafe
+ One example or way you could exploit it to either crash or have un-expected behavior
+ Write the rust version that is safe and is not susceptible to the original vulnerability.

### Testing and Submitting

You can run the tests with `cargo test`. This is Rust's testing framework. 
You just need to submit `project.rs`. 

+ 15% Public Tests
+ 35% semipublic Tests
+ 50% Short Answer

The code for the public tests are given to you. When you submit to gradescope,
you will be given the names of the semiublic tests and told if you fail or pass
them.
