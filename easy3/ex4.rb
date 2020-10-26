# Create a method that takes two arguments, multiplies them together, and returns the result.

# Example:
# multiply(5, 3) == 15

def multiply(num1, num2)
  num1 * num2
end


# Test cases
p multiply(5, 3) == 15 # => true
p multiply(2, 6) == 12 # => true
p multiply(5, 8) == 40 # => true
p multiply(2, 3) == 10 # => false

p multiply([1, 2], 3)
