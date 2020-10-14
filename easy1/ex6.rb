=begin

*** PROBLEM ***
Write a method that takes one argument, a string containing one or more
words, and returns the given string with words that contain five or more
characters reversed. Each string will consist of only letters and spaces.
Spaces should be included only when more than one word is present.

Examples:
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS


*** PEDAC ***

Understand the Problem
- Input/Output
  - input: string (of one or more words)
  - output: string (words with chars > 5 reversed)

- Requirements (implicit/explicit)
  - Words 5 or more chars should be reversed
  - Words with 4 or less chars should not be reversed
  - Chars are reversed within each word, but the words remain in the same order
  - Spaces are included only to separate multiple words
  - Case is preserved

- Questions / clarification

- Mental model
  - Split the string into words based on single spaces. Iterate through 
    on each word and if the length of a word is >= 5, then iterate through
    that word to reverse all the chars.

Examples / Test cases
- Given
- Happy paths
- Edge cases
- Failures / bad inputs

Data structures
- Input: string
- Output: string
- Intermediates: array of words

Algorithm
- Split the string into words based on single spaces.
- Loop through each word
  - If the word is >= 5, reverse the word
    - initialize an empty array reversed_word to hold the new word
    - iterate through each char in the word
      - prepend that char to the reversed_word array
    - Index reassign the original word in the sentence arraw with the new reversed word
  - else do nothing
- Join the words together
- return the new string

=end

def reverse_words(str)
  words = str.split.each do |word|
    word.reverse! if word.length >= 5
  end
  words.join(' ')
end


# Test Cases
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

