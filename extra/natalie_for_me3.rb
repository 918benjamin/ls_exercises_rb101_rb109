=begin
39. Largest product in a series
(https://www.codewars.com/kata/529872bdd0f550a06b00026e/train/ruby)
6 kyu
Complete the greatestProduct method so that it'll find the greatest product of five consecutive digits in the given string of digits.

For example:

greatestProduct("123834539327238239583") // should return 3240
12383
23834
38345
83453
34539
45393
53932
39327
93272
32723
27238
72382
23823
38239
82395
23958
39583

[12383, 23834, 38345, 83453, 34539, 45393, 53932, 39327, 93272, 32723, 27238, 72382, 23823, 38239, 82395, 23958, 39583]
The input string always has more than five digits.

Problem:
input - string (number > 5 digits)
output - integer (the greatest product of 5 consecutive digits in the given string number)

Algorithm:
- sub_strs = []
- Get all of the 5 digit substrings
  - Get the length of the given string and subtract 5 from it (initialize a variable last_slice to store it)
  - loop last_slice times
    - slice the given string from current num 5 digits and append the result in sub_strs
    
["string1", 'string2', etc]

- initialize a products varaible to the return value of:
  - loop through all the substrings and transform
    - coerce each substring to the integer version
      - iterate through the chars (digits) and for each digit (transform with map)
        return the digit.to_i
    - sub_string.digits.inject(:*)

products = [1234, 2345, etc]

products.max



=end

# def greatest_product(str)
#   sub_strs = []
#   last_slice = str.length - 4
#   last_slice.times do |num|
#     sub_strs << str.slice(num, 5)
#   end
  
#   product = sub_strs.map do |substr|
#     substr.chars.map { |char| char.to_i }.inject(:*)
#   end
#   product.max
# end

## Natalie's solution
def greatest_product(str)
  sub_arrays = str.chars.each_cons(5).to_a

  sub_arrays.map! do |sub_ar|
    sub_ar.map! {|ele| ele.to_i}

    sub_ar.reduce(:*)
  end.max
end


p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0