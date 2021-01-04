=begin
write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers except if a number is divisible by 3, print out "Fizz", if a number is divisible by 5, print out "Buzz", and if a number is divisible by 3 and 5, print out "FizzBuzz".

fizzbuzz(1, 10) => 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz
fizzbuzz(1, 15) => 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz


problem:
- input: two integers (start and stop)
- output: print numbers and fizzbuzz
  - does the return value matter? is nil ok?
- if number is divisible by 3 and 5, print FizzBuzz
- if divisible by 3, print Fizz
- if divisible by 5 print Buzz
- divisible means number % 3 == 0 or number % 5 == 0 (no remainder)
- print formatting?
  - all on one line or multiple lines?
  - separated by commas?

Approach:
X Initialize an empty array to store the `result`
- iterate through a set of numbers from the start to the end, inclusive. For each number
  - check if the number is divisible by 3 & 5. If so, add "FizzBuzz" to result
  - check if the number is divisible by 3. If so, add "Fizz" to result
  - check if the number is divisible by 5. If so, add "Buzz" to the result
  - otherwise, add the number itself to the result
- Join the result array together into a string with a comma and a space
- print the resulting string


=end

def fizzbuzz(start, stop)
  result = []
  (start..stop).each do |num|
    case
    when num % 5 == 0 && num % 3 == 0
      result << 'FizzBuzz'
    when num % 3 == 0
      result << 'Fizz'
    when num % 5 == 0
      result << 'Buzz'
    else
      result << num
    end
  end
  
  puts result.join(', ')
end

# Test cases
fizzbuzz(1, 10)
fizzbuzz(1, 15)
