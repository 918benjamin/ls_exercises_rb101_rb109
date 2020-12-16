=begin
Create a method that takes two integers as arguments. The first argument is a
count, and the second is the first number of a sequence that your method will
create. The method should return an Array that contains the same number of
elements as the count argument, while the values of each element will be
multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater,
while the starting number can be any integer value. If the count is 0, an empty
list should be returned.

Examples:
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

Problem
- inputs: integer (count), integer (start value)
- output: array of integers
  - same number of integers as first arg count
  - each element is a multiple of the starting number

=end

### My solution
def sequence(max, value)
  (1..max).each_with_object([]) do |num, arr|
    arr << value * num
  end
end

### LS solution 1
# def sequence(count, first)
#   sequence = []
#   number = first

#   count.times do
#     sequence << number
#     number += first
#   end

#   sequence
# end

### LS solution 2
# def sequence(count, first)
#   (1..count).map { |value| value * first }
# end

# Test cases
p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []