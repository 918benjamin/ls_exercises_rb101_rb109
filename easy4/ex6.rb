=begin
Write a method that takes an Array of numbers, and returns an Array with th
same number of elements, and each element has the running total from the
original Array.

Examples:

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

Understand the problem:
- Input: Array (pf integers)
- output: Array (of integers)
- Each integer in the new array is the sum of the current integer in the old
  array and the previous integer in the new array
- Write a method
- Empty array input returns an empty array
- Single number in the input array returns the same as the input


Algorithm
- Create a new empty array
- For each element in the given array
  - If the index is 0, add that element to the array
  - otherwise, add the sum of the current element in the old array to the
    previous element of the new array
- return the new array

=end

def running_total(arr)
  result = []
  arr.each_with_index do |num, index|
    if index == 0
      result << num
    else
      result << num + result[index - 1]
    end
  end
  result
end

# Test cases
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []