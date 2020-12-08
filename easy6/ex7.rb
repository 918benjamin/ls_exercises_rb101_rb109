=begin
Write a method that takes an Array as an argument, and returns two Arrays
(as a pair of nested Arrays) that contain the first half and second half of
the original Array, respectively. If the original array contains an odd number
of elements, the middle element should be placed in the first half Array.

Examples:
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

Problem:
- Input: Array
- Output: two Arrays (pair of nested Arrays)
  - Put first half or arg in first nested array, 2nd hal in 2nd nested array
  - Odd number of elements? middle element goes in the first half
- 1 element? goes in first array, second array is empty
- empty array arg? two empty nested Arrays


Algorithm:
- Duplicate the existing array to arr2
- Create an empty array, arr1
- Set a max elements
- Check if the given array is even or odd
  - if even, max elements is array length / 2
  - if odd, max elements for first array is array length / 2 + 1 
- Loop while the number of elements in arr1 is less than max elements
  - take off the first element of arr2 and put it in arr1
- return the nested arrays

=end

### My solution:
# def halvsies(arr)
#   arr2 = arr.dup
#   arr1 = []
#   max_elements = arr.length.even? ? arr.length / 2 : arr.length / 2 + 1

#   while arr1.length < max_elements
#     arr1 << arr2.shift
#   end

#   [arr1, arr2]
# end


### LS Solution:
def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end


### Further exploration
# Can you explain why our solution divides array.size by 2.0 instead of just 2?
# 2.0 ensures the return value of the expression on line 2 will be a float.
# Without this float, #ceil will not return the correct number.


# Test cases
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]