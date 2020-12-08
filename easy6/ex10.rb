=begin
Write a method that takes a positive integer, n, as an argument, and displays a
right triangle whose sides each have n stars. The hypotenuse of the triangle
(the diagonal side in the images below) should have one end at the lower-left
of the triangle, and the other end at the upper-right.

# Example
triangle(5)

    *
   **
  ***
 ****
*****

Problem:
- Input: Integer (`num`)
- Output: triangle of stars
- Triangle has `num` levels and each level has `num` chars (stars & spaces)
- Last level is num * '*' and first level is ' ' * num - 1 + '*'

Algorithm:
- Create variables for spaces and stars
  - Set spaces to num - 1 and stars to 1
- Iterate num times
  - print spaces * ' ' + stars * '*'
  - subtract one space and add one to stars




=end

### My solution:
# def triangle(num)
#   spaces = num - 1
#   stars = 1

#   num.times do
#     puts (' ' * spaces) + ('*' * stars)
#     spaces -= 1
#     stars += 1
#   end
# end

### Further exploration
# Try modifying your solution so it prints the triangle upside down from its
# current orientation.

# def triangle(num)
#   spaces = 0
#   stars = num

#   num.times do
#     puts (' ' * spaces) + ('*' * stars)
#     spaces += 1
#     stars -= 1
#   end
# end

# Try modifying your solution again so that you can display the triangle with
# the right angle at any corner of the grid.
# Confused by this...

# Test cases
#triangle(5)
triangle(9)