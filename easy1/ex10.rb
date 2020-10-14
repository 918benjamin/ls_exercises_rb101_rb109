=begin

*** PROBLEM ***
Write a method that takes two arguments, a positive integer and a
boolean, and calculates the bonus for a given salary. If the boolean
is true, the bonus should be half of the salary. If the boolean is
false, the bonus should be 0.

Examples:
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

The tests above should print true.

*** PEDAC ***

Understand the problem
- input/output
  - input: integer, boolean
  - output: integer
- Requirements (implicit/explicit)
  - If boolean given is true, bonus = salary / 2
  - if boolean given is false, bonus = 0
- Implicit knowledge / domain concepts and ideas
- Questions / clarify
- Mental model
  - Check if the boolean is true and if it is, return the salary / 2.
    If not, return 0

Examples / test cases
- Given
- Happy paths
- Edge cases (0, 1, empty input, etc)
- Failure / bad inputs (how to handle)

Data structures
- Input
- Output
- Intermediate

Algorithm
-

=end

def calculate_bonus(salary, receive_bonus)
  receive_bonus ? salary / 2 : 0
end



# Test cases

# true
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

puts "\n"

# false
puts calculate_bonus(1000, false) == 500
puts calculate_bonus(2800, true) == 0
