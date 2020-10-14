=begin

*** PROBLEM ***
Write a method that takes one argument, a positive integer, and
returns the sum of its digits.

Examples:
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

The tests above should print true

For a challenge, try writing this without any basic looping constructs
(while, until, loop, and each).

*** PEDAC ***

Understand the Problem
- Input/output
  - input: positive integer
  - output: integer (sum of digits of input)
- Requirements (implicit/explicit)
  - Cannot use basic looping construts (while, until, loop, each)
- Implicit knowledge / key terms & concepts
- Questions / clarification
- Mental model
  - Change the integer to a a string, split the string, convert each
    number string to an actual int and sum them. Return the sum.

Examples / test cases
- Given
- Happy paths
- Edge cases
  - boundaries
  - empty input, 0, 1,
- Failure / bad inputs

Data structures
- input: integer
- output: integer
- intermediate: 

Algorithm
-

=end

def sum(num)
  num.to_s.split('').map(&:to_i).sum
end
# Test cases

# true
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45


puts "\n"

# false