=begin

*** PROBLEM ***
Write a method that takes one integer argument, which may be positive, negative, or zero.
This method returns true if the number's absolute value is odd.
You may assume that the argument is a valid integer value.

Examples:
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

Keep in mind that you're not allowed to use #odd? or #even? in your solution.

*** PEDAC ***

Understand the problem
- inputs / outputs
  - Input: integer (positive, negative, or zero)
  - Output: return a boolean (true/false)

- Explicit/implicit requirements
  - Use the absolute value of the given number (problem domain)
  - Cannot use #odd? or #even? methods in the solution

- Mental model

- Questions/clarification



Examples / Test Cases
Given above

Data Structures
- Input is an integer
- Output is a boolean
- No internal data structures needed, working just with numbers

Algorithm
- Check if the integer is positive or negative
  - if number < 0, aka negative, flip the sign (reassign the number variable to -(number))
- Check if the absolute number is even or odd
    - if odd, return true
    - if even, return false

=end


def is_odd?(num)
  num = -num if num < 0  # Not necessary because the return of the modulo operator will always be positive when the second number is positive
  # num % 2 == 1
  num.remainder(2) == 1
end

# Test Cases
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true