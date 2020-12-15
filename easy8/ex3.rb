=begin
Write a method that returns a list of all substrings of a string that start at
the beginning of the original string. The return value should be arranged in 
order from shortest to longest substring.

Examples:
leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

Problem:
- input: string
- output: array (of substrings)
- substrings that start with the first letter
- substring order is smallest to greatest

Approaches:
- Slice

=end

def leading_substrings(str)
  sub_strs = []
  1.upto(str.length) do |x|
    sub_strs << str[0, x]
  end
  sub_strs
end

# Test cases
p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']