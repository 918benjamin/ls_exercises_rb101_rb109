=begin
Given a string of words separated by spaces, write a method that takes this
string of words and returns a string in which the first and last letters of
every word are swapped.

You may assume that every word contains at least one letter, and that the
string will always contain at least one word. You may also assume that each
string contains nothing but words and spaces

Examples:
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

Understand:
- input: string (of words, separated by spaces)
- output string (same words, in each word swap the first and last letter
- Given string is only words and spaces
- reminder: access first letter with workd[0] and last letter with word[-1]
- Write a method
- Need to access each individual word (split ito an array of words)
- Loop through each word in the array
- Join back 

Algorithm
- Split the string into an list of words
- For each word
  - Store the first character in a variable first
  - Store the last character in a variable last
  - Replace the first letter with last, and the last letter with first
- Join the words back and return that

=end

# def swap(str)
#   str.split.each do |word|
#     first = word[0]
#     last = word[-1]
#     word[0] = last
#     word[-1] = first
#   end.join(' ')
# end


# Test cases
# p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') == 'ebcdA'
# p swap('a') == 'a'


# Further exploration
# Changing the return value of the helper method swap_first_last_characters
# to return the swapped characters would not work for the required solution.
# Since map is called on the array of words, result would end up with nested
# arrays of characters rather than words
