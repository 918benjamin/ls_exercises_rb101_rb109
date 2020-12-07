=begin
Write a method that takes an array of strings, and returns an array of the same
string values, except with the vowels (a, e, i, o, u) removed.

Problem:
- Input: Array (of strings)
- Output: new Array (of strings)
  - vowels removed from each string
- Vowels are (a, e, i, o, u)


Algorithm:
['hi', 'hello', 'abc']
- Create an empty Array for the result, `result`
- Iterate through the given Array of Strings. For each String:
  - Get an Array of all the characters
  - Iterate through the chars array. For each char
    - remove the char if it is a vowel (downcased to check)
    - join the remaining chars back together
  - put the new string into the `result` Array

=end
VOWELS = %w(a e i o u)

def remove_vowels(arr)
  arr.map do |word|
    word.chars.select do |char|
      !VOWELS.include?(char.downcase)
    end.join
  end
end



# Test cases
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']