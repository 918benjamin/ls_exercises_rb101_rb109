=begin

Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

Examples:
leading_substrings('abc') == ['a', 'ab', 'abc']
abc
a - index 0
ab - index 0-1
abc - index 0-2

leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']


Problem:
- input: string
- output: array of strings (substrings from input)
- need to account for empty or invalid input?
- substrings all start from first character
- substrings need to be returned in order from shortest to longest

Approach:
- Iterate through the number of times that there are characters
- On each iteration, append a slice to an initially empty result array
- each slice should be from index 0, n+1 times
- return the result

=end

def leading_substrings(str)
  result = []
  str.length.times do |n|
    result << str.slice(0, n+1)
  end
  result
end

# test cases
p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']