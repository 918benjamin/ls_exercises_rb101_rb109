=begin
Modify the method from the previous exercise so it ignores non-alphabetic
characters when determining whether it should uppercase or lowercase each
letter. The non-alphabetic characters should still be included in the return
value; they just don't count when toggling the desired case.

Examples:
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

***Problem***
- Input: String
- Output: new String
- Alternate uppercase/lowercase, but ignore non-alphabetic characters in the staggering

***Algorithm***
- Get an array of all the characters in the given string, downcased
- Set an upper variable to true
- Iterate through the characters
  - If a character is alphabetic
    - If the upper variable is true
      - upcase the character
    - either way, swap the upper variable to false
- join and return

=end

### My original solution:
def staggered_case(str)
  characters = str.downcase.chars
  upper = true
  characters.each do |char|
    if char =~ /[a-z]/i
      if upper
        char.upcase!
      end
      upper = !upper
    end
  end
  characters.join
end

### Further Exploration
# Modify this method so the caller can determine whether non-alphabetic characters
# should be counted when determining the upper/lowercase state. That is, you want
# a method that can perform the same actions that this method does, or operates
# like the previous version.

def staggered_case(str, count_em=false)
  characters = str.downcase.chars
  upper = true
  characters.each do |char|
    if char =~ /[a-z]/i || count_em
      if upper
        char.upcase!
      end
      upper = !upper
    end
  end
  characters.join
end

# Test cases
p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

p staggered_case('I Love Launch School!', true) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS', true) == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers', true) == 'IgNoRe 77 ThE 444 NuMbErS'