=begin
A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

Examples:
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

Note: underscores are used for clarity above. Ruby lets you use underscores when writing long numbers; however, it does not print the underscores when printing long numbers. Don't be alarmed if you don't see the underscores when running your tests.


Problem:
 - input: integer
 - output: integer
  - return double number as is
  - if not double number, return number * 2
- double number = 
  - even number of digits (11 has two digits, 111 has 3 digits)
  &&
  - left side digits are exactly the same as the right side digits

Approach:
- Initialize a variable to the count of the digits in the given integer, dig_count
- if dig_count is even
  - check if the left half digits are equal to the right half digits
    - if int[0, dig_count / 2] == int[dig_count / 2, dig_count / 2]
      - return int
- otherwise, return digit * 2

=end

def twice(int)
  dig_count = int.digits.count
  if dig_count.even?
    if int.to_s[0, dig_count / 2] == int.to_s[dig_count / 2, dig_count / 2]
      return int
    end
  end
  int * 2
end

# test cases
p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10