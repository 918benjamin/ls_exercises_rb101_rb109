=begin
Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

Examples:
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667


Problem:
- input: array of integers
- output: print result float with 3 decimal places
  - multiply all ints
  - divid that by array.length
  - print result "The result is #{result}#
- does it matter what is returned? nil I'm assuming is OK


Approach:
- Multiple all the integers together and initialize a variable to reference the result, mult_ints
- divide mult_ints by arr.length
- format the result

=end

def show_multiplicative_average(arr)
  mult_ints = arr.inject(:*)
  result = mult_ints / arr.length.to_f
  puts "The result is %0.3f" % result
end

# Test cases
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667