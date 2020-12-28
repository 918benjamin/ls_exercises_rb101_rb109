https://www.codewars.com/kata/52f78966747862fc9a0009ae/train/ruby
=begin
Your job is to create a calculator which evaluates expressions in Reverse Polish notation.
https://en.wikipedia.org/wiki/Reverse_Polish_notation

For example expression 5 1 2 + 4 * + 3 - (which is equivalent to 5 + ((1 + 2) * 4) - 3 in normal notation) should evaluate to 14.

For your convenience, the input is formatted such that a space is provided between every token.

Empty expression should evaluate to 0.

Valid operations are +, -, *, /.

You may assume that there won't be exceptional situations (like stack underflow or division by zero).

Examples:
calc("") == 0 # Should work with empty string
calc("3") == 3 # Should parse numbers
calc("3.5") == 3.5 # Should parse float numbers
calc("1 3 +") == 4 # Should support addition
calc("1 3 *") == 3 # Should support multiplication
calc("1 3 -") == -2 # Should support subtraction
calc("4 2 /") == 2 # Should support division
calc("5 1 2 + 4 * + 3 -") == 14


=end