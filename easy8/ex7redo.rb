=begin
Write a method that takes a string, and returns a new string in which every character is doubled.

Examples:
repeater('Hello') == "HHeelllloo"
'HHeelllloo'
repeater("Good job!") == "GGoooodd  jjoobb!!"
"GGoooodd  jjoobb!!"
repeater('') == ''



Problem:
- input: string
- output: new string (every char doubled)
- empty string returns empty string
- double all chars even spaces and punctuation

- write a method, takes a string
- returns a new string
- every character is doubled
- if the input is an empty string, return an empty string

- Do we need to worry about non-string inputs? invalid input in general?
- Case matters, doubled char should be same case as original

Approach:
- iterate through the characters of the given string. For each character
  - multiply

=end

def repeater(str)
  return '' if str.empty?
  str.chars.map do |char|
    char*2
  end.join
end



# test cases
p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''