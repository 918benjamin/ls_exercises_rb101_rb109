https://www.codewars.com/kata/53b5e7d59c1553a0b40007f3
=begin
Sherlock has to find suspect on his latest case. He will use your method, dear Watson.

The suspect in this case is a number which is most unique in given set, e.g.:
- has least (minimum) occurences in set
- and no other number has the same occurences count

Write a method which helps Sherlock to find suspect from given set of numbers.
If no suspect is found the method should return nil.

Examples:
find_suspect(1, 2, 3, 4, 2, 2, 1, 4, 4) == 3
find_suspect(1, 1, 2, 2) == nil
find_suspect(1, 1, 2, 2, 2) == 1
find_suspect(1, 2, 3, 4, 4, 3) == nil

=end



# Test cases