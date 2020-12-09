=begin
Write a method that takes a string as an argument and returns a new string in
which every uppercase letter is replaced by its lowercase version, and every
lowercase letter by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

Example:
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

***Problem***
- Input: String
- Output: New String
  - Replace uppercase letters with lowercase letters, vice versa
  - Don't change other characters

***Algorithm***
- Split the string into an Array of chars
- Iterate through the Array of chars. For each char:
  - Check if the char's ordinal
    - If its between 97 and 122, upcase it
    - elsif its between 65 and 90, downcase it
    - otherwise leave it alone
- Join the array back together and return

=end

def swapcase(str)
  new_str = str.chars.each do |char|
    if char.ord.between?(97, 122)
      char.upcase!
    elsif char.ord.between?(65, 90)
      char.downcase!
    end
  end
  new_str.join
end


# Test cases
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'