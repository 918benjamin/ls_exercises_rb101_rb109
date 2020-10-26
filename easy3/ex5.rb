# Using the multiply method from the "Multiplying Two Numbers" problem,
# write a method that computes the square of its argument
# (the square is the result of multiplying a number by itself).

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

# Test cases:
# p square(5) == 25 # => true
# p square(-8) == 64 # => true


# What if we wanted to generalize this method to a "power to the n" type method:
# cubed, to the 4th power, to the 5th, etc. 
# How would we go about doing so while still using the multiply method?

# def power_of(num, power)
#   case power
#   when 0 then 0
#   when 1 then num
#   when 2 then multiply(num, num)
#   else
#     result = multiply(num, num)
#     (power - 2).times { result *= num }
#     result
#   end 
# end

# Solution from another student using recursion
def power_of(num, power)
  return 0 if power == 0
  return num if power == 1
  multiply(num, power_of(num, power - 1))
end

p power_of(2, 1) == 2
p power_of(2, 2) == 4
p power_of(2, 3) == 8
p power_of(2, 4) == 16
p power_of(2, 5) == 32
p power_of(2, 6) == 64
p power_of(2, 7) == 128
p power_of(2, 8) == 256
p power_of(2, 9) == 512
p power_of(2, 10) == 1024