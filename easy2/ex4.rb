=begin

*** PROBLEM *** 

Build a program that displays when the user will retire and how many
years she has to work till retirement.

Example:
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

*** PEDAC ***

Understand the Problem
- Input/output
  - Input: two strings (numbers for current age and retirement age)
  - Output: two strings (year user will retire and total years of work)
- Requirements (implicit/explicit)
  - Ask the user for both age and retirement age
  - Return years of work left as a whole integer year, no months
  - Calculate based on the current year (meaning not a hard coded year)
  - Use print vs puts for the prompts so the user inputs on the same line
    as the prompt
  - Include an empty line between the inputs and the output
- Implicit knowledge / problem domain keywords and concepts
- Questions / clarify
  - Should we validate inputs?
  - What if the retirement age is less than their current age?
  - Max retirement age / current age?
- Mental model
  - Get both ages from the user. Calculate the difference in ages.
    Add that difference to the current year. Print everything out.

Examples / text cases
- Given & happy paths
- Edge cases (empty input, wrong format, limits/boundaries (1, 0, max))
- Failure / bad input

Data structures
- Input: String
- Output: String
- Intermediate
  - Convert input strings to integers
  - String interpolation to print results

Algorithm
- Prompt the user for their age and retirement age
  - Store each in a local variable
  - Convert each from string (input) to integer for math
- Subtract current age from retirement age
  - Store the result in a local variable
- Set a local variable to the current year
  - Can do this hard coded as a constant I suppose. Calculating it
    dynamically would be better
- Print the resulting string concatenating the variables inside.

=end

print "What is your age? "
current_age = gets.chomp.to_i

print "At what age would you like to retire? "
retirement_age = gets.chomp.to_i

work_years_left = retirement_age - current_age
current_year = Time.now.year

puts "\n"
puts "It's #{current_year}. You will retire in #{current_year + work_years_left}."
puts "You only have #{work_years_left} years of work to go!"


# Test cases

# Given:
# What is your age? 30
# At what age would you like to retire? 70

# It's 2020. You will retire in 2060.
# You have only 40 years of work to go!


# Other:
# What is your age? 28
# At what age would you like to retire? 40

# It's 2020. You will retire in 2032.
# You have only 12 years of work to go!