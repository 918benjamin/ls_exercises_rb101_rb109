=begin

Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. You may assume that the arguments contain the same number of elements.

Examples:
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
3*9 = 27
5*10 = 50
7*11 = 77

Problem:
- Input: two arrays
- output: one new array
  - same number of elements as the given two arrays (which will have the same # of elements)
  - each element is the product of the elements at the current index from the given arrays

Approach:
- Initialize an empty array, result
- iterate through the first given array with the index. For each element
  - multiple the current element by the element at the current index from arr2
  - append the rsult in the result array
- return result

=end

def multiply_list(arr1, arr2)
  result = []
  arr1.each_with_index do |int, index|
    result << int * arr2[index]
  end
  result
end


# Test case
p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]