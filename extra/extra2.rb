=begin
Write a method that finds all substrings in a string, no 1 letter words.

"band" == ['ba', 'ban', 'band', 'an', 'and', 'nd']
 0123 <<< indicies
 length = 4

'ba'
 01
'ban'
 0 2
'band'
 0  3

'an'
 12
'and'
 1 3
 
'nd'
 23

starting index goes from 0 to length - 2
(len-2).times do |start|

stop index goes from 1 up to length - 1
(start + 1).upto(len-1) do |stop|

"world" == ['wo', 'wor', 'worl', 'world', 'or', 'orl', 'orld', 'rl', 'rld', 'ld']
"ppop" == ['pp', 'ppo', 'ppop', 'po', 'pop', 'op']

Problem:
- input: string
- output: array of strings (substrings)
  - substrings must be greater than 1 letter (2 or more characters)
  - substrings must be consecutive characters (no permutations, just left to right)
- 

=end

def substrings(string)
  result = []
  len = string.length
  
  (len-1).times do |start|
    (start + 1).upto(len-1) do |stop|
      result << string.slice(start..stop)
    end
  end
  result
end


# test cases
p substrings("band") == ['ba', 'ban', 'band', 'an', 'and', 'nd']
p substrings("world") == ['wo', 'wor', 'worl', 'world', 'or', 'orl', 'orld', 'rl', 'rld', 'ld']
p substrings("ppop") == ['pp', 'ppo', 'ppop', 'po', 'pop', 'op']
