=begin

*** PROBLEM ***

Create a simple tip calculator. The program should prompt for a bill
amount and a tip rate. The program must compute the tip and then
display both the tip and the total amount of the bill.

Example: 
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0


*** PEDAC ***

Understand the Problem
- Inputs/outputs
  - Input: two strings, bill amount and tip rate
  - output: two strings (formatted with calculations interpolated)
- Requirements (implicit/explicit)
  - Round the tip amount and total amount to 2 decimals (cents)
  - Accept the tip precentage in x% form and convert to usable
  - Use print vs puts for the prompts so the input is given on
    the same line as the prompt
- Implicit knowledge / problem domain concepts or ideas
  - Converting percentage to usable
- Questions / clarification
  - Should we validate the inputs?
  - How should we handle invalid inputs? Negative bill, > 100% tip,
    invalid tip format (0.15 for 15%)
- Mental model
  - Get the bill amount and tip percentage from the user. Convert both
    to floats for math. Divide the tip by 100 to get working percentage.
    Calculate the tip, then add it to the given bill. Round. Print both.

Examples / Test cases
- Given / happy paths
- Edge cases
- Failure / bad inputs

Data structures
- Input: strings
- Output: strings
- Intermediate:
  - Input strings to floats

Algorithm
-

=end

print "What is the bill? "
bill = gets.chomp.to_f

print "What is the tip percentage? "
tip_percent = gets.chomp.to_f

tip = (bill * (tip_percent / 100)).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{format("%.2f", tip)}"
puts "The total is $#{format("%.2f", total)}"