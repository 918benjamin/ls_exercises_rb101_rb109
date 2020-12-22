=begin
In the previous exercise, we developed a recursive solution to calculating the
nth Fibonacci number. In a language that is not optimized for recursion, some
(not all) recursive methods can be extremely slow and require massive quantities
of memory and/or stack space.

Ruby does a reasonably good job of handling recursion, but it isn't designed for
heavy recursion; as a result, the Fibonacci solution is only useful up to about
fibonacci(40). With higher values of nth, the recursive solution is impractical.
(Our tail recursive solution did much better, but even that failed at around
fibonacci(8200).)

Fortunately, every recursive method can be rewritten as a non-recursive
(procedural)method.

Rewrite your recursive fibonacci method so that it computes its results without
recursion.

Examples:
fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501

Fibonacci sequence = 1 1 2 3 5 8 13 21 34

Problem:
-input: integer (nth fibonacci number)
- output: integer (fibonacci number at nth position)

Algorithm:
- Initialize two integer variables, first & second, to 1 and 1
- initialize a third integer variable, result
- from 3 up to the given integer n,
  - add first and second together, storing the value in result
  - reassign first to second, second to third
- return result

=end

def fibonacci(n)
  first = 1
  second = 1
  result = nil
  3.upto(n) do |_|
    result = first + second
    first = second
    second = result
  end
  result
end

# Test cases
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501