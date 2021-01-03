=begin
Given a non-empty string, check if it can be constructed by taking a substring of it and appending multiple copies of the substring together. You may assume the given string consists of lowercase English letters only.

Example 1:
 - Input "abab"
 - Output: True
 - Explanation: It's the substring 'ab' twice.

Example 2:
 - Input: "aba"
 - Output: False
 
 
p repeated_substring('abab') == true
'ab' substring repeated twice is 'abab'
p repeated_substring('aba') == false
'ab' can't be repeated and neither can 'a'
p repeated_substring('aabaaba') == false
'aa' no, 'aab', no' aaba', no
p repeated_substring('abaababaab') == true
'abaab' can be repeated
p repeated_substring('abcabcabcabc') == true
'abc' is repeated 4 times total or 'abcabc' repeated twice
p repeated_substring('aaaaa') == true
'a' is repeated 5 times

- Do single letter substrings count? Must from last example
- Only have to check substrings from index 0 to index length / 2

Problem:
- input: String (non empty)
- output: boolean
  - true if a substring can be repeated to make the string
  - false if not
- input is lowercase english letters only

Get substrings from index 0 up to index length / 2
  - Iterate from 1 up to (word.length / 2). On each iteration
    - slice the given word from index 0 up to the current number from times
  
    - Check if the substring can be repeated to make the word
      - Get the length of the word, len
      - Divide the word length by the substring length to get the multiplier
      - multiply the multiplier by the substring and compare with the word.
        if equivalent, return true.
        otherwise, continue checking substrings
  - if no substring returns true, return false
 
=end

def repeated_substring(string)
  len = string.length
  half = len / 2
  1.upto(half) do |num|
    substr = string.slice(0, num)
    multiplier = len / substr.length
    return true if string == substr * multiplier
  end
  false
end

p repeated_substring('abab') == true
p repeated_substring('aba') == false
p repeated_substring('aabaaba') == false
p repeated_substring('abaababaab') == true
p repeated_substring('abcabcabcabc') == true
p repeated_substring('aaaaa') == true