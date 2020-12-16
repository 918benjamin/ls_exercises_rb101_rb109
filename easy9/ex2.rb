=begin
A double number is a number with an even number of digits whose left-side
digits are exactly the same as its right-side digits. For example, 44, 3333,
103103, 7676 are all double numbers. 444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument,
unless the argument is a double number; double numbers should be returned as-is.

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

Problem:
- input: integer
- output: integer
  - if input is a double number, return the argument integer unchanged
  - if input is not a double number, return 2*argument
- double number = even number of digits, same digits left and right of middle
- single numbers aren't double
- 

=end

def double?(int)
  len = int.to_s.length
  int.digits.count.even? && (int.to_s[0, len / 2] == int.to_s[len / 2, len / 2])
end

def twice(int)
  return int if double?(int)
  int * 2
end


# Test cases
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