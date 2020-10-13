# What does this code print?

5.step(to: 10, by: 3) { |value| puts value }
# => 5
# => 8

# From this page: https://ruby-doc.org/core-2.7.1/Numeric.html#method-i-step
# Numeric#step passes a value to the block. The value starts at the calling
# numeric, in this case 5, then increments by the by: step keyword argument
# until the value is greater than the to: limit keyword argument.