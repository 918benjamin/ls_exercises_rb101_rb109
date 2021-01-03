=begin
Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number.

Examples:

negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

Problem:
 - input: integer
 - output: integer
  - if input is positive, return negative input
  - if input is negative or 0, return input

=end

def negative(int)
  int > 0 ? -int : int
end

# test cases
p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby