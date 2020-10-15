=begin

*** PROBLEM ***
Build a program that randomly generates and prints Teddy's age.
To get the age, you should generate a random number between 20 and 200.

Example Output:
Teddy is 69 years old!

*** PEDAC ***

Understand the Problem
- Input: None?
- Output: String (including a randomly generated age)
- Requirements (implicit/explicit)
  - Age is a random number >= 20 and <= 200, inclusive
- Implicit knowledge / concepts / ideas (problem domain)
- Questions / clarification
- Mental model
  - Get a range of 21 - 199, sample a random number from the range, 
    include that number in the printed string.

Examples / test cases
- Given
- Happy paths
- Edge cases
- Failure / bad input

Data structures
- Input: none
- Output: String
- Intermediate: Array for holding the range and sampling random number

Algorithm
- Generate a range of integers from 20 to 200
- Store each integer in an array
- Sample the array for a random number
- Insert the random number into a string and print the string


=end

puts "What is your name?"
name = gets.chomp
name = 'Teddy' if name == ""

age = 20.upto(200).to_a.sample
puts "#{name} is #{age} years old!"

# From the solution:
# Can also use rand(20..200) which generates a pseudo-random integer
# from the array passed in. You can also pass in just a max number
# and the array will return between 0 and max. Without an argument
# max's default is 0 and rand returns a pseudo-random value between
# 0.0 and 1.0 (excluding 1.0 itself)

# I didn't want to look this up so I tried to figure out a method using
# the tools I knew.