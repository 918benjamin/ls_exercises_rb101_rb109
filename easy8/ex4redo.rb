=begin
Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the previous exercise:

Examples:
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]


Problem:
- input: 
- output:


=end

def leading_substrings(str, lead)
  result = []
  length = str[lead..-1].length
  1.upto(length) do |n|
    result << str.slice(lead, n)
  end
  result
end

def substrings(str)
  result = []
  str.chars.each_with_index do |_, index|
    result << leading_substrings(str, index)
  end
  result.flatten
end

# test cases
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]