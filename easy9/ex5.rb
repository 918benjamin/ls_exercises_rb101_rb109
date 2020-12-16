=begin
Write a method that takes a string argument, and returns true if all of the
alphabetic characters inside the string are uppercase, false otherwise.
Characters that are not alphabetic should be ignored.

Examples:
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

Problem
- input: string
- output: boolean
  - true if all alphabetic chars in input are uppercase
  - false if any alphabetic char in input is lowercase
- ignore non-alphabetic chars

Algorithm:
- set a result variable to false
- iterate through each character
  - if the character is alphabetic and uppercase, change result to true
- return result

=end

### My solution
# def uppercase?(str)
#   result = []
#   str.each_char do |char|
#     if char.match(/[a-z]/i)
#       if char.match(/[A-Z]/) 
#         result << true
#       else
#         result << false
#       end
#     end
#   end
#   result.all? { |bool| bool }
# end

### LS Solution
def uppercase?(string)
  string == string.upcase
end

# Test cases
p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true