=begin

*** PROBLEM ***
Write a method that takes one argument, a string, and returns a new
string with the words in reverse order.

Examples:
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

The tests above should print true.

*** PEDAC ***

Understand the Problem
- Input/Output
  - Input: string
  - Output: string
- Requirements (implicit/explicit)
  - Reverse the words, not the chars
  - Maintain case from input to output
  - Empty string input returns empty string output
  - Words are separated by a single space
- Questions / clarification
  - Should we expect punctuation? How do we handle that?
  - How should we handle words that are separated by mutiple spaces?
    - or other separation?
- Mental model
    - Split the given string into an array of words based on single
      spaces. Reverse the order of the words, then join them back together
      with spaces and return.

Examples / Test Cases
- Given
- Happy 
- Edge cases
- Failure / invalid

Data Structures
- Input: string
- Output: string
- Intermediate: array to hold words and perform reverse

Algorithm
- Split the given string into an array of words, based on single spaces.
- Reverse the order of the words in the array.
- Join the elements into a string separated by single spaces
- Return the resulting string

=end

def reverse_sentence(str)
  str.split.reverse.join(' ')
end

# Test Cases

# True
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

# False
puts reverse_sentence('Hello World') == 'world hello'
puts reverse_sentence('Hello World') == 'Hello World'
