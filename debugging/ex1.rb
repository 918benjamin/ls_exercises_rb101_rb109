# Our countdown to launch isn't behaving as expected. Why? Change the code so
# that our program successfully counts down from 10 to 1.

# We are decrementing counter in a helper method, but we're not capturing the
# return value from that helper method.

### Original
# def decrease(counter)
#   counter -= 1
# end

# counter = 10

# 10.times do
#   puts counter
#   decrease(counter)
# end

# puts 'LAUNCH!'

### Debugged
# def decrease(counter)
#   counter -= 1 # can remove the reassignment here but I didn't
# end

# counter = 10

# 10.times do
#   puts counter
#   counter = decrease(counter)
# end

# puts 'LAUNCH!'

### Further exploration
# We specify 10 two times, which looks a bit redundant. It should be possible to
# specify it only once. Can you refactor the code accordingly?

def decrease(counter)
  counter -= 1 # can remove the reassignment here but I didn't
end

counter = 10

counter.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'

