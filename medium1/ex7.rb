=begin
Write a method that takes a sentence string as input, and returns the same
string with any sequence of the words 'zero', 'one', 'two', 'three', 'four',
'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

Example:
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

PROBLEM:
- input: string (includes word version of digit strings)
- output: string (replace word versions with digit versions still in sring form)
- convert 'zero' to 0
- can align each string to it's index in an array, then find element's index and place that in the resulting string
- Probably simpler to just initialize a hash with string:int pair
- Test case points to an issue with my simple plan to check words in the hash:
  - If the word ends with a period, then I need to account for that

Algorithm:
- Initialize a hash constant with string:integer pairs (i.e. 'zero' => 0)

- Split the string into an array of words (based on spaces)
- Iterate through the words array and return a transformed array. For each word,
  - set suffix to the return of punctuation(word) helper method
  - return the value if a hash value exists for that word
  - otherwise, return the current word itself + suffix
- join the words array back together into a string with spaces

helper punctuation(word)
- split the word into an array of characters
- if the last character is not alphabetic ([*'a'..'z'].include?(last_character.downcase))
  - return the the last character
- if it is alphabetic, return empty string

=end

DIGITS = { 'zero' => 0, 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4,
           'five' => 5, 'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9}

def punctuation(word)
  [*'a'..'z'].include?(word.chars[-1].downcase) ? '' : word.chars[-1]
end

def word_to_digit(str)
  words = str.split
  words.map! do |word|
    suffix = punctuation(word)
    max_slice = word.length - 1
    if DIGITS[word]
      DIGITS[word].to_s
    elsif DIGITS[word[0, max_slice]]
      DIGITS[word[0, max_slice]].to_s + suffix
    else
      word
    end
  end
  words.join(' ')
end


# Test cases
p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
p word_to_digit('four.') == '4.'