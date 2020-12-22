=begin
36. Delete a Digit
(https://www.codewars.com/kata/5894318275f2c75695000146/train/ruby)
6 kyu
Task
Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.

Example
For n = 152, the output should be 52;

For n = 1001, the output should be 101. (110)
[001, 101, 101, 100]
[101, ...]

"1001"[0]

Input/Output
[input] integer n

Constraints: 10 ≤ n ≤ 1_000_000.
# Code wars worry about efficiency

[output] an integer

Approach:
- Put all possible deletion integers in an array and sort to find the largest

input: integer (n)
out: integer (n with one digit removed, the highest possible version)

Algorithm:
- Initialize an empty array, sub_ints
- Convert the given integer to a string, n_str
- Initialize a length variable to the length of the string - 1
- Iterate length times (block parameter for the current number from 0 up to n_str - 1)
  - Remove a digit from n_str at current index
  - place the remaining string (converted to an integer) into sub_ints
- return the maximum integer from sub_ints

Notes:
- Refactor algorithm as I make changes, especially after testing in irb
- Speak out loud what I expect to happen when testing so it's clear

=end

def delete_digit(n)
  sub_ints = []
  n_str = n.to_s
  length = n_str.length
  
  length.times do |index|
    chars = n_str.chars
    chars.delete_at(index)
    sub_ints << chars.join.to_i
  end
  sub_ints.max
end


p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1
p delete_digit(1000000) == 100000