=begin
Write a method that takes two Array arguments in which each Array contains a
list of numbers, and returns a new Array that contains the product of each pair
of numbers from the arguments that have the same index. You may assume that the
arguments contain the same number of elements.

Examples:
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

*** Problem ***
- input: two arrays
- output: new array
  - Elements at the same index are multiplied


*** Algorithm ***
- Create an empty result array
- Iterate through one of the calling arrays with the index
  - Append current element * other array[index] to the result
- return result

=end

### My initial solution
# def multiply_list(arr1, arr2)
#   result = []
#   arr1.each_with_index do |num, index|
#     result << num * arr2[index]
#   end
#   result
# end

### Further Exploration
# The Array#zip method can be used to produce an extremely compact solution to
#this method. Read the documentation for zip, and see if you can come up with a
#one line solution (not counting the def and end lines).


def multiply_list(arr1, arr2)
  arr1.zip(arr2).each_with_object([]) { |arr, obj| obj << arr.inject(:*) }
end

# Test cases
p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]