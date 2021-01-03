=begin
Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

Example:
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

Problem:
- input: two integers (start, end)
- output: print numbers between start and end
  - if number is divisible by 3 & 5 print "FizzBuzz"
  - if number is divisible by 3 print "Fizz"
  - if number is divisible by 5 print "Buzz"
  - otherwise, print the number itself
- separate by comma space ", "

- Do we need to worry about non-valid inputs or 0?
- does the return value matter? `nil` ok?

Divisible by 3 means num % 3 == 0

Need to check fizzbuzz condition first before fizz or buzz

Approach:
- Write a method, fizzbuzz that takes two integer arguments
- create a variable result, an empty array
- Iterate through the numbers from start to end (start.upto(end))
- Check if number is divisible by 3 and 5. If so, append "FizzBuzz" to result
- check if number is divisible by. If so, append "Fizz" to result
- check if number is divisible by 5. If so, append "Buzz" to result
- otherwise, append number to result
- join result by (", ") and print


=end

def fizzbuzz(start, stop)
  puts ((start..stop).each_with_object([]) do |num, result|
    case
    when num % 3 == 0 && num % 5 == 0 then result << 'FizzBuzz'
    when num % 3 == 0 then result << 'Fizz'
    when num % 5 == 0 then result << 'Buzz'
    else result << num
    end
  end.join(', '))
  
end


# test cases
# fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
fizzbuzz(1, 100)