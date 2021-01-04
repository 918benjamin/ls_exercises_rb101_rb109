=begin
Write a method that will return a substring based on specified indices.

"honey", 0, 2 == "hon"
 01234 <<< indicies

start = 0
stop = 2
h..n = hon

"honey", 1, 2 == "on"
start = 1, stop = 2
on

"honey", 3, 9 == "ey"
start = 3, stop = 9
e..y ey

"honey", 2 == "n"
n

Problem:
- input: string, integer (start), integer (end)
- output: string (substring/slice)
- note: slicing beyond the bounds of a string doesn't throw an error, just returns slice to end of string 
- implicit: default value for stop argument is 1

Approach:
- Slice the given string starting at start arg index ending at stop arg index
- set stop default equal to start to account for single argument test case

=end

def substring(string, start, stop=start)
  string.slice(start..stop)
end

p substring("honey", 0, 2) == "hon"
p substring("honey", 1, 2) == "on"
p substring("honey", 3, 9) == "ey"
p substring("honey", 2) == "n"
