=begin
55. Grouping and Counting
(https://www.codewars.com/kata/53a452dd0064085711001205)
6 kyu
Your goal is to write the group_and_count method, which will receive an array argument and should and return a hash. 
Empty array or nil as inputs must return nil instead of a hash. This hash returned must contain as keys the unique values of the array, and as values the counting of each value.

Example:
input = [1,1,2,2,2,3]
group_and_count(input)# == {1=>2, 2=>3, 3=>1}

Note: You cannot use Array#count or Array#length in your solution

=end

# Test cases
p group_and_count([1,1,2,2,2,3]) == {1=>2, 2=>3, 3=>1}
p group_and_count([]) == nil
p group_and_count(nil) == nil
p group_and_count([1, 7, 5, -1]) == {1=>1, 7=>1, 5=>1, -1=>1}



=end