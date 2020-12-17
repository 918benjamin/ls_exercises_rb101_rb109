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

# Test cases
p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12

=end


