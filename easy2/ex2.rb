=begin

*** PROBLEM ***
Build a program that asks a user for the length and width of a room
in meters and then displays the area of the room in both square meters
and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

Example Run

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).


*** PEDAC *** 

Understand the problem
- Input: 2 strings, length and width
- Output: String
- Requirements (implicit/explicit)
  - Ask user for 2 inputs, length & width (in meters)
  - Square the 
  - Convert square meters to square feet
  - Display the square meters with one decimal place (convert one to Float)
  - Display the square feet to two decimal places
- Implicit knowledge / concepts & ideas (problem domain)
  - Squaring meters
- Questions / clarification
  - Displaying the decimal places
    - Number of decimals for meters^2 and feet^2
    - Round either? 
- Mental model
  - Get two integers (as strings, convert), multiply them together to
    get the meters squared. Then multiply that by the meter <> feet
    constant to get feet squared. Print it all with string interpolation.

Examples / test cases
- Given
- Happy path
- Edge cases
- Failure / bad inputs

Data structures
- Input: string
- Output: string
- Intermediate:
  - Input strings, one to integer one to float
  - Constant for meters^2 <> feet^2

Algorithm
- Prompt the user for two numbers
  - Convert one input string to an integer and one to a float
  - Store each input string in a variable
- Multiply the two meter numbers and store the result in an m^2 variable
- Multiply the m^2 number by the m^2 <> f^2 constant and store the
  - result in a f^2 variable
- Print the result
  - String interpolation to include the numbers in the strong
  - Convert back to string?
  - Display proper decimal places

=end


# *** ORIGINAL SOLUTION ***

# FEET_SQ_PER_METER_SQ = 10.7639

# puts "Enter the length of the room in meters:"
# length = gets.chomp.to_i # Solution converts both to float

# puts "Enter the width of the room in meters:"
# width = gets.chomp.to_f

# meters_sq = length * width

# feet_sq = meters_sq * FEET_SQ_PER_METER_SQ

# puts "The area of the room is #{meters_sq} square meters (#{format("%.2f", feet_sq)} square feet)."


# *** FURTHER EXPLORATION ***

SQFEET_PER_SQMETER = 10.7639
SQINCH_PER_SQFOOT = 144
SQCM_PER_SQ_IN = 6.4516

puts "Enter the length of the room in feet"
length = gets.chomp.to_f

puts "Enter the width of the room in feet"
width = gets.chomp.to_f

feet_sq = (length * width).round(2)
inches_sq = (feet_sq * SQINCH_PER_SQFOOT).round(2)
cm_sq = (inches_sq * SQCM_PER_SQ_IN).round(2)

puts "The area of the room is:"
puts "#{feet_sq} square feet"
puts "#{inches_sq} square inches"
puts "#{cm_sq} square centimeters"


# Solution suggests using Float#round instead of Kernal#format

# Examples
=begin

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

Enter the length of the room in meters:
12
Enter the width of the room in meters:
16
The area of the room is 192.0 square meters (2066.67 square feet).

=end