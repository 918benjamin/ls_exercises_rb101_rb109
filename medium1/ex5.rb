=begin
Write a method that displays a 4-pointed diamond in an n x n grid, where n is
an odd integer that is supplied as an argument to the method. You may assume
that the argument will always be an odd integer.

Problem:
- input: integer
- output: print diamond
- Argument is always an odd integer
- diamond is within nXn grid
- need to count up from 1 to n for stars
  - count down from n / 2 to 0 for spaces

Algorithm:
- Initialize a variable spaces to n / 2
- Initialize a variable stars to 1
- iterate n / 2 times
  - puts spaces X spaces + stars X stars
  - increment stars, decrement spaces
- puts n spaces and stars
- interate n / 2 times
  - puts spaces X spaces + stars X stars
  - decrement stars, increment spaces

Examples:
diamond(1)
*

diamond(3)

 *
***
 *

diamond(9)

    *      4  spaces, 1 star (5 total)
   ***     3 spaces, 3 stars (6 total)
  *****    2 spaces, ()
 *******
*********
 *******
  *****
   ***
    *

=end

def diamond(n)
  spaces = n/2
  stars = 1

  (n-1).times do |x|
    if x.even?
      puts (' ' * spaces) + ('*' * stars)
      spaces -= 1
      stars += 2
    end
  end

  puts '*' * n
  spaces += 1
  stars -=2

  (n-1).times do |x|
    if x.even?
      puts (' ' * spaces) + ('*' * stars)
      spaces += 1
      stars -= 2
    end
  end

end
# - Initialize a variable spaces to n / 2
# - Initialize a variable stars to 1
# - iterate n / 2 times
#   - puts spaces X spaces + stars X stars
#   - increment stars, decrement spaces
# - puts n spaces and stars
# - interate n / 2 times
#   - puts spaces X spaces + stars X stars
#   - decrement stars, increment spaces


# Test cases
diamond(1)
puts "\r"
diamond(3)
puts "\r"
diamond(9)