=begin
Write a method that will take a short line of text, and print it within a box.
You may assume that the input will always fit in your terminal window.

Problem:
- Input: string
- output: string in box
  - first line  +--+
  - second line |  |
  - third line  | str |
  - fourth line |  |
  - fifth line  +--+

Algorithm:
- Store the length of the given string in a variable, len
- print each line


=end

### My solution:
# def print_in_box(str)
#   len = str.length
#   puts "+-#{'-' * len}-+"
#   puts "| #{' ' * len} |"
#   puts "| #{str} |"
#   puts "| #{' ' * len} |"
#   puts "+-#{'-' * len}-+"
# end

### LS Solution:
# def print_in_box(message)
#   horizontal_rule = "+#{'-' * (message.size + 2)}+"
#   empty_line = "|#{' ' * (message.size + 2)}|"

#   puts horizontal_rule
#   puts empty_line
#   puts "| #{message} |"
#   puts empty_line
#   puts horizontal_rule
# end

# creates rules instead of repeating (DRY)
# Within those rules adds 2 instead of hard coding in those characters like mine

# Test cases

print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
print_in_box('testing 123')