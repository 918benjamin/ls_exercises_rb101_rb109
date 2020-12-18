=begin
Write a method that can rotate the last n digits of a number. For example:
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.

=end

def rotate_array(arr)
  dup_arr = arr.dup
  dup_arr << dup_arr.shift
end

def rotate_rightmost_digits(int, n)
  rotate_digs = int.digits.reverse[-n, n]
  keep_digs = int.digits.reverse - rotate_digs

  new_digs = keep_digs + rotate_array(rotate_digs)
  new_digs.join.to_i
end

# Test cases
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917