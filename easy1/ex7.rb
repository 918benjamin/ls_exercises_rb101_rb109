=begin

*** PROBLEM ***
Write a method that takes one argument, a positive integer, and
returns a string of alternating 1s and 0s, always starting with 1.
The length of the string should match the given integer.

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

The tests above should print true


*** PEDAC ***

Understand the Problem

- Inputs/outputs
  - Input: integer (positive)
  - Output: string (alternating 1s and 0s)

- Requirements (implicit/explicit)
  - Return string always starts with 1
  - Input will be positive and will be an integer
  - Total length of the string should equal the given integer

- Questions / clarifications
  - When the integer given is 1, should we return '1'?
  - What about when given 0? Assuming we won't be per the requirements
  - Any upper limit?

- Mental model
  - Take the given integer and iterate that many times, adding either
    1 or 0 to a string, depending on if you are at an even or odd step.

Examples / Test cases
- Given
- Happy paths
- Edge cases
- Failure / bad inputs

Data structures
- input: integer
- output: string
- intermediate: think we can get away with just working directly on the
                string we'll return since they are mutable in Ruby.

Algorithm
- Initialize an empty string, result
- Iterate the number of times of the given integer
- On each iteration, check if the iteration count is odd or even
  - if the count is even, append '1' to the string
  - else append '0'
  - stop when the string length is == the integer
- return result

=end

def stringy(num, start=1)
  result = ''
  lookup = {1 => '0', 0 => '1'}
  num.times do |index|
    if index.even?
      result << start.to_s
    else
      result << lookup[start]
    end
  end
  result
end


# Test Cases

# true
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(1) == '1'
puts stringy(0) == '' # Don't need to test this necessarily, but curious
puts stringy(100) == '1010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010'
puts stringy(101) == '10101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101010101'
puts stringy(6, 0) == '010101'
puts stringy(9, 0) == '010101010'
puts stringy(4, 0) == '0101'
puts stringy(7, 0) == '0101010'
puts stringy(1, 0) == '0'

puts "\n"
# false
puts stringy(6) == '1010101'
puts stringy(1) == '0'
puts stringy(4) == '0101'
puts stringy(4) == '1001'
puts stringy(0) == '1'