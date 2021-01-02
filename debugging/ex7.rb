# We wrote a neutralize method that removes negative words from sentences.
# However, it fails to remove all of them. What exactly happens?

# The problem is that on line 4 (original, line 12 below) we are mutating the words
# array while iterating through it with each, which causes issues.
# Fixed it by selecting the elements that don't return a negative word.

### Original
# def neutralize(sentence)
#   words = sentence.split(' ')
#   words.each do |word|
#     words.delete(word) if negative?(word)
#   end

#   words.join(' ')
# end

# def negative?(word)
#   [ 'dull',
#     'boring',
#     'annoying',
#     'chaotic'
#   ].include?(word)
# end

# puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.


### Debugging
def neutralize(sentence)
  words = sentence.split(' ')
  words.select! do |word|
    !negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
