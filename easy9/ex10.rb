=begin
Write a method which takes a grocery list (array) of fruits with quantities
and converts it into an array of the correct number of each fruit.

Example:
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

PROBLEM
- input: array of subarrays [string fruit, integer quantity]
- output: array
  - contains as many fruit strings as there are quantity for each sub array, all as one flat array
- 


=end

### My solution
# def buy_fruit(fruit_arr)
#   result = []
#   fruit_arr.each do |arr|
#     arr[1].times do |_|
#       result << arr[0]
#     end
#   end
#   result
# end

### LS soltion 2
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

# Test cases
p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
