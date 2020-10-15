=begin

*** PROBLEM ***
Write a program that will ask for user's name. The program will then
greet the user. If the user writes "name!" then the computer yells
back to the user.

Example 1: 
What is your name? Bob
Hello Bob.

Example 2:
What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?


*** PEDAC ***

Understand the Problem
- Input/output
  - input: string (user's name with or w/o !)
  - output: string (including their name, transformed if input includes!)
- Requirements (implicit/explicit)
  - If just name, print "Hello #{name}"
  - if name!, print "HELLO #{name}. WHY ARE WE SCREAMING?"
      - Take off the ! before interpolating it into the output
  - Uppercase the name when shouting
- Implicit knowledge / problem domain keywords or concepts
- Questions / clarify
    - How should we handle bad input?
    - If theres an exclamation point earlier than the last char, don't shout it?
- Mental model
    - Get the users name. If they included an !, take off the ! 
      from their name and print the shouty output. Otherwise, print
      the regular output.

Examples / test cases
- Given / happy path
- Edge cases
    - ! earlier in the 
    - How should we handle input with name not capitalized? capitalize?
- Failure / bad input

Data structures
- input: string
- output: string
- intermediate: All strings this time

Algorithm
- 


=end


def get_name
  print("What is your name? ")
  gets.chomp
end

def strip_!(name)
  name.delete_suffix!('!')
end

def shout?(name)
  if name.end_with?('!')
    true
  else
    false
  end
end

def print_response(name)
  if shout?(name)
    strip_!(name)
    puts("HELLO #{name.upcase}. WHY ARE WE SCREAMING?")
  else
    puts("Hello #{name}.")
  end
end

name = get_name
print_response(name)

# Test Cases

# Given

# Example 1: 
# What is your name? Bob
# Hello Bob.

# Example 2:
# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?


# More
# Example 3: 
# What is your name? !Ben
# Hello !Ben.

# Example 4:
# What is your name? !Ben!
# HELLO !BEN. WHY ARE WE SCREAMING?