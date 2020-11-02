=begin
The String#to_i method converts a string of numeric characters (including an
optional plus or minus sign) to an Integer. String#to_i and the Integer 
constructor (Integer()) behave similarly. In this exercise, you will create a
method that does the same thing.

Write a method that takes a String of digits, and returns the appropriate
number as an integer. You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs, nor should you worry about
invalid characters; assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby, such
as String#to_i, Integer(), etc. Your method should do this the old-fashioned
way and calculate the result by analyzing the characters in the string.

Examples:

string_to_integer('4321') == 4321
string_to_integer('570') == 570

Understand the Problem:
- input: string (of digits, all valid)
- output: integer (with the same digits as the string)

Req's
- Cannot use to_i method or integer constructor Integer()
- Only positive numbers given without sign (-, +)
- Only valid number strings given
- Analyze the characters in the string

Data structures
- input: string
- output: integer
- Intermediate: Array to store the individual chars (digits) in order

Algorithm
- Create an empty list `arr`
- Create a variable to store the length of the given string minus 1, `places`
- Loop through each character in the given string, `str`
  - Create and set a variable `digit` to the ordinal of that character minus 48 to `arr`
  - Multiply `digit` by 10^`places`
  - Add the result of that calculation to `arr`
  - Subtract 1 from places
- Create a variable for the result and set it to the integer 1
- Loop through each integer in `arr`
  - Add the integer to the result

=end

def string_to_integer(str)
  result = 0
  places = str.length - 1
  
  str.chars.each do |char|
    digit = (char.ord - 48) * 10**places
    places -= 1
    result += digit
  end
  result
end

# Test cases
# p string_to_integer('4321') == 4321
# p string_to_integer('570') == 570

# Further exploration
# Write a hexadecimal_to_integer method that converts a string representing a
# hexadecimal number to its integer value.

# Used the given solution as a base for this further exploration, to get some
# familiarity with this way of solving the problem.

HEX_DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
  '7' => 7, '8' => 8, '9' => 9, 'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13,
  'E' => 14, 'F' => 15
}

def hexadecimal_to_integer(string)
  digits = string.chars.map { |char| HEX_DIGITS[char.upcase] }

  value = 0
  digits.each { |digit| value = 16 * value + digit }
  value
end

p hexadecimal_to_integer('4D9f') == 19871



