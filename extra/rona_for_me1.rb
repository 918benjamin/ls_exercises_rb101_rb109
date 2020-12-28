=begin
https://www.codewars.com/kata/55c45be3b2079eccff00010f/train/ruby

Your task is to sort a given string. Each word in the string will contain a single number. This number is the position the word should have in the result.

Note: Numbers can be from 1 to 9. So 1 will be the first word (not 0).

If the input string is empty, return an empty string. The words in the input String will only contain valid consecutive numbers.

Examples

"is2 Thi1s T4est 3a"  -->  "Thi1s is2 3a T4est"
"4of Fo1r pe6ople g3ood th5e the2"  -->  "Fo1r the2 g3ood 4of th5e pe6ople"
""  -->  ""

PROBLEM:
- input: string
- output: string (sorted, based on the numbers contained within each word"
- Numbers are 1-9
- 1 is first not 0
- input string empty == output string empty

Algorithm:
split the given string into an array of words
initialize an empty hash, hsh
Loop through the given array of words, for each word
  "is2" - loop through checking if each character is a number 1-9
    if it is a number, put that word into a hash with the number as the key and the word as the value
      {2 => "is2"}
      "Thi1s"
      {2 => "is2", 1 => "Thi1s"}

{2 => "is2", 1 => "Thi1s", 4 => "T4est", 3 => "3a"}
sort the hash
flatten the sorted array returned by the sort
iterate through the flattened array with the index and select elements that are odd indexed
join the returned array with a space


check if number:
- if the character coerced to an integer and back to a string is equal to the original character, it's a number

=end

# def order(str)
#   return str if str == ''
#   words = str.split
#   hsh = words.each_with_object({}) do |word, obj|
#     word.each_char do |char|
#       obj[char] = word if char.to_i.to_s == char
#     end
#   end
#   hsh.sort.flatten.select!.with_index do |word, index|
#     index.odd?
#   end.join(' ')
# end


## From Codewars
# String element reference can take regex
# sort_by is super useful
def order(words)
  words.split.sort_by{ |w| w[/\d/] }.join(' '}
end


def sort_by
  yield
  <=>
end

def sort { |a,b| a.length }
  yield
end



p order("is2 Thi1s T4est 3a") == "Thi1s is2 3a T4est"
p order("4of Fo1r pe6ople g3ood th5e the2") == "Fo1r the2 g3ood 4of th5e pe6ople"
p order("") == ""