=begin

In the previous exercise, you developed a method that converts simple numeric
strings to Integers. In this exercise, you're going to extend that method to
work with signed numbers.

Write a method that takes a String of digits, and returns the appropriate
number as an integer. The String may have a leading + or - sign; if the first
character is a +, your method should return a positive number; if it is a -,
your method should return a negative number. If no sign is given, you should
return a positive number.

You may assume the string will always contain a valid number.

You may not use any of the standard conversion methods available in Ruby, such
as String#to_i, Integer(), etc. You may, however, use the string_to_integer
method from the previous lesson.

Examples:
string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

Understand the problem
- Input: string (of numbers, prepended with nothing or with - or +)
- Output: integer (same as given string and if - on string, output negative)
- If no sign given, return positive number
- 

Algorithm
- Set a local variable `positive` to true for the default positive value
- Check the first character of the string
  - If it is a +, remove it
  - If it is a -, remove it and set `positive` to false
  - otherwise, do nothing


=end

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
  '7' => 7, '8' => 8, '9' => 9
}

# def string_to_signed_integer(string)
#   positive = true
#   string = string.chars
#   case string[0]
#   when "+" then string.shift
#   when "-"
#     string.shift
#     positive = false
#   end

#   digits = string.map { |char| DIGITS[char.upcase] }

#   value = 0
#   if positive
#     digits.each { |digit| value = 10 * value + digit }
#   else
#     digits.each { |digit| value = 10 * value - digit }
#   end
#   value
# end

def string_to_integer(str, positive=true)
  result = 0
  places = str.length - 1
  
  str.chars.each do |char|
    digit = (char.ord - 48) * 10**places
    places -= 1
    if positive
      result += digit
    else
      result -= digit
    end
  end
  result
end

# From the solution: 
def string_to_signed_integer(string)
  positive = true
  str_arg = string
  case string[0]
  when '-'
    str_arg = string[1..-1]
    positive = false
  when '+' then str_arg = string[1..-1]
  end
  string_to_integer(str_arg, positive)
end


# Test cases
p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100