=begin
In the previous two exercises, you developed methods that convert simple
numeric strings to signed Integers. In this exercise and the next, you're
going to reverse those methods.

Write a method that takes a positive integer or zero, and converts it to a
string representation.

You may not use any of the standard conversion methods available in Ruby, such
as Integer#to_s, String(), Kernel#format, etc. Your method should do this the
old-fashioned way and construct the string by analyzing and manipulating
the number.

Examples:
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

Understand the problem:
- input: integer (positive or 0)
- output: string (string representation of the given integer)
- Write a method
- Method takes one argument, integer

Algorithm
- Create a constant that maps integer keys to their equivalent string values
- Split the given integer into a list of digits (.digits.reverse)
- Iterate through the list of digits mapping each digit to it's string
- Join the list
- Return the resulting string

=end

DIGITS = {
  0 => '0', 1 => "1", 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6',
  7 => '7', 8 => '8', 9 => '9'
}

# My solution
# def integer_to_string(int)
#   int.digits.reverse.map { |digit| DIGITS[digit] }.join
# end

# Student solution from Jonathan Heywood
# Made me realize that Array#join is using .to_s on the elements
def integer_to_string(int)
  int.digits.reverse.join('')
end 

# Test cases
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
p integer_to_string(9999999999999998) == '9999999999999998'
p integer_to_string(9999999999999999) == '9999999999999999'
p integer_to_string(10000000000000000) == '10000000000000000'