=begin
Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. You may assume that the Array always contains at least one number.

Examples:
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

Problem:
- input: array (of integers)
- output: integer (sum of sums)
- create sequences of integers all starting from 0 index
- sum each sequence
- add together all the sums of the sequences
- return that number

[3, 5, 2]
3
3 + 5
3 + 5 + 2
-----------
3x  2x  1x
length = 3

Approach:
- Get the length of the given array
- Create a result varible to hold the result, set to 0
- Iterate through the elements in the given array. for each element
  - multiply that element by the length
  - add the resulting number to the result variable
  - decrement length by 1
- return result


=end

def sum_of_sums(arr)
  mult = arr.length
  result = 0
  arr.each do |int|
    result += int * mult
    mult -= 1
  end
  result
end


# Test cases
p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35