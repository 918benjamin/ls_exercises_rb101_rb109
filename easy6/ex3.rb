=begin
The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...)
such that the first 2 numbers are 1 by definition, and each subsequent number
is the sum of the two previous numbers. This series appears throughout the
natural world.

Computationally, the Fibonacci series is a very simple series, but the results
grow at an incredibly rapid rate. For example, the 100th Fibonacci number is
354,224,848,179,261,915,075 -- that's enormous, especially considering that it
takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the first Fibonacci
number that has the number of digits specified as an argument.
(The first Fibonacci number has index 1.)

You may assume that the argument is always greater than or equal to 2.


Problem:
- Input: Integer (number of digits in a fibonaci number)
- Output: Integr (the index of the )
- Fibonacci indexes start at 1
- Next number is the sum of the two numbers before it
- first two numbers are both 1

Algorithm:
- Create an Array with the first two fibonacci numbers in it, `fib_sequence`
- Create an index and initialize it to 2 (for the first new number)
- DON'T FORGET TO USE INDEX + 1
- Loop, building the fibonacci sequence
  - Go until a number has the digits specified in the argument
    - (break if num.digits.length >= arg)
  - Add a new number to the Array, the sum of the two previous numbers
    - Using the current index as a waypoint to get the index - 1 and index - 2
  - Increment the index by 1
- Return the length of the the Array to get the last index which will be the match

=end

def find_fibonacci_index_by_length(digits)
  fib_sequence = [1, 1]
  index = 2
  loop do
    current_num = fib_sequence[index - 1] + fib_sequence[index - 2]
    fib_sequence << current_num
    index += 1
    break if current_num.digits.length >= digits
  end
  fib_sequence.length
end


# Test cases
p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
# p find_fibonacci_index_by_length(10000) == 47847