=begin

*** PROBLEM ***
Write a program that asks the user to enter an integer greater than
0, then asks if the user wants to determine the sum or product of all
numbers between 1 and the entered integer.

Example 1:
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.

Example 2:
>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.


*** PEDAC ***

Understand the problem
- input/output
  - input: string (integer > 0) and string ('s' or 'p')
  - output: string with integer result included
- requirements (explicit/implicit)
  - Use puts for prompts so the input comes on a new line
- implicit knowledge (problem domain concepts or keywords)
- questions / clarify
  - Verify user input? Positive integer and s/p/other
    - Assuming not since no examples given
  - Input is case sensitive or insensitive?
- mental model
  - Ask the user for their input. Create a range of numbers from 1
    to their input integer. Sum or multiple all the numbers in that
    range, depending on their other input.

Examples / test cases
- given
- happy paths
- edge cases
- failure / bad inputs
- questions / clarify

Data structures
- input: strings
- output: string
- intermediate:
  - integer input needs converting to integer for math
  - Might end up ussing an array of values for the computation

Algorithm
- 

=end