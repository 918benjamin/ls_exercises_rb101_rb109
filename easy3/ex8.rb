=begin
Write a method that returns true if the string passed as an argument is a
palindrome, false otherwise. A palindrome reads the same forward and backward.
For this exercise, case matters as does punctuation and spaces.

Examples:

palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true

Understand the Problem
- Input: string
- Output: boolean
- Case, punctuation, and spaces all matter
- palindrome is the exact same characters forwards and backwards
- characters can be numbers too
- Write a method

Questions:
- What if the given string is empty?
- Do I need to validate input is a string?
-


=end

def palindrome?(str)
  str == str.reverse
end

# Test cases
# p palindrome?('madam') == true
# p palindrome?('Madam') == false          # (case matters)
# p palindrome?("madam i'm adam") == false # (all characters matter)
# p palindrome?('356653') == true


=begin
Further Exploration
Write a method that determines whether an array is palindromic; that is,
the element values appear in the same sequence both forwards and backwards
in the array. Now write a method that determines whether an array or a
string is palindromic; that is, write a method that can take either an array
or a string argument, and determines whether that argument is a palindrome.
You may not use an if, unless, or case statement or modifier.


=end

def arr_palindrome?(arr)
  arr == arr.reverse
end


# Test cases
p palindrome?([1, 2, 3, 3, 2, 1]) == true 
p palindrome?(['a', 'b', 'c']) == false
p palindrome?(['m', 'a', 'd', 'a', 'm']) == true 