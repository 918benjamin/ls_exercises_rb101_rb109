# Use irb to run the following code:

s = 'abc'
puts s.public_methods.inspect

puts s.public_methods(false).inspect

# From this page: https://ruby-doc.org/core-2.7.1/Object.html#method-i-public_methods
# We pass in false argument for the all parameter which is normally set to
# true by default. This shows just the public methods available on String class without
# the parent classes methods.

# I got there using the search bar on the methods list on the core page.
# The solution walks through getting to the parent class from the class page
# itself, which is useful. It also reminds me not to look for a method first
# in the parent class, because it might be modified in the child class.