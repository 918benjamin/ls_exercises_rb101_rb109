=begin
Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.

Example:
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

[1, 2, 3], ['a', 'b', 'c']
[1, 'a', 2, 'b', 3, 'c']

[1, 'a', 2, 'b', 3, 'c']

Problem:
- input: two arrays
- output: one array (interleaved from given arrays)
- given arrays are non-empty and have the same number of elements

Approach:
- Create an empty result array
- iterate through the first given array with the index. for each element
  - append the current element to the result array
  - append the element at current index from the second given array to the result array
- return the result array

=end

# def interleave(arr1, arr2)
#   result = []
#   arr1.each_with_index do |elem, index|
#     result << elem << arr2[index]
#   end
#   result
# end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end


# Test case
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']