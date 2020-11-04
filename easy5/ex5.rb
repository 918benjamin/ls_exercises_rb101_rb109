=begin
Given a string that consists of some words (all lowercased) and an assortment
of non-alphabetic characters, write a method that returns that string with all
of the non-alphabetic characters replaced by spaces. If one or more
non-alphabetic characters occur in a row, you should only have one space in the
result (the result should never have consecutive spaces).

Examples:
cleanup("---what's my +*& line?") == ' what s my line '

Understand:
- input: string (lowercase with some symbols)
- output: string (symbols replaced by spaces, only one space per and no repeats)
- Only one space per set of symbols

Algorithm
- Create a constant ALPHABET to store a to z
- Create an empty string, result
- Look at each character in str along with the index
  - if that character is in ALPHABET
    - append it to the string
  - else if the character at the previous index not a space
    - append a space to the string
- return the result

=end

ALPHABET = [*'a'..'z']

def cleanup(str)
  result = ''
  str.chars.each_with_index do |char, index|
    if ALPHABET.include?(char)
      result << char
    elsif result[-1] != ' '
      result << ' '
    end
  end
  result
end


# Test cases
p cleanup("---what's my +*& line?") == ' what s my line '