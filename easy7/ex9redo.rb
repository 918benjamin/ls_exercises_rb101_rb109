=begin
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

Examples:
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

2*4 = 8x
2*3 = 6x
2*1 = 2x
2*2 = 4x

4*4 = 16x
4*3 = 12x
4*1 = 4x
4*2 = 8x

2, 4, 4, 6, 8. 8, 12, 16


Problem:
- input: two arrays (of integers)
  - not equal number of elements
- output: one new array (product of every pair of numbers formed between the elements of the two arrays
  - sorted by increasing value (small to big)
- Neither argument is empty array
- Do I need to worry about non-numeric elements?
- What about an element that is 0 or negative?
- 

=end

def multiply_all_pairs(arr1, arr2)
  products = arr1.product(arr2)
  products.map! do |arr|
    arr.inject(:*)
  end
  products.sort
end

# test cases
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]