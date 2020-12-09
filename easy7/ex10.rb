=begin
Write a method that returns the next to last word in the String passed to it as an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at least two words.

Examples:
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'



=end

### My initial solution:
# def penultimate(str)
#   str.split[-2]
# end

# Further Exploration
# Our solution ignored a couple of edge cases because we explicitly stated that
# you didn't have to handle them: strings that contain just one word, and
# strings that contain no words.

# Suppose we need a method that retrieves the middle word of a phrase/sentence.
# What edge cases need to be considered? How would you handle those edge cases
# without ignoring them? Write a method that returns the middle word of a phrase
# or sentence. It should handle all of the edge cases you thought of.

# Edge cases
# - Just one word (return the word)
# - Two words (return the first word)
# - Even number of words > 3 (return the last word from the first half i.e #3 of 6)


def penultimate(str)
end

# Test cases
p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'