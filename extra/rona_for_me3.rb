=begin
***23. Longest alphabetical substring
(https://www.codewars.com/kata/5a7f58c00025e917f30000f1)
6 kyu
Find the longest substring in alphabetical order.

Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".

There are tests with strings up to 10 000 characters long so your code will need to be efficient.

The input will only consist of lowercase characters and will be at least one letter long.

If there are multiple solutions, return the one that appears first.

Problem:
- input: string
- output: string (longest alphabetical substring)
- Efficient
- only lowercase
- at least 1 char in input
- return first solution if multiple options

- Get all the substrings
  - just create substrings that are alphabetical

- NOT permutations

- Checking if the sub-str is alphabetical
  - iterate through the sub-str check each char
    - if the current char <= char[index + 1]
    - if I do this, don't check the last character (guard clause within block/iteration)
        - break the loop if index = length - 1
- compare string.chars.sort == string.chars
  - true = alphabetical, false = not
    
- longest_str = ''
- str_len = str.length
- str_len.times do |index|
  - slice_len = str_length
  - slice_len.times do |num|
                                                            - slice_len -= num
    - slice the given string from index, slice_len)
    - check if alphabetical. if so
      - check if the current string.length > longest_str.length
        - if so, set longest_str to current substr
    - decrement slice_len by 1
    
- return longest_str

=end

def longest(str)
  longest_str = ''
  str_len = str.length
  str_len.times do |index|
    slice_len = str_len - index
    slice_len.times do |_|
      substr = str.slice(index, slice_len)
      if substr.chars.sort == substr.chars && substr.length > longest_str.length
        longest_str = substr
      end
      slice_len -= 1
    end
  end
  longest_str
end

def longest(string)
  substrs = string.chars.slice_when {|a, b| a > b}.to_a
  longest_sub = ""
  substrs.each do |substr|
    longest_sub = substr if substr.length > longest_sub.length 
  end
  longest_sub.join
end

'abcdeapbcdef'
'abcdeapbcdef'


def longest(string)
  substrs = string.chars.slice_when {|a, b| a > b}.to_a
  substrs.max_by { |substring| substring.length }.join
end

slice_when, each_cons, each_slice


# p longest('asd') == 'as'
# p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
# p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') =='fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'

p "abcdefghijklmnopqrstuvwxyz".count("a-z")
