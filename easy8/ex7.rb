=begin
Write a method that takes a string, and returns a new string in which every character is doubled.

Examples:
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

=end

def repeater(str)
  repeat = ""
  str.each_char do |char|
    repeat << char * 2
  end
  repeat
end

# Test cases
p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''