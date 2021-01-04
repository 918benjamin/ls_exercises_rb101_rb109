=begin
take a string as an argument, return the string in reverse order without using the built-in reverse method.

reverse_string("abcde") == "edcba"
reverse_string(" ") == " "
reverse_string("football") == "llabtoof"

Problem: 
- input: string
- output: string (reversed)
- do not use String#reverse method
- reverse in place (mutate argument) or return a new string? or does it matter?
- assuming we should mutate the argument

Approach:
- Store the characters of the given string in an array, in order
- remove all the characters from string
- pop characters off the array one by one and append them into string
- return string

Algorithm/Pseudocode:
X Initialize a local variable `chars` to an array of the characters in the string
X destructively remove all characters from the string
  X iterate through removing them one by one OR remove them all at once
current: array of characters and the given string object (empty)

- iterate through the characters
  - since popping them off will mutate the array as we iterate, loop chars.length times
  - remove the last array element and append it to the given string object
- return the given string object

=end

def reverse_string(string)
  chars = string.chars
  string.delete!(string)

  chars.length.times do |_|
    string << chars.pop
  end
  string
end


# test cases
p reverse_string("abcde") == "edcba"
p reverse_string(" ") == " "
p reverse_string("football") == "llabtoof"
