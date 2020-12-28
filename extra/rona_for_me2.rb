# https://www.codewars.com/kata/53b5e7d59c1553a0b40007f3

=begin
Sherlock has to find the suspect on his latest case. He will use your method, dear Watson.

The suspect in this case is a number which is most unique in given set, e.g.:
- has least (minimum) occurences in set
- and no other number has the same occurences count

Write a method which helps Sherlock to find the suspect from given set of numbers.
If no suspect is found the method should return nil.

Examples:
find_suspect(1, 2, 3, 4, 2, 2, 1, 4, 4) == 3
1 x 2
2 x 3
3 x 1
4 x 3
find_suspect(1, 1, 2, 2) == nil
1 x 2
2 x 2
find_suspect(1, 1, 2, 2, 2) == 1
1 x 2
2 x 3
find_suspect(1, 2, 3, 4, 4, 3) == nil
1 x 1
2 x 1
3 x 2
4 x 2

problem:
input: array
output: either a number from the array or nil
  - nil if no number in the given is "unique"
  - a number from the given array if that number:
    - has both the minimum occurances within the array AND no other number has the same occurances
    
{1 => 2, 2 => 3, 3 => 1, 4 => 3}

- group_by

Algorithm:
- uniq_nums = arr.uniq
- intialize hash
- iterate through uniq_nums, for each num
  - add a hash key value pair where the key is num and the value is count of num in given array
- Now I have {1 => 2, 2 => 3, 3 => 1, 4 => 3}
- initialize a min_occurances to 0
- initialize result to the max value + 1 (hsh.values.max + 1)
- iterate through the hash, for each k:v pair
  - if value(current num occurances) < min_occurances 
      - then set min_occurances = value
      - set result = the current key
    elsif value == min_occurances
     return nil
     
  group_by { |obj| block } → a_hashclick to toggle source
group_by → an_enumerator
Groups the collection by result of the block. Returns a hash where the keys are the evaluated result from the block and the values are arrays of elements in the collection that correspond to the key.

If no block is given an enumerator is returned.

(1..6).group_by { |i| i%3 }   #=> {0=>[3, 6], 1=>[1, 4], 2=>[2, 5]}
    
  

=end

# array = [1, 2, 3, 4, 2, 2, 1, 4, 4]

# def find_suspect(array)
#   groups_hsh = array.group_by { |number| array.count(number) }
#   min = groups_hsh.keys.min
#   groups_hsh[min].uniq.length == 1 ? groups_hsh[min][0] : nil
# end

# def find_suspect(arr)
#   uniq_nums = arr.sort_by { |num| arr.count(num) }.uniq
#   hsh = {}
#   uniq_nums.each do |num|
#     hsh[num] = arr.count(num)
#   end
#   min_occurances = hsh.values.max + 1
#   result = nil
#   hsh.each do |key, value|
#     if value < min_occurances
#       min_occurances = value
#       result = key
#     elsif value == min_occurances
#       return nil
#     end
#   end
#   result
# end

def find_suspect(num_ar)
  count = num_ar.tally

  sorted_ar = count.sort_by { |key, value| value }

  count.select! do |key, value|
    sorted_ar[0][1] == value
  end

  if count.length == 1
    count.keys[0]
  else
    nil
  end
end


# Test cases
p find_suspect([1, 2, 3, 4, 2, 2, 1, 4, 4]) == 3
p find_suspect([1, 1, 2, 2]) == nil
p find_suspect([1, 1, 2, 2, 2]) == 1
p find_suspect([1, 2, 3, 4, 4, 3]) == nil