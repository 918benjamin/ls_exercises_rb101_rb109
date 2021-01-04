=begin
Write a function scramble(str1, str2) that returns true if a portion of str1 characters can be rearranged to match str2, otherwise, return false.

Basically, does str1 contain all of the characters in str2
  - watch out for duplicates, need to contain the exact characters including duplicates

p scramble('javaass', 'jjss') == false
=> missing one 'j'
p scramble('rkqodlw', 'world') == true
world +
p scramble('cedewaraaossoqqyt', 'codewars') == true
codewars +
p scramble('katas', 'steak') == false
ste missing e
p scramble('scriptjava', 'javascript') == true
yep
p scramble('scriptingjava', 'javascript') == true
yep

Problem:
- input: two strings
- output: boolena
  - true if first string contains letters to recreate second string
  - false if not
- need to worry about validating the input?

Approach:
- duplicate the first word (to avoid mutating the inputs)
- iterate through the characters in the second word. For each character
  - if the first word contains the current character, remove it
  - if not, return false
- return true

=end

def scramble(word1, word2)
  word1 = word1.dup
  word2.each_char do |char|
    if word1.include?(char)
      word1.sub!(char, '')
    else
      return false
    end
  end
  true
end

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true
