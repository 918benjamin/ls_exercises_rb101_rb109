=begin
Write a method named include? that takes an Array and a search value as
arguments. This method should return true if the search value is in the array,
false if it is not. You may not use the Array#include? method in your solution.

Examples:
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

Problem:
- Input: Array and Integer (search value)
- Output: boolean
- Return true if `value` in `arr`, false if not

Algorithm:
- Iterate through the elements in arr
  - if the element == value, return true
- If no element == value, return false

=end

### My solution:
# def include?(arr, value)
#   arr.each { |element| return true if element == value }
#   false
# end


### LS solution (#2):
def include?(array, value)
  !!array.find_index(value)
end

# Test cases
p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
p include?([nil], false) == false