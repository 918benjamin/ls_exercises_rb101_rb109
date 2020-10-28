=begin
Write a method that searches for all multiples of 3 or 5 that lie between 1
and some other number, and then computes the sum of those multiples.
For instance, if the supplied number is 20, the result should be 98
(3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

Examples:

multisum(3) == 3 # [1, 2, 3] => [3] => 3
multisum(5) == 8 # [1, 2, 3, 4, 5] => [3, 5] => 8
multisum(10) == 33 # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] => [3, 5, 6, 9, 10] => 33
multisum(1000) == 234168 

Understand:
- input: integer ( > 1)
- output: integer (sum)
- Write a method
- Sum the numbers between 1 and given integer, but only those that
  are a multiple of 3 or a multiple of 5

Alrgorithm
- Create an empty list
- Go through each number from 1 to the given number
  - if the current number is a multiple of 3 or a multiple of 5, add it to the list
  - otherwise, go to the next numbers
- Create a result variable to store the sum of the new list
- Go through each number in the new list
  - Add each number to the result
- return the result

=end

def multisum(num)
  arr = (1..num).select do |int|
    int % 3 == 0 || int % 5 == 0
  end
  arr.reduce(:+)
end


# Test cases
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

