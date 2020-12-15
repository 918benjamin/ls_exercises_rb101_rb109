=begin
Write a method that takes two arguments: the first is the starting number,
and the second is the ending number. Print out all numbers between the two 
numbers, except if a number is divisible by 3, print "Fizz", if a number is
divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5,
print "FizzBuzz".

Example:
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

Problem:
- inputs: two integers (starting num, ending num)
- output: print all numbers between the two inputs with some swapped for strs
  - if number divisible by 3 and 5, print FizzBuzz
  - if number divisible by 3, print Fizz
  - if number divisible by 5, print Buzz


=end

def fizzbuzz(start, stop)
  str = []
  1.upto(stop) do |num|
    if num % 3 == 0 && num % 5 == 0
      str << "FizzBuzz, "
    elsif num % 3 == 0
      str << "Fizz, "
    elsif num % 5 == 0
      str << "Buzz, "
    else
      str << "#{num.to_s}, "
    end
  end
  str[-1].slice!(-2, 2)
  puts str.join
end

# Test cases
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz