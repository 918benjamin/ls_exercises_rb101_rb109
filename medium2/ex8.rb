=begin
A featured number (something unique to this exercise) is an odd number that is
a multiple of 7, and whose digits occur exactly once each. So, for example,
49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a
  multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next
featured number that is greater than the argument. Return an error message if
there is no next featured number.

Examples:
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # outputs error
# There is no possible number that fulfills those requirements

PROBLEM:
- input: integer
- output: next featured number or error message
- featured number is
  - odd
  - multiple of 7 (num % 7 == 0)


=end

### My solution
# def featured(int)
#   int += 1
#   until int.odd? && int % 7 == 0 && int.digits == int.digits.uniq
#     int += 1
#     return :error if int > 9_999_999_999
#   end
#   int
# end

### LS solution
# def featured(number)
#   number += 1
#   number += 1 until number.odd? && number % 7 == 0
#   # at this point number is the highest odd integer divisible by 7

#   loop do
#     number_chars = number.to_s.split('')
#     return number if number_chars.uniq == number_chars
#     number += 14 # since we're already at an odd number, we can increment by 14
#     break if number >= 9_876_543_210 # after this any number will have at least one repeat digit
#   end

#   'There is no possible number that fulfills those requirements.'
# end

### My solution refactored based on LS solution
def featured(int)
  int += 1
  int += 1 until int.odd? && int % 7 == 0

  loop do
    return int if int.digits == int.digits.uniq
    int += 14
    break if int >= 9_876_543_210
  end

  "error: no possible next featured number"
end


p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # outputs error
# There is no possible number that fulfills those requirements