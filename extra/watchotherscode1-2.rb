=begin
Given an array of strings made only from lowercase letters, return an array of all characters that show up in all strings within the given array (including duplicates). For example, if a character occurs 3 times in all strings but not 4 times, you need to include that character three times in the final answer.

p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
['bella', 'label', 'roller']
b -
e +
l +
l +
a -


p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
c +
o +
o -
l -

p common_chars(['aabbaa', 'cccdddd', 'eeffee', 'ggrrrr']) == []
a -
a -
b -
b -
a -
a -

Problem:
- input: array of strings
  - all lowercase letters
- output: return array of characters
  - characters that show up in all strings
  - include duplicates
- Ok to mutate the given array?

Approach:
- words_arr = arr.map {|word| word.dup}
words_arr = ['bella', 'label', 'roller'

- initialize an empty array, result
result = []
- Shift off the first word from words_arr and store it in a variable word
word = 'bella'
words_arr = ['label', 'roller']
result = []

- Iterate through the characters in the first word. For each character
  - iterate through the remaining words in words_arr. for each word
    - check if the character is in all the words
    words_arr.all? {|word| word.include?('l') }
  - If so, append the current char to result
  - remove the current letter from each word
  words_arr.map {|word| word.sub!(char, '')}

- return result

=end

def common_chars(arr)
  words_arr = arr.map{ |word| word.dup }
  result = []
  words_arr.shift.each_char do |char|
    result << char if words_arr.all? { |word| word.include?(char) }
    words_arr.map {|word| word.sub!(char, '')}
  end
    result
end

p common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
p common_chars(['aabbaa', 'cccdddd', 'eeffee', 'ggrrrr']) == []
