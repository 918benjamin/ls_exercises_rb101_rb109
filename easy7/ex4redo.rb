=begin
Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

Example:
swapcase('CamelCase') == 'cAMELcASE'
cAMELcASE
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
tONIGHT ON xyz-tv

Problem:
- input: string
- output: new string
  - uppercase letters are lowercased, lowercased letters are uppercased.
  non-alphabetic chars stay the same

Approach:
- iterate through the characters of the given string
  - if the character is alphabetic
    - if it is uppercased, lowercase it
    - if it is lowercased, uppercase it

check if uppercase: char.upcase == char
check if lowercased: char.downcase == char
char if character is alphabetic: [*'a'..'z'].include?(char.downcase)


=end

ALPHABET = [*'a'..'z']

def swapcase(str)
  str.chars.map do |char|
    if ALPHABET.include?(char.downcase)
      char.upcase == char ? char.downcase : char.upcase
    else
      char
    end
  end.join('')
end

# Test case
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'