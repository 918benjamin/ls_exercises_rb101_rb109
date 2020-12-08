=begin
Write a method that takes an Array, and returns a new Array with the elements
of the original list in reverse order. Do not modify the original list.

You may not use Array#reverse or Array#reverse!, nor may you use the method
you wrote in the previous exercise.

Problem:
- Input: Array
- Output: New Array (elements reversed)
  - Output must be a different object

Algorithm:
- Create an empty `result` Array
- Create an index -1
- Loop (while index < -arr.length)
  - append the current element at the index in arr onto result
  - decrement index by 1
- return the result


=end

### My solution:
# def reverse(arr)  
#   result = []
#   index = -1
#   while -(index) <= (arr.length)
#     result << arr[index]
#     index -= 1
#   end

#   result
# end

### LS Solution:
# def reverse(array)
#   result_array = []
#   array.reverse_each { |element| result_array << element }
#   result_array
# end

### Further Exploration
def reverse(arr)
  arr.each_with_object([]) do |item, object|
    object.unshift(item)
  end
end


# Test cases
p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true