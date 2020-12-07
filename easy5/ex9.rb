=begin
Write a method that takes a string argument and returns a new string that
contains the value of the original string with all consecutive duplicate
characters collapsed into a single character. You may not use String#squeeze
or String#squeeze!.

Problem:
- Input: string
- Output: new string
- new string removes duplicate characters
- blank string returns blank string
- single character returns single character

Algorithm:
- Create a `result` empty string
- Look at each letter in the string
  - str.chars.each_with_index
  - If the current index is 0, put that char in result
  - Otherwise, check if the current char is the same as the previous char
      - If so, go to the next iteration
      - otherwise, put the current char in result
- return the result


=end

### My solution:

# def crunch(str)
#   result = ""

#   str.chars.each_with_index do |char, index|
#     if index == 0
#       result << char
#     elsif char != result[-1]
#       result << char
#     end
#   end

#   result
# end

### LS Solution: 
def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  p crunch_text
end

### Further Exploration

# You may have noticed that we continue iterating until index points past the end
# of the string. As a result, on the last iteration text[index] is the last
# character in text, while text[index + 1] is nil. Why do we do this?
# What happens if we stop iterating when index is equal to text.length?

# This was done because `unless` was used, so this will allow the last character
# to be inluded. Iterating only to the end of the string will not include the
# last letter in most cases.

# Can you determine why we didn't use String#each_char or String#chars to 
# iterate through the string? How would you update this method to use
# String#each_char or String#chars?

# Not yet...



# Test cases
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''