=begin
Find the length of the longest substring in the given string that is the same in reverse.

Example:
longest_palindrome("I like racecars that go fast") == 7

If the length of the input string is 0, return value must be 0

'baabcd' == 4
'baabcd' no
'baabc' no
'baab' yes

"I like racecars that go fast"
'I..t' no
' ..t'
...
'r..r'


Problem:
- input: string
- output: integer
  - length of the longest substring that is a palindrome
- single characters count as a palindrome
- what if there is no palindrome?

1. Get substrings
  - get string length, len
  iterate through the characters in string with index
    - inner = len - index
    iterate stop times (inner.downto(1) do |stop|
      - subtring = slice(index, stop)
      - return substring.length if substring == substring.reverse


2. Check if substring is palindrome
  - string == string.reverse (true if palindrome, false if not)

=end

def longest_palindrome(str)
  return 0 if str.empty?
  len = str.length
  max_len = 0
  str.chars.each_with_index do |char, index|
    (len - index).downto(1) do |stop|
      substring = str.slice(index, stop)
      max_len = substring.length if substring == substring.reverse && substring.length > max_len
    end
  end
  max_len
end

puts longest_palindrome('') == 0
puts longest_palindrome('a') == 1
puts longest_palindrome('aa') == 2
puts longest_palindrome('baa') == 2
puts longest_palindrome('aab') == 2
puts longest_palindrome('baabcd') == 4
puts longest_palindrome('baab1kj12345432133d') == 9
puts longest_palindrome("I like racecars that go fast") == 7
