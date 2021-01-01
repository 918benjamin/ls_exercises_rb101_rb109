=begin
Given a string find how many unique ways the letters can be ordered in sets of 3 that include at least two vowels. Only A-Z(case insensitive) are considered letters.

- sets of 3
- sets must contain at least 2 vowels
- A-Z are letters, case insensitive
- each set must be unique

"hello"
"heo"
"oeh"
"eoh"
"ohe"

"elo"
"leo"
"oel"
"eol"

"elo"
"leo"
"oel"
"eol"

"anna"
"ana"
"aan"
"naa"

Problem:
- input: string
- output: integer
  - number of unique combinations (permutations) of sets of three letters that contain at least 2 vowels

Algorithm:
- Split the given string into an array of characters
- Get all of the permutations of those characters
  [nested array of permutations]
- iterate through all the permutations (select)
  - initialize vowel_count = 0
  - iterate through the characters with the current permutation
    - if a character is a vowel, increment vowel_count + 1
      - %(a e i o u).include?(char.downcase)
  - vowel_count >= 2
[array of selected correct permutations]
- return the count of elements from the array


=end

def combinations(str)
  string = str.chars.select {|char| [*'a'..'z'].include?(char.downcase)}
  string.map! {|char| char.downcase}
  correct_sets = string.permutation(3).select do |set|
    vowel_count = 0
    set.each do |char|
      vowel_count += 1 if %(a e i o u).include?(char)
    end
    vowel_count >= 2
  end
  correct_sets.uniq
end

# def combinations(str)
#   str.delete!('^A-Za-z')
#   str.downcase.chars.permutation(3).select { |sub_ar| sub_ar.join.count('aeiou') >= 2 }.uniq.count
# end

p combinations("hello") #== 12
# p combinations("Anna") == 3
# p combinations("aei") == 6
# p combinations("aEI7") == 6
# p combinations("bob") == 0
# p combinations("") == 0
# p combinations("ae") == 0
# p combinations("cake pie") == 75