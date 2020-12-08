=begin
Write a method that takes an Array as an argument, and reverses its elements
in place; that is, mutate the Array passed into this method. The return value
should be the same Array object.

You may not use Array#reverse or Array#reverse!.

Examples
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
list == ["abc"]

list = []
reverse!(list) == []
list == []


Problem:
- Input: Array
- Output: Same Array with elements reversed (same object)
- Cannot use reverse or reverse! existing methods

Algorithm:
- Create an empty Array to store the intermediate result `new_arr`
- Create an index variable and store -1 in it to start (last element)
- Loop
  - Append the current index element from the given Array to new_arr
  - decrement the index by 1
  - break when the index is equal to the array length (negative)
- Set index to 0
- Loop
  - set the given Array element at current index to the new_arr element at current index
  - increment index by 1
  - break when index == array length - 1

- return the given array
=end

### My Solution:
# def reverse!(arr)
#   return arr if arr == []
  
#   new_arr = []
#   index = -1
#   loop do
#     new_arr << arr[index]
#     index -= 1
#     break if index < -(arr.length)
#   end
  
#   index = 0
#   loop do
#     arr[index] = new_arr[index]
#     index += 1
#     break if index >= arr.length
#   end

#   arr
# end

### LS Solution:
def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end

# p reverse!([1, 2, 3, 4])
# p reverse!(%w(a b c d))


list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []