# What do each of these puts statements output?

a = %w(a b c d e)
puts a.fetch(7)                      # => IndexError
puts a.fetch(7, 'beats me')          # => 'beats me'
puts a.fetch(7) { |index| index**2 } # => 49

# From this page https://ruby-doc.org/core-2.7.1/Array.html#method-i-fetch
# Array#fetch is used to return the value at a provided index.
# If the index passed as an argument to fetch is invalid (outside the array bounds)
# then an IndexError is raised. If an optional default value is passed as the second
# argument, an invalid index will return that default value. If a block is given, 
# that block will execute when an invalid index is referenced.