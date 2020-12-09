=begin
Write a method that takes a single String argument and returns a new string
that contains the original value of the argument with the first character of
every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

Examples:
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

Problem:
- Input: String
- Output: New String
- 

=end

### My initial solution
# def word_cap(str)
#   new_str = str.split
#   new_str.map! do |word|
#     word.downcase.capitalize
#   end
#   new_str.join(' ')
# end


### Further Exploration:
# Ruby conveniently provides the String#capitalize method to capitalize strings.
# Without that method, how would you solve this problem? Try to come up with at
# least two solutions.

### Option 1:
# def word_cap(str)
#   new_str = str.split
#   new_str.map! do |word|
#     word.downcase!
#     word[0] = (word[0].ord - 32).chr if word[0].ord.between?(97, 122)
#     word
#   end
#   new_str.join(' ')
# end


### Option 2:
def word_cap(str)
  new_str = str.split
  new_str.map! do |word|
    word.downcase.chars.each_with_index do |char, index|
      char.upcase! if index == 0
    end.join
  end
  new_str.join(' ')
end

# Test cases
p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'