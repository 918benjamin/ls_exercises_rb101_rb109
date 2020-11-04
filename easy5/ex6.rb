=begin
Write a method that takes a string with one or more space separated words and
returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

Examples:
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

Understand:
- Input: string (of words separated by one or more spaces)
- output: hash
  - format: key (word length) => value (number of words)
- Spaces do not count towards any word length
- Multiple spaces or one space, doesn't matter. Spaces separate a word
  (split method takes care of this for us)
- The hash order is the same as the word order 

Algorithm
- Create an empty hash, result
- Split the string into a list of words (split method)
- Loop through each word
  - If the hash contains a key the length of that word
    - add one to that value
  - otherwise, set the hash value length of word to 1
- return the hash result

=end

def word_sizes(str)
  result = {}
  str.split.each do |word|
    if result.include?(word.size)
      result[word.size] += 1
    else
      result[word.size] = 1
    end
  end
  result
end


# Test cases
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

# Solution discussion
# The solution uses the Hash.new(default) syntax to avoid the if/else
# statement I've included. Reading up on Hash::new now for more context.