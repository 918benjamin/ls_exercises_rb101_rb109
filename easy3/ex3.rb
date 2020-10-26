=begin
Write a program that will ask a user for an input of a word or multiple words
and give back the number of characters. Spaces should not be counted as a character.

Examples:

Input
Please write word or multiple words: walk

Output
There are 4 characters in "walk".

Input
Please write word or multiple words: walk, don't run

Output
There are 13 characters in "walk, don't run".


Understand:
- Input: string, word or words
- Output: string including the count of characters
- Spaces are not included
- Use print instead of puts so the user input is on the same line as the prompt

=end

# print "Please write word or multiple words: "
# input = gets.chomp
# chars = 0
# input.split.each { |word| chars += word.length}

# puts "There are #{chars} characters in \"#{input}\"."

print("Please write word or multiple words: ")
input = gets.chomp

count = input.split.join.size
puts("There are #{count} characters in \"#{input}\"")