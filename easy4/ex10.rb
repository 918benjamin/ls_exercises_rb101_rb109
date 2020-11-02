=begin

In the previous exercise, you developed a method that converts non-negative
numbers to strings. In this exercise, you're going to extend that method by
adding the ability to represent negative numbers as well.

Write a method that takes an integer, and converts it to a string
representation.

You may not use any of the standard conversion methods available in Ruby, such
as Integer#to_s, String(), Kernel#format, etc. You may, however, use
integer_to_string from the previous exercise.

Examples
signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'

Algorithm
- set sign = ''
- Check the given int's sign
  - if positive (> 0) then sign = '+'
  - If negative (< 0) then int += -(int * 2) and sign = '-'
  - if 0 then do nothing
- Return the result of calling integer_to_string(int, sign)

=end

def integer_to_string(int, sign)
  int.digits.reverse.join('').prepend(sign)
end

def signed_integer_to_string(int)
  sign = ''
  
  if int > 0
    sign = '+'
  elsif int < 0
    sign = '-'
    int += -(int * 2)
  end

  integer_to_string(int, sign)
end


# Test cases
p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
