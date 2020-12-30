=begin
A triangle is classified as follows:

equilateral All 3 sides are of equal length
isosceles 2 sides are of equal length, while the 3rd is different
scalene All 3 sides are of different length
To be a valid triangle, the sum of the lengths of the two shortest sides must
be greater than the length of the longest side, and all sides must have lengths
greater than 0: if either of these conditions is not satisfied, the triangle is
invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments,
and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending
on whether the triangle is equilateral, isosceles, scalene, or invalid.

Examples:
triangle(3, 3, 3) == :equilateral
3 == 3 == 3, all > 0, 3+3 > 3
triangle(3, 3, 1.5) == :isosceles
3 == 3, all > 0, 3+1.5 > 3
triangle(3, 4, 5) == :scalene
3 != 4 != 5, all > 0, 3+4 > 5
triangle(0, 3, 3) == :invalid
3 == 3, all !> 0, 0+3 !> 3
triangle(3, 1, 1) == :invalid
1 == 1, 1+1 !> 3, all > 0

Problem:
- input: three integers (three sides of a triangle)
- output: symbol (which kind of triangle or invalid)
- equilateral = all sides are equal
- isosceles = 2 sides equal, one is different
- scalene = all sides different (but still valid)
- valid triangles have
  - all sides > 0
  - sum of two shortest lengths must be > length of 3rd side

Algorithm:
- Guard clause: check if all sides are > 0
  -return :invalid if side1 <= 0 || side2 <= 0 || side3 <= 0
- Guard clause: check if two smallest sides summed is > 3rd side
  - initialize a variable sides_sorted to an array containing the three sides
  - sort the array
  - compare the sum of the 0th and 1st sides with the 3rd side and return :invalid if not greater
- case
  - when side1 == side2 == side3 then return :equilateral
  - when side1 == side2 || side2 == side3 || side3 == side1 then :isosceles
  - else :scalene


=end

def triangle(side1, side2, side3)
  return :invalid if (side1 && side2 && side3) <= 0
  sides_sorted = [side1, side2, side3].sort
  return :invalid if sides_sorted[0] + sides_sorted[1] <= sides_sorted[2]

  case
  when side1 == side2 && side2 == side3 && side3 == side1 then :equilateral
  when side1 == side2 || side2 == side3 || side3 == side1 then :isosceles
  else :scalene
  end
end


# Test cases
p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
p triangle(0, 0, 0) == :invalid
p triangle(-1, -1, -1) == :invalid