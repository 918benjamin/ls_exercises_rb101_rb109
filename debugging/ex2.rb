# String#upcase! is a destructive method, so why does this code print HEY you
# instead of HEY YOU? Modify the code so that it produces the expected output.

# The destructive String#upcase! is invoked on each character in the array of
# of characters returned from #chars, not on the object local variable `name`
# references.

### Original
# def shout_out_to(name)
#   name.chars.each { |c| c.upcase! }

#   puts 'HEY ' + name
# end

# shout_out_to('you') # expected: 'HEY YOU'

### Debugged
def shout_out_to(name)
  name = name.chars.each { |c| c.upcase! }.join

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

### LS solution (much simpler)
# def shout_out_to(name)
#   name.upcase!

#   puts 'HEY ' + name
# end

# shout_out_to('you')