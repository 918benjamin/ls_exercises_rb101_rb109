https://www.codewars.com/kata/58942f9175f2c78f4b000108/train/ruby
=begin
Given a string str, find the shortest possible string which can be achieved by adding characters to the end of initial string to make it a palindrome.

Example:
For str = "abcdc", the output should be "abcdcba".

str argument will be between 3 and 10 characters (inclusive)

Test cases:
build_palindrome("abcdc") == "abcdcba"
build_palindrome("ababab") == "abababa"
build_palindrome("accccc") == "accccca"

=end

def build_palindrome(string)
  current_string = string.dup
  insertion_index = -1
  
  append_index = 0

  loop do
    if current_string == current_string.reverse
      return current_string
    else
      current_string.insert(insertion_index, string[append_index])
      insertion_index -= 1
      append_index += 1
    end
  end
end


p build_palindrome("abcdc") == "abcdcba"
p build_palindrome("abcdcba") == "abcdcba"
p build_palindrome("ababab") == "abababa"
p build_palindrome("accccc") == "accccca"
p build_palindrome("abxdzb") == "abxdzbzdxba"