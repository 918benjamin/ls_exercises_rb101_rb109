=begin
Write a method that takes an Array of numbers and then returns the sum of the
sums of each leading subsequence for that Array. You may assume that the Array
always contains at least one number.

Examples:
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

*** Problem ***
- Input: Array of Integers
- Output: Integer
  - Output is the sum of the sum of the numbers in a special sequence
- 

Idea: First number is n * length, n(1) * length - 1 until n(-1) * 1

=end

### My solution
# def sum_of_sums(arr)
#   length = arr.length
#   arr.inject(0) do |sum, num|
#     sum += (num * length)
#     length -= 1
#     sum
#   end
# end

### LS Solution 1
# def sum_of_sums(numbers)
#   sum_total = 0
#   accumulator = 0

#   numbers.each do |num|
#     accumulator += num
#     sum_total += accumulator
#   end

#   sum_total
# end


### LS Solution 2
# def sum_of_sums(numbers)
#   sum_total = 0
#   1.upto(numbers.size) do |count|
#     sum_total += numbers.slice(0, count).reduce(:+)
#   end
#   sum_total
# end

### Chris Cheng's solution
def sum_of_sums(arr)
  sum = 0
  loop do
    sum += arr.sum
    arr.pop
    break if arr.size == 0
  end
  sum
end

# Test Cases
p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35