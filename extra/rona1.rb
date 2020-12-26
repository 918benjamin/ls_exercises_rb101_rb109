=begin

Find The Parity Outlier
kyu 6

codewars.com/kata/5526fc09a1bbd946250002dc/train/ruby

You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.
    
p find_outlier([0, 1, 2]) == 1
0 - even
1 - odd
2 - even
even is the standard, 1 is the outlier

p find_outlier([1, 2, 3]) == 2
p find_outlier([2,6,8,10,3]) == 3

Problem:
- input; array of integers
  - all odd or all even except for one outlier
- output: one integer from the given array, the outlier
- One and only one outlier

Algorithm:
- initialize an outlier variable to nil
- Iterate through the given array and return a transformed array of booleans, for each integer
  - check if the integer is even and returning that from block
  - store the resulting array of booleans in a new array, bools
- [true, false, true]
- Check the count of true and false in the bools array
  - Whichever count is 1, is the outlier
    - set outlier variable to that boolean
  - iterate through the bools array with the index
    - check if the current element is the outlier boolean
      - if so, return from the method the element from the given array at the current index

=end
def find_outlier(arr)
  outlier = nil
  bools = arr.map do |int|
    int.even?
  end
  outlier = (bools.count(true) == 1 ? true : false)
  bools.each_with_index do |bool, index|
    return arr[index] if bool == outlier
  end
end

def find_outlier(integers)
  integers.partition(&:odd?).find(&:one?).first
end

# Ternary is great for two options
# Array#partition is a good option to split and find the outlier


# Test cases
p find_outlier([0, 1, 2]) == 1
p find_outlier([1, 2, 3]) == 2
p find_outlier([2,6,8,10,3]) == 3