=begin

*** SETUP ***
Write a method that takes two arguments, a string and a positive integer,
and prints the string as many times as the integer indicates.

Example
repeat('Hello', 3)

Output =>
Hello
Hello
Hello

*** PEDAC ***

Understand the problem
- Inputs: string, positive integer
- Outputs: string (multiple times based on the given integer)

- Requirements
  - Print each string on a new line
  - Write a method

- Questions
  - Will the string argument given always be a valid string? Or do we need to handle invalid input?
  - Does positive integer mean it won't be 0?
  - Are there any upper limits to the positive integer? Or should we be prepared for any positive integer, even super high ones?

Examples / Test Cases
- repeat('boo', 5) => 'boo' five times each on a new line
- repeat('boo', 10) => 'boo' ten times each on a new line
- repeat('boo', 1) => 'boo' one time
- repeat('hello world', 8) => 'hello world' eight times each on a new line
- repeat('', 8) => eight empty lines
- repeat('*', 3) => '*' three times each on a new line

- Edge cases
  - GIven a 0 for the positive integer
  - Given an invalid input for the string (an array or an integer)
  - Given a string with wierd formatting ("  hello world  ")

Data Structures
- Input is a string and a positive integer
- No other internal data structures
- Output will be multiple strings

Algorithm
- Set a counter to 0
- Loop
  - Print the given string out each time through the loop
  - Increment the counter by 1
  - Stop looping when the counter is the same as the given integer

=end

def repeat(str, num)
  num.times { puts str }
end

# Test Cases
repeat('boo', 5) # => 'boo' five times each on a new line
repeat('baa', 10) # => 'boo' ten times each on a new line
repeat('meep', 1) # => 'boo' one time
repeat('hello world', 8) # => 'hello world' eight times each on a new line
repeat('', 8) # => eight empty lines
repeat('*', 3) # => '*' three times each on a new line