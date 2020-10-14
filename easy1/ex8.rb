=begin

*** PROBLEM ***
Write a method that takes one argument, an array containing integers,
and returns the average of all numbers in the array. The array will
never be empty and the numbers will always be positive integers.
Your result should also be an integer.

Examples:
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

The tests above should print true


*** PEDAC ***

Understand the Problem
- Inputs/outputs
  - input: array of integers
  - output: a single integer (average of the ints in given array)
- Requirements (explicit/implicit)
  - Write a method
  - The result is an integer so don't use floats to do division
- Implicit knowledge / important terms & concepts
  - Average means sum the numbers and divide by the count of numbers
- Questions/clarify
- Mental model

Examples / test cases
- Given
- Happy paths
- Edge cases
  - Limits - like only one integer in the array
  - One of the given integers is 0
- Failures / bad inputs

Data structures
- Input: array of integers
- Output: integer
- Intermediate: Just the integer used to store the result, updated
                as we go

Algorithm
- Initialize a variable to store the result
- Add each element in the array to the result variable
- Divide the result variable by the number of integers in the array
- Return the result

=end

# def average(arr)
#   sum = 0
#   arr.each { |int| sum += int }
#   sum /= arr.length
# end  

def average(numbers)
  numbers.reduce(:+) / numbers.count.to_f
end

# Test cases

# true
# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40
# puts average([1]) == 1
# puts average([1, 6, 0]) == 2
# puts "\n"

# false
# puts average([1, 6]) == 3.5
# puts average([1, 6, 0]) == 3
# puts average([1, 6, 0]) == 3.5

# Test Cases for float return value 
puts average([1, 6])
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])
puts average([1])
puts average([1, 6, 0])