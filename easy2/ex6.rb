=begin

*** PROBLEM ***
Print all odd numbers from 1 to 99, inclusive. All numbers should be
printed on separate lines.


*** PEDAC ***

Understand the Problem
- input/output
  - Input: none
  - Output: 1 to 99 (integers) printed each on a new line
- requirements (explicit/implicit)
  - Print each number on a new line
  - Include 1 and 99 and all odd numbers between
- implicit knowledge (problem domain concepts or keywords)
  - Odd number definition - when divided by 2 the remainder is 1
- questions and clarification
- mental model
  - Create a range of numbers from 1 to 99. Loop through printing each.

Examples / test cases
- happy path & given
- edge cases
- failure / bad inputs

Data structures
- input:
- output:
- intermediate

Algorithm
- 

=end

# (1..99).each { |x| puts x if x % 2 == 1}

# (1..99).each { |x| puts x if x.odd? }

# odd_numbers = 1.upto(99).select { |x| x.odd? }
# odd_numbers.each { |num| puts num }

# puts 1.upto(99).select { |x| x.odd? }

# 1.step(99, 2) { |x| puts x }

(1..99).each do |i|
  unless i % 2 == 0
    puts i

  end
end

# Test cases