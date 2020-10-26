# What will the following code print, and why?
# Don't run the code until you have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo) # Intitialize a local variable `array1` and assign it to an array with these objects
array2 = [] # Initialie a local variable `array2` and assign it to an empty array object
array1.each { |value| array2 << value } # Iterate through each element in `array1` and append that element to `array2`. `array1` and `array2` are two separate arrays that contain references to the same 8 string objects, in the same order
array1.each { |value| value.upcase! if value.start_with?('C', 'S') } # Iterate through each element in `array1`. If the element starts with a 'C' or an 'S' then make the whole string uppercased.
puts array2 # => ['Moe', 'Larry', 'CURLY', 'SHEMP', 'Harpo', 'CHICO'. 'Groucho', 'Zeppo']

# Since `array1` and `array2` contain references/pointers to the same 8 objects, mutating
# the elements within `array1` (which is what we did by calling `upcase!` on some strings),
# will reflect in `array2` as well as `array1`.

# To avoid this problem, copy in duplicates of the values on line 6 (value.dup or value.clone)