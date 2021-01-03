=begin
You have to create a method that takes a positive integer number and returns the next bigger number formed by the same digits:

12 ==> 21
13 x
14 x
15 x
16 x....21 +
513 ==> 531
2017 ==> 2071
If no bigger number can be composed using those digits, return -1:
9 ==> -1
111 ==> -1
531 ==> -1


Problem:
- input: integer (positive)
- output: integer (next bigger integer that can be made with the same digits as input)
  - if current number == max that can be made with those digits, return -1



Check if the number is the maximum that can be made with those digits:
  - Initialize a max variable to the maximum number that can be created with those digits
      (max = num.digits.sort.reverse.join.to_i)
  - return -1 if num == max

Count up from num (until max) and check if the each number contains the digits from num
  - num.upto(max) with parameter current
    - return current if current.digits.sort == num.digits.sort

=end

def next_bigger_num(num)
  max = num.digits.sort.reverse.join.to_i
  return -1 if num == max
  
  (num + 1).upto(max) do |current|
    return current if current.digits.sort == num.digits.sort
  end
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798
