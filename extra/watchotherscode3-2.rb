=begin
Write a method to find the longest common prefix string amongst an array of strings. If there is no common prefix, return an empty string,

All given inputs are in lowercase letters a-z.

Problem:
- input: array of strings
- output: string (longest substring that all three share)
  - if no characters (from left to right) are the same (no common prefix) return empty string
- Ok to mutate inputs?
- all strings are lowercase letters a-z


puts common_prefix(["flower", "flow", "fliwht"]) == "fl"

["flower", "flow", "fliwht"]

puts common_prefix(["dog", "racecar", "car"]) == ""
puts common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
puts common_prefix(["throne", "dungeon"]) == ""
puts common_prefix(["throne", "throne"]) == "throne"


Approach:
- duplicate the given array and strings to avoid mutating the input
- sort the duplicated array by string length (sort_by {|str| str.length} ) and store in sorted_words
- shift off the first string, keyword
- iterate keyword.length times (keyword.length.downto(1) do |slicer|). On each iteration
  - compare a slice of the first word with same slices of the others
    prefix = keyword.slice(0, slicer)
    return prefix if sorted_words.all? {|word| word.slice(0, slicer) == prefix }
- if no prefix is returned, return ''


=end

def common_prefix(arr)
  arr_dup = arr.map { |word| word.dup }
  sorted_words = arr_dup.sort_by { |word| word.length }
  keyword = sorted_words.shift
  keyword.length.downto(1) do |slicer|
    prefix = keyword.slice(0, slicer)
    return prefix if sorted_words.all? { |word| word.slice(0, slicer) == prefix }
  end
  ""
end

p common_prefix(["flower", "flow", "fliwht"]) == "fl"
p common_prefix(["dog", "racecar", "car"]) == ""
p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
p common_prefix(["throne", "dungeon"]) == ""
p common_prefix(["throne", "throne"]) == "throne"
