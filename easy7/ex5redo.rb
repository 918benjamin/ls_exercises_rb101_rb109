=begin
Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase. Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

Example:
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
I LoVe lAuNcH ScHoOl!
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
IgNoRe 77 ThE 444 NuMbErS

Problem:
- input: string
- output: new_string
  - staggered capitalization of the given string
- staggered caps:
  - alphabetic letters only
  - but non-alphabetic still count in the alternation
  - starts with a caps

Approach:
- Iterate through the characters in the given string with the index. For each character
  - if the index is even, uppercase the current char. otherwise, downcase current char.

=end

def staggered_case(str)
  str.chars.map.with_index do |char, index|
    index.even? ? char.upcase : char.downcase
  end.join
end


# Test cases
p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS' 