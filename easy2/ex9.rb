# Take a look at the following code:

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name # => 'Alice' \n 'Bob'

# What does this code print out? Think about it for a moment before continuing.

# Now, let's look at something a bit different:
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name # => 'BOB', 'BOB'

# What does this print out? Can you explain these results?

# Because String#upcase! mutates the calling string object, and since name
# and save_name point to the same string object, they print the same thing.