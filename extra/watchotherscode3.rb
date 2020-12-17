=begin
The maximum sum subarray problem consists in finding the maximum sum of a
contiguous subsequence in an array of integers:

maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]

    ⇒ should be 6: [4, -1, 2, 1]

easy case is when the array is made up of only positive numbers and the
  maximum sum is the sum of the whole array. If the array is made of up
  only negative numbers, return 0 instead.

Empty array is considered to have zero greatest sum. Note that the empty
array is also a valid subarray.

Approach:
- Get all the possible sub arrays
- Get all the sums of those subarrays
- sort the sums array
- return the highest sum

[-2, 1, -3, 4, -1, 2, 1, -5, 4]

-2
-2, 1
...
-2, 1, -3, 4, -1, 2, 1, -5, 4

algorithm:
SUB ARRAYS
- Initialize an empty array, subarrays
- Initialize a variable to arr.length, ends
- Iterate through the given array with the index, arr
  - For each element and index, |int, index|
    - Iterate from index + 1 up to ends with |num| parameter
      - Slice arr from index, num elements long
      - append that slice to the subarrays array
    - decrement ends by 1

SUMS
- initialize a variable, sums
- Iterate through subarrays transforming the elements and storing the return in sums
  - For each subarray, subarr
    - return the subarr's sum from the block

Sort the sums array
return the first element from the sums array

Examples
p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12

=end

def max_sequence(arr)
  return 0 if arr.empty?
  subarrays = []
  ends = arr.length

  arr.each_with_index do |int, index|
    1.upto(ends) do |num|
      subarrays << arr[index, num]
    end
   ends -= 1
  end

  sums = subarrays.map do |subarr|
    subarr.inject(:+)
  end
  sum = sums.sort.reverse[0]
  sum > 0 ? sum : 0
end

# Test cases
p max_sequence([1, 2, 3, 4]) == 10
p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12

