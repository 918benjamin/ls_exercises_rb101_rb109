=begin
If you take a number like 735291, and rotate it to the left, you get 352917.
If you now keep the first digit fixed in place, and rotate the remaining digits,
you get 329175. Keep the first 2 digits fixed in place and rotate again to
321759. Keep the first 3 digits fixed in place and rotate again to get 321597.
Finally, keep the first 4 digits fixed in place and rotate the final 2 digits
to get 321579. The resulting number is called the maximum rotation of the
original number.

735291 => 352917  -- hold first 0 and rotate once to the left
352917 => 329175  -- hold first 1 and rotate once to the left
329175 => 321759  -- hold first 2 and rotate once to the left
321759 => 321597  -- hold first 3 and rotate once to the left
321597 => 321579  -- hold first 4 and rotate once to the left

Write a method that takes an integer as argument, and returns the maximum
rotation of that argument. You can (and probably should) use the
rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

Example:
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

Problem:
-input: integer
-output: integer (max rotation of argument)
- don't worry about multiple 0s
- leading zeros get dropped

Approach:
- Keep track of the number of digits to hold
- Loop
  - rotate the digits that aren't held
  - Increment the number of digits to hold on each iteration

Algorithm
- 

=end

### My original solution
# def max_rotation(int)
#   (int.digits.length).downto(1) do |num| # LS solution points out going down to 2 is sufficient
#     int = rotate_rightmost_digits(int, num)
#   end
#   int
# end

### Further exploration
def max_rotation(int)
  digits = int.digits.reverse
  (digits.length).downto(1) do |num| # LS solution points out going down to 2 is sufficient
    digits = rotate_rightmost_digits(digits, num)
  end
  digits.join
end


def rotate_array(arr)
  dup_arr = arr.dup
  dup_arr << dup_arr.shift
end

def rotate_rightmost_digits(arr, n)
  rotate_digs = arr[-n, n]
  keep_digs = arr - rotate_digs

  new_digs = keep_digs + rotate_array(rotate_digs)
end

# Test cases
# p max_rotation(735291) == 321579
# p max_rotation(3) == 3
# p max_rotation(35) == 53
# p max_rotation(105) == 15 # the leading zero gets dropped
# p max_rotation(8_703_529_146) == 7_321_609_845
p max_rotation(10002)