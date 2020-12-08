=begin
Write a method that takes two Arrays as arguments, and returns an Array that
contains all of the values from the argument Arrays. There should be no
duplication of values in the returned Array, even if there are duplicates
in the original Arrays.

Example:
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

Problem
- Input: two Arrays
- Output: One array (no duplicates)
- No duplicates in te returned Array
- Elements returned in order from lowest to highest
- 



=end

### My solution
# def merge(arr1, arr2)
#   [arr1, arr2].flatten.uniq
# end

### LS Solution
# def merge(array_1, array_2)
#   array_1 | array_2
# end

### Further exploration
def merge(arr1, arr2)
  arr1.union(arr2)
end



# Test cases
p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]