=begin
Write a method that takes an integer argument, and returns an Array of all
integers, in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.

Examples:
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

=end

### My original solution
# def sequence(int)
#   (1..int).to_a
# end

### Further exploration
def sequence(int)
  int >= 0 ? (1..int).to_a : (int..-1).to_a
end

# Test cases
p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-5) == [-5, -4, -3, -2, -1]
p sequence(-3) == [-3, -2, -1]
p sequence(-1) == [-1]