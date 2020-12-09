=begin
Write a method that takes a String as an argument, and returns a new String
that contains the original value using a staggered capitalization scheme in
which every other character is capitalized, and the remaining characters are
lowercase. Characters that are not letters should not be changed, but count as
characters when switching between upper and lowercase.

Examples:
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

***Problem***
- Input: String
- Output: new String
  - Stagger capitalized and not, ignoring non-alphabetic chars but keeping them
    in order

***Algorithm***
- Split the given string into an Array of characters
- iterate through each character in the array with the index
  - If the index is even, upcase it. Odd, downcase it. both destructive
- join and return

=end

def staggered_case(str)
  characters = str.chars
  characters.each_with_index do |char, index|
    if index.even?
      char.upcase!
    else
      char.downcase!
    end
  end
  characters.join
end



# Test cases
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'