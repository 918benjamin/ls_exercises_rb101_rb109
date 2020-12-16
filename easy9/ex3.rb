=begin
Write a method that takes a number as an argument. If the argument is a
positive number, return the negative of that number. If the number is 0 or
negative, return the original number.

Examples:
negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

Problem:
- input: integer
- output: integer
  - if input is >= 1 return negative input
  - else, return input



=end

### My solution
# def negative(int)
#   return int if int <= 0
#   int - int * 2
# end

### LS solution w/ Ternary
# def negative(int)
#   int > 0 ? -int : int
# end

### LS Solution from Further exploration
def negative(number)
  -number.abs
end

# This solution is shorter but may not be "superior" because it doesn't make
# clear the intention to keep negative numbers negative and only change
# positive numbers. It does accomplish this technically, but it doesn't maintain
# the intent explicitely which could cause issues further on.

# Test cases
p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby