=begin
Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

Examples
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


Problem:
- input: string
- output: new string (capitalization changed)
  - first char in every word capitalized, all others lowercased
- word is sequence of non-blank characters (separated by spaces)

Approach:
- Split the string into an array of words
- iterate through the array of words, transforming them (map) For each word:
  - capitalize the word
- return the joined array of words
=end

def word_cap(str)
  words = str.split(' ')
  words.map! do |word|
    word.capitalize
  end
  words.join(' ')
end



# Test cases
p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
# 's' in 'javaScript' is lowercased.
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
# 'q' in 4th word 'quoted' is not capitalized because " is the first character


### Further exploration
# We could capitalize each word by iterating through the characters in each word
# with the index. if the index is 0, we upcase the character.
# Another approach is to use the ordinal value of each character. If the ordinal value
# shows that the character is lowercased (or if the character compared with itself
# uppercased returns true) and the character is alphabetic, then we subtract 32
# from the current ordinal value and return the character at that ordinal value
# (which will be the current character, uppercased).