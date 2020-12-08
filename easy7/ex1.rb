=begin
Write a method that combines two Arrays passed in as arguments, and returns a
new Array that contains all elements from both Array arguments, with the
elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the
same number of elements.

Example:
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

Problem:
  - input: 2 arrays
  - output: 1 new array
    - elements from both are interleaved (alternating)
    - first array element goes first
  - both arrays have same number of elements
  - both arrays have elements (non-empty)


Algorithm:
  - Create a new array to store the results `result`
  - Duplicate both arrays to their same values (so we don't mutate)
  - iterate the number of times of either array
    - shift an element off arr1 and add it to result
    - shift an element off arr2 and add it to result
  - return result

=end

### My solution:
# def interleave(arr1, arr2)
#   result = []
#   arr1 = arr1.dup
#   arr2 = arr2.dup

#   arr1.length.times do |_|
#     result << arr1.shift
#     result << arr2.shift
#   end
#   result
# end

### LS Solution:
# def interleave(array1, array2)
#   result = []
#   array1.each_with_index do |element, index|
#     result << element << array2[index]
#   end
#   result
# end


### Further Exploration
# Take a few minutes to read about Array#zip. #zip doesn't do the same thing as
# interleave, but it is very close, and more flexible. In fact, interleave can
# be implemented in terms of zip and one other method from the Array class.
# See if you can rewrite interleave to use zip.

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end


# Test cases
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']