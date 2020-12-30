=begin
In the easy exercises, we worked on a problem where we had to count the number
of uppercase and lowercase characters, as well as characters that were neither
of those two. Now we want to go one step further.

Write a method that takes a string, and then returns a hash that contains 3
entries: one represents the percentage of characters in the string that are
lowercase letters, one the percentage of characters that are uppercase letters,
and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

Examples
letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

'abCdef 123'
length = 10.0
abdef lowercased = 5 (5/10 * 100 = 50%)
C upcase = 1 (1/10 = 10%)
space 123 = 4 (4/10 = 40%)

'AbCd +Ef'
length = 8.0
bdf lower = 3 (3/8 = )

Problem:
- input: string
- output: hash
  - Three key:value pairs: lowercase: % of chars lowercase, uppercase: % chars upper, neither: % chars neither

Algorithm:
- Initialize a variable to the length of the given string coerced to a float
- Initialize a hash with the lowercase, uppercase, neither all set to 0
- Iterate through each character in the given string
  - increment the corresponding variable (upper, lower, neither)
- Iterate through the hash and transform each value
  - divide the value by the length (float) and multiply by 100

=end

def letter_percentages(str)
  length = str.length.to_f
  hsh = { lowercase: 0, uppercase: 0, neither: 0}
  
  str.each_char do |char|
    case
    when [*'A'..'Z'].include?(char) then hsh[:uppercase] += 1
    when [*'a'..'z'].include?(char) then hsh[:lowercase] += 1
    else hsh[:neither] += 1
    end
  end
  
  result = {}
  hsh.each do |category, count|
    result[category] = count / length * 100
  end
  result
end

# Test cases
p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }