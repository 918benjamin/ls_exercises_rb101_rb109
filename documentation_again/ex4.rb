# The Array#bsearch method is used to search ordered Arrays more quickly
# than #find and #select can. Assume you have the following code:

a = [1, 4, 8, 11, 15, 19]

# How would you search this Array to find the first element whose value exceeds 8?

# From this page: https://ruby-doc.org/core-2.7.1/Array.html#method-i-bsearch

puts a.bsearch { |x| x > 8 }

# Array#bsearch in find-minimum mode returns the i-th element where the block first
# returns true.