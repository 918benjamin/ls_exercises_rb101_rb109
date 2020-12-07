=begin
Write a method that takes an Array of Integers between 0 and 19, and returns an
Array of those Integers sorted based on the English words for each number:

zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve,
thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

Problem:
- Input: Array of Integers 0..19 (inclusive of 19)
- Output: return Array of same integers, sorted
- Sort based on the English word for each number

Data structures:
- Array is ordered so we can use the index as the corresponding number
  - Potential issue: Sorting is fine, but then we lose the index so how do we
    get back to the original number without them being associated?
- Hash seems better in this case. I guess you could start with an Array and
  build a Hash

Algorithm:
X Start with a Constant Array of Strings, `NUM_ARR` (the English words for numbers)
X Create an empty Hash to store String keys and Integer values
X Iterate through the Array to create a Hash of String keys and Integer values
X Create a variable to store the sorted words, `sorted_words`
X Pull out just the keys from the hash and sort them alphabetially
  - Store this in `sorted_words`
  - #keys then #sort
X Create an empty Array to store the sorted Array of Integers, `result`
- Iterate through the sorted words
  - append the current word's Integer value from the Hash into the `result` Array
- Return the `result` array


=end

NUM_ARR = %w(zero one two three four five six seven eight nine ten eleven twelve
             thirteen fourteen fifteen sixteen seventeen eighteen nineteen)

# NUM_HSH = {0: 'zero', 1: 'one', 2: 'two', 3: 'three', 4: 'four', 5: 'five',
#            6: 'six', 7: 'seven', 8: 'eight', 9: 'nine', 10: 'ten', 11: 'eleven',
#            12: 'twelve', 13: 'thirteen', 14: 'fourteen', 15: 'fifteen',
#            16: 'sixteen', 17: 'seventeen', 18: 'eighteen', 19: 'nineteen'}

### My solution:

# def alphabetic_number_sort(arr)
#   num_hsh = {}
#   NUM_ARR.each_with_index do |word, index|
#     num_hsh[word] = index
#   end

#   sorted_words = num_hsh.keys.sort
#   result = sorted_words.map { |word| num_hsh[word] }

# end


### LS Solution:
# def alphabetic_number_sort(numbers)
#   numbers.sort_by { |number| NUM_ARR[number] }
# end

### Further exploration:
# Why do you think we didn't use Array#sort_by! instead of Enumerable#sort_by?

# Because local variable `numbers` within the method is referencing the object
# passed in as an argument. So if we call `Array#sort_by!`` we'll mutate that
# object AND return a meaningful value which is not the goal here (and not good
# practice generally). Mutation is simply not what's asked here.


# Test cases
p alphabetic_number_sort((0..19).to_a) == [8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0]
