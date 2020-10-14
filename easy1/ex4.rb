=begin

*** PROBLEM ***
Write a method that counts the number of occurrences of each element
in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

The words in the array are case-sensitive: 'suv' != 'SUV'. ` Once 
counted, print each element alongside the number of occurrences.

Expected output:
car => 4
truck => 3
SUV => 1
motorcycle => 2


*** PEDAC ***

Understand the Problem
- Input/output
  - Input: Array of strings
  - Output: Print each element with its number of occurrences, each on a new line

- Requirements (implicit/explicit)
  - Strings in the array are case sensitive
  - Output in the same order that the strings appear within the array

- Mental model
  - Go through each element of the array. When you encounter a new
    element, add a new element to your result with a tally of 1.
    When you encounter a previously counted element, add one to the
    current tally for that element.

- Questions
  - What if the given array is empty?

Examples / Test Cases
- Additional tests
  - Add one for counting different case version of the same word
  - One where the array is empty?
- Edge cases


Data structures
- Input, output, intermediate
- Input: Array of strings
- Hash to store the tally and retrieve it for printing
- Output: String with variables for the element name and tally interpolated

Algorithm
- Loop through each element of the given array.
- If the element has already been counted, increment it's tally by 1
- Else if the element hasn't been counted before, add it with a tally of 1
- Loop through the tally hash to print out each tally

=end

def count_occurrences(arr)
  result = Hash.new
  arr.each do |item|
    if result[item.to_sym]
      result[item.to_sym] += 1
    else
      result[item.to_sym] = 1
    end
  end

  result.each do |item, tally|
    puts "#{item} => #{tally}"
  end
  puts "\n" # Just added this so the tests can be seen separately
end


# Examples

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

vehicles = [
  'car', 'car', 'suv', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)
# car => 4
# suv => 1
# truck => 3
# SUV => 1
# motorcycle => 2

vehicles = ['car']

count_occurrences(vehicles)
# car => 1

vehicles = ['car', 'car', 'truck', 'car']

count_occurrences(vehicles)
# car => 3
# truck => 1

vehicles = []

count_occurrences(vehicles)
# output is an empty line