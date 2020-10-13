# Consider the following method and a call to that method:

def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6) # => [4, 5, 3, 6]

# Use the ruby documentation to determine what this code will print.

# From this page: https://ruby-doc.com/core/doc/syntax/calling_methods_rdoc.html
# First the 4 is assigned to a. Then the 6 is assigned to d.
# Only 5 remains and Ruby assigns from left to right, so b is assigned 5 while
# c remains its default value, with no 4th value passed in.