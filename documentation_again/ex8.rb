# Use irb to run the following code:

a = [5, 9, 3, 11]
puts a.min

puts a.min(2)

# Had to look at the included modules for Array class.
# Enumerable is the included module.
# From this page: https://ruby-doc.org/core-2.3.0/Enumerable.html#method-i-min
# Enumerable#min can be passed an argument n, which returns n elements
