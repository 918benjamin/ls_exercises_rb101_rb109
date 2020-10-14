=begin

*** PROBLEM ***
Write a method that takes one argument, a positive integer, and 
returns a list of the digits in the number.

Examples:
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true


*** PEDAC ***

Understand the Problem
- Inputs/Outputs
  - Input: positive integer
  - Output: return an array of integers
- Requirements
  - Create a method, digit_list
  - One param, num
  - Method returns an array of digits in num, prints nothing
  - Include duplicate integers
  - Output is ordered by how the digits appear in the number, left > right
- Mental model
  - Convert the input integer to a string, loop through each character
    converting it back to an integer and appending it to an array.
    Return the array.
- Questions / Clarification
  - How should the method handle invalid inputs? Floats, letters, negative?
  - 

Examples / Test Cases
- Additional
  - puts digit_list(0) == [0]               # => true
  - puts digit_list(10) == [1, 0]           # => true
  - puts digit_list(10) == [1]              # => false
  - puts digit_list(444) == [4]             # => false
  - puts digit_list(444) == ['4', '4', '4'] # => false

- Edge cases
  - None

Data Structures
- Input is an integer
- Initialize an empty array to append digits
- Convert input to a string to access each digit easily
- Convert chars (digits) back to int before appending into array
- Output is an array of integers

Algorithm
- Convert the given integer to a string.
- Split the string into an array of chars
- Map chars to a new array, converting each char to an int
- Return the resulting array

=end

def digit_list(num)
  result = num.to_s.split('').map { |digit| digit.to_i } # Could have used String#chars instead of String#split
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
puts digit_list(0) == [0]                     # => true
puts digit_list(10) == [1, 0]                 # => true
puts digit_list(10) == [1]                    # => false
puts digit_list(444) == [4]                   # => false
puts digit_list(444) == ['4', '4', '4']       # => false