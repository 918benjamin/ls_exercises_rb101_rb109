=begin
You will be given a number and you will need to return it as a string in expanded form. For example:

expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'

Note: All numbers will be whole numbers greater than 0.
p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'

PROBLEM:
- input: integer
- return: string (expanded form of the number)
- Expanded form is essentially the digit multiplied by it's place
- data stcture: array (hold digits in order, convert to a string)
Questions:
- how to handle negative numbers? zero?

Approach:
- Split the digits, use multiplication to expand each digit out
- 12 => [1, 2] => [10, 2] => '10 + 2'
  - to get from [1, 2] to [10, 2] multiply each element by 10**place where
    place is the length of the array - 1 for the left most digit and place
    is 0 for the right most digit

Another approach:
- Get the remainder of the given integer % 10
- Add that remainder to an array, and then subtract that remainder from the given integer
- repeat, increasing the divisor x10 each iteration (10, 100, 1000...)
- remove the zeros
- join into a string

Algorithm
- Split the integer into an array of digits (.digits.reverse)
- initialize a variable, power, to store the array length
- iterate through the digits array (map)
  - decrement power by 1
  - multiply each digit by 10**power
- select only the elements greater than 0
- join the array into a string

=end

def expanded_form(int)
  digits = int.digits.reverse
  place = digits.length

  digits.map! do |digit|
    place -= 1
    digit * (10**place)
  end

  digits.select! do |digit|
    digit > 0
  end

  digits.join(" + ")
end

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'
