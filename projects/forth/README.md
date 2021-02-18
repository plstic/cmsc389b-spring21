# Binary Search Tree

Due: 5th March, 2021

Points: 25 Public, 75 semipublic

## Before You Start

Please make sure that if you are not using docker (or have updated things on the
docker image), that you are using the at least `gforth 0.7.3`. You 
can check this by running `gforth`. If the command does not run, then 
you do not have gforth. You must have gforth, as other implementation 
versions may cause tests to fail.

### Introduction

You will be implementing binary search on a BST in gforth. 

#### Testing and Submitting

You will submit this project to [gradescope](https://www.gradescope.com/courses/172268).
You may only submit the `tree.fs` file. To test locally, run 
`python run_tests`. 

### BST

#### Properties of a BST

A BST is a tree structure that guarantees the *search property* which means that
the left child of any node contains a value less than that of the current node.
Traditionally, the right child of any node contains a value less than that of 
the current node. For this project, you may assume that no two nodes have the 
same value. 

#### Implementation

As you may remember with heaps, you can treat any tree as an array where there
is a mathematical relationship between the indecies of the parent and children
nodes. For this project, I use this format to pass the tree to you, but with
a twist: because gforth is a stack based language, the list is reversed.
Thus is `3 1 2` is a three node tree where is the root, with a left child of 1
and a right child of 3 (normally this tree would be represented as `2 1 3`).
Additionally, I will not be giving you an array, but the list will be already
on the stack (`3 1 2 sample-func` would call sample-func with the tree as the
parameter).. 

Additionally, to make this project easier, all values in the BST will be
positive. A 'empty' node will have the value of -1 (eg. `2 -1 -1` is a 
singleton). 

Ultimately you will be implementing binary search, where you will return the
path from the root node to the target value or -1 if no such path exists. 

To help you, I have supplied a variable `index` to keep track of the index
of the tree list, an array `path` where you could store the path, and another
variable `path-index` which could help keep track of an index for the path 
array. You do not need to use these variables, but they could make the project
easier.

I have also added some helper functions. While completing them is mandatory, 
when you are implementing `bin-search`, you do not need to use them.

General Assumptions:
 + The height of the tree will not exceed 63
 + No two nodes will have the same value
 + All values will be positive
 + A value of -1 is an 'Empty' node
 + You can add your own global varaibles

### Functions

There are four functions that need to be completed. The first three should help
with implementing the last one. Additionally, like most gforth function, 
parameters are on the stack, and should not be present when the function 
returns.

For example, `:square ( n -- n^2 ) dup *`, when called, consumed one item from
the stack and places one value on the stack.

#### `comp-tar ( n1 n2 -- flag )`

`comp-tar` consumes both `n2` and `n2` and returns a flag depending on how 
the two values compare. It acts like a compareTo function. If `n1` is less than 
`n2`, place `1` on the stack. If `n1` is greater than `n2`, return -1. Else 
return `0`.

#### `find-child ( dir index -- new-index )`

`find-child` consumes a `dir` and `index`. Recall that array implementations for
BSTs have a mathematical relationship from the index of the parent node and each
of their two children. `find-child` will take in a `dir` which represents 
finding the left or right child, and `index` is the index of the parent node.
`dir` will be `-1` for the left child, and `1` for the right child. **You can 
assume input will be either `-1` or `1`.** The appropiate child's index will be 
returned. 

#### `drop-n( n -- )`

`drop-n` consumes `n` and removes `n` items from the stack, not including the 
parameter (eg, `1 2 3 4 2 drop-n -- 1 2`). **You can assume that `n` will never
exceed `depth`.**

#### `bin-search( tree... target -- path... )`

`bin-search` will have the `tree` on the stack in the aforementioned format, and
a `target` value. It will then return the path taken `target` to the root of the
tree. That is, `7 5 3 1 6 2 4 1 bin-search -- 1 2 4`. For ease of reading I did
not include the eight `-1`s before the `7`. See the public tests for more 
  examples. **If the `target` is not in the tree, return `-1`.**

#### Evalutation

+ 25% Public Tests
+ 75% Semipublic Tests

The code for the publis tests are given to you. When you submit to gradescope,
you will be given the names of the semiublic tests and told if you fail or pass
them.
