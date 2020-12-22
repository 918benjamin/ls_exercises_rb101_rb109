=begin
In the previous exercise, we developed a procedural method for computing the
value of the nth Fibonacci numbers. This method was really fast, computing the
20899 digit 100,001st Fibonacci sequence almost instantly.

In this exercise, you are going to compute a method that returns the last digit
of the nth Fibonacci number.

Examples:
fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4

1 1 3 5 

=end
def fibonacci(n)
  first = 1
  second = 1
  result = nil
  3.upto(n) do |_|
    p first
    p second
    result = first + second % 10 # The modulus 10 is refactored from LS solution pt 2
    first = second
    second = result
  end
  result
end

### My solution
def fibonacci_last(n)
  fib = fibonacci(n)
  fib.to_s[-1].to_i
end

### LS solution (faster)
# def fibonacci_last(nth)
#   last_2 = [1, 1]
#   3.upto(nth) do
#     last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
#   end

#   last_2.last
# end

# Test cases
p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4