=begin
Write a method that rotates an array by moving the first element to the end of
the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

Example:
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

Problem:
- Input: array
- output: new array
  - input array with first element as the last element

Algorithm:
- Initialize a dup_arr variable to a duplicate of the given array
- Initialize a `first` variable to the result of dup_arr.shift
- Append the `first` variable object to dup_arr
- return dup_arr

=end

def rotate_array(arr)
  dup_arr = arr.dup
  dup_arr << dup_arr.shift
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

# Further exploration
# Write a method that rotates a string instead of an array. Do the same thing
# for integers. You may use rotate_array from inside your new method.

def rotate_string(str)
  rotate_array(str.chars).join
end

def rotate_integer(int)
  rotate_array(int.digits.reverse).join.to_i
end

p rotate_string("abcd") == "bcda"
p rotate_string("benjamin") == "enjaminb"
p rotate_string("ab") == "ba"

p rotate_integer(12345) == 23451
p rotate_integer(52349) == 23495
p rotate_integer(23) == 32

