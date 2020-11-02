=begin
Write a method that determines and returns the ASCII string value of a string
that is passed in as an argument. The ASCII string value is the sum of the
ASCII values of every character in the string.
(You may use String#ord to determine the ASCII value of a character.)

Examples:
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

Understand:
- input: string
- output: integer (ASCII string value)
- ASCII string value = sum of the ASCII values of every character in the string
  - Unser String#ord to get the ASCII value
- Remember: ASCII values are different for upper and lowercase letters and other
  characters
- Remember: If the given string is empty, immediately return the result

Algorithm
- Create a new local variable 'ascii_str_value' and set it to 0
- if given string 'str' is blank (== '')
  - return 'ascii_str_value' (which is 0)
- Otherwise, split  'str' into characters (.chars)
- Iterate through each character
  - add the ascii value of that character to 'ascii_str_value'
- return 'ascii_str_value'

=end

def ascii_value(str)
  ascii_str_value = 0
  # return ascii_str_value if str == ''

  str.chars.each { |char| ascii_str_value += char.ord }
  ascii_str_value
end

# Test cases
p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# From solution:
# I didn't need to check if the string was blank, because .chars was a valid
# method call in '' and each is a valid method for [] (return of ''.chars).
# It just never adds anything to ascii_str_value

# Further exploration
# Integer#chr is the mystery method
# If we call ord on a larger string, it only returns the ascii number of the
# first character. So 'abc'.ord.chr => returns 'a'