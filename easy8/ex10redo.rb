=begin

Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

Examples:
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'


Problem:
- input: string
  - won't be empty, will be valid
- output: string (1 or 2 chars)
  - OK to mutate the given argument?
  - 1 middle character if str.length.odd?

Approach:
- Create a variable len to store the length of the string
- if len is odd
  - return the character at str[len/2]
- otherwise
  - return the characters at str[len/2 - 1, 2]

=end

def center_of(str)
  len = str.length
  if len.odd?
    str[len/2]
  else
    str[len / 2 - 1, 2]
  end
end

# test cases
p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'