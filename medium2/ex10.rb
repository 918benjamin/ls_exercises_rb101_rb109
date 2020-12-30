=begin
Write a method that computes the difference between the square of the sum of
the first n positive integers and the sum of the squares of the first n
positive integers.

Examples:
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

PROBLEM:
- input: integer
- output: integer (difference between square of sums and sum of squares)
  - square of sums - sum of squares
- square of sums = 1..n summed, squared (**2)
- sum of squares == 1**2..n**2

Algorithm:
- Initialize square_of_sums to the return value of
  - (1..n).inject(:+)**2
- Initialize sum_of_squares to the return value of
  - (1..n).inject(0) {|memo, int| memo += int**2 }
- return square_of_sums minus sum_of_squares

=end

def sum_square_difference(n)
  square_of_sums = (1..n).inject(:+)**2
  sum_of_squares = (1..n).inject(0) { |memo, num| memo += num**2 }
  square_of_sums - sum_of_squares
end

# Test cases
p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150