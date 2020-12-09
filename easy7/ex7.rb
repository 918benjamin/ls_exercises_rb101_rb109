=begin
Write a method that takes an Array of integers as input, multiplies all the
numbers together, divides the result by the number of entries in the Array,
and then prints the result rounded to 3 decimal places. Assume the array is
non-empty.

Examples:
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

*** Problem ***
- input: Array of Integers
  - not empty
- output: Float (3 decimal places)
- multiply the numbers in given array then divide by array.length


*** Algorithm ***


=end
def show_multiplicative_average(arr)
  puts ('%.3f' % (arr.inject(:*) / arr.size.to_f))
end

### Further exploration:
# Omitting the .to_f call will result in inaccurate numbers output, because
# at least one of the numbers must be a float to return a float. If a float is
# not returned, the remainder is not included and the remainder is what we use
# past the decimal places



# Test cases
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667