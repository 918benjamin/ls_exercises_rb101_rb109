=begin
You are given an array of integers. Your job is to take that array and find an index N where the sum of the integers to the left of N is equal to the sum of the integers to the right of N. If there is no index that would make this happen, return -1. Empty arrays are equal to 0 in this problem.

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
1 + 2 + 3 == 3 + 2 + 1 (don't count 4)
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
1 = 50 + -50 + 1 + 1 (don't count 100)
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
20+10+30 == 10+15+35 (ignore 10 at 3rd index)
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0

p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
left = 0, right = 0
right = 

p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3

Problem:
- input: array of integers
- output: integer
- if given array is empty, return 0
- return index where the sum of integers to the left and right of n are equal
- return -1 if no index is found

Need a way to compare left and right if one of them is zero
use left, right variables that are initialized to 0 on each iteration

if index == 0, left is 0
if index == arr.length - 1, right is 0

iterate through each element of the array with the index
  if index == 0, left is 0 otherwise, left = arr.slice(0..index-1)
  if index == arr.length - 1, right is 0 otherwise, right is arr.slice(index+1..-1)
  return index if left == right
return -1

=end

def find_even_index(arr)
  return 0 if arr.empty?
  arr.each_with_index do |_, index|
    left = (index == 0 ? 0 : arr.slice(0..index-1).inject(:+))
    right = (index == arr.length - 1 ? 0 : arr.slice(index+1..-1).inject(:+))
    
    return index if left == right
  end
  -1
end

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3