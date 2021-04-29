# Befunge

## Prelims

We are using Befunge-93 <https://github.com/catseye/Befunge-93>.

This assignment is due **(unofficially) May 11th, (officially) May 14th, 11:59pm Eastern**.
You will submit one `luhn.bf` to the `Befunge` Gradescope assignment.
You will be graded on public and private tests.

How to run code (use command `bef`):
```
[root@890f0c5a67f8 /src] bef luhn.bf
Befunge-93 Interpreter/Debugger v2.25
your code here[root@890f0c5a67f8 /src]
```

### Documentation

Esolang entry: <https://esolangs.org/wiki/Befunge>

### VSCode

Probably unnecessary.
Instead, use an online interpreter to debug.

## Assignment

Note: **your solution must use reflection somehow**

### Luhn Algorithm -- Computing the Checksum

The implementation for the Luhn algorithm, given in the examples, verifies that the given number sequence is valid.
Note that the last digit in the sequence is a "checksum" -- if the last number if missing, then there is only one number that will ensure the sequence is valid.
Your task is to write a Befunge algorithm that will output the checksum given a sequence of digits _without_ a checksum.

Input: a sequence of single-digit non-negative integers. when an integer greater than 9 is encountered, the sequence is over (do not include this encountered integer)

Output: a checksum -- a single-digit non-negative integer that, when appended to the original sequence, yields "valid" in the Luhn algorithm.

Algorithm:
```txt
1. reverse the sequence
2. for the first, third, fifth, etc (odd indices):
   * double the digit, sum the resulting number's digits
   * sum these results
3. for the second, fourth, sixth, etc (even indices):
   * sum the digits
4. sum together the results of (2) and (3)
5. multiply (4) by 9
6. return (5) mod 10
```

Example:
```txt
79927398713 is "valid" according to Luhn -- the checksum is 3

the input sequence for our problem would be:
7 9 9 2 7 3 9 8 7 1 99
(the 3 is not given)

the algorithm computes:
2*1 + 7 +
(2*8 -> 1+6) 7 + 9 +
2*3 + 7 +
2*2 + 9 +
(2*9 -> 1+8) 9 + 7
= 2+7+7+9+6+7+4+9+9+7 = 67

67*9 = 603

603 % 10 = 3

the output should be:
3

-----

calculate the checksum X for 47992739871X

the input sequence:
4 7 9 9 2 7 3 9 8 7 1 99

the algorithm computes:
2*1 + 7 +
(2*8 -> 1+6) 7 + 9 +
2*3 + 7 +
2*2 + 9 +
(2*9 -> 1+8) 9 + 7 +
2*4
= 2+7+7+9+6+7+4+9+9+7+8 = 75

75*9 = 675

675 % 10 = 5

the output should be:
5
```

Ref: <https://en.wikipedia.org/wiki/Luhn_algorithm#Example_for_computing_check_digit>

**Note** -- your solution **must** use reflection somehow.
You are welcome to use the example Luhn code to start, but it will need modification.

It should be easy enough for you to generate your own test code.
We will test your code by running `befungee luhn.bf < input-sequence-X.txt` for various input sequences (exactly as given in the examples).

### RNG

For extra credit, produce a random number generator.
Take as input a positive number `n` for the number of digits, and output a random number that has that many digits.
You must use reflection somehow to receive credit.
Message us your submission if you are interested!

### Evaluation

* 50% public tests
* 50% private tests
