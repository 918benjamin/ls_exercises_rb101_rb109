=begin
Write a method that takes a first name, a space, and a last name passed as a
single String argument, and returns a string that contains the last name, a
comma, a space, and the first name.

Examples:
swap_name('Joe Roberts') == 'Roberts, Joe'

=end

### My solution
# def swap_name(name)
#   arr = name.split
#   "#{arr[1]}, #{arr[0]}"
# end

### LS solution
def swap_name(name)
  name.split(' ').reverse.join(', ')
end

# Test cases
p swap_name('Joe Roberts') == 'Roberts, Joe'