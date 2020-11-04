=begin
Modify the word_sizes method from the previous exercise to exclude non-letters
when determining word size. For instance, the length of "it's" is 3, not 4.

Examples:
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

=end

ALPHA = ('a'..'z').to_a

def word_sizes(str)
  result = Hash.new(0)
  str.split.each do |word|
    word_copy = word.dup
    word.each_char do |char|
      word_copy.delete!(char) unless ALPHA.include?(char.downcase)
    end
    result[word_copy.size] += 1
  end
  result
end


# Test cases
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}