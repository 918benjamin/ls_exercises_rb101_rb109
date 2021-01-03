=begin
Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

Examples:
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""


problem:
- input: string
- output: new string
  - consonants doubled
  - do not double vowels, digits, punctuation, whitespace


=end

def double_consonants(str)
  alphabet = [*'a'..'z']
  vowels = %w(a e i o u)
  consonants = alphabet - vowels
  result = ""
  str.each_char do |char|
    consonants.include?(char.downcase) ? result << char*2 : result << char
  end
  result
end

# test cases
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""