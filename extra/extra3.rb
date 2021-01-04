=begin
Write a method that will return all palindromes within a string.

'ppop' == ['pp', 'pop']
 0123 <<< indicies
 len = 4
 
pp
01
ppo
0.2
ppop
0..3

po
12
pop
1.3

op
23

Problem:
- input: string
- output: array of strings (palindrom substrings)
- palindrome is the same forwards and backwards
- single letters are not palindromes

Pt 1 - get substrings
  - iterate through starting indicies from 0 to string.length - 2 (string.length - 1.times)
    - inside, iterate through ending indices from start + 1 up to string.length - 1

pt 2 - check if substring is palindrome
  - substring.reverse == substring


Approach:
X initialize an empty array to store the `result`
X initialize a `len` variable to store the given string's length
X Loop string length - 1 times with a start parameter
  X loop from start + 1 up to string length - 1 with a stop parameter
    X slice a substring from the given string from start..stop
    - if the substring is a palindrome, append it to the result array
- return result array

=end


def palindromes(string)
  result = []
  len = string.length
  
  (len-1).times do |start|
    (start+1).upto(len-1) do |stop|
      substring = string.slice(start..stop)
      result << substring if substring.reverse == substring
    end
  end
  result
end

p palindromes('ppop') == ['pp', 'pop']
