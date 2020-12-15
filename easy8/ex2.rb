=begin
Mad libs are a simple game where you create a story template with blanks for
words. You, or another player, then construct a list of words and place them
into the story, creating an often silly or funny story as a result.

Create a simple mad-lib program that prompts for a noun, a verb, an adverb,
and an adjective and injects those into a story that you create.

Example:
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!




=end
def prompt(str)
  print "Enter a #{str}: "
end

prompt("noun")
noun = gets.chomp

prompt("verb")
verb = gets.chomp

prompt("adjective")
adj = gets.chomp

prompt("adverb")
adverb = gets.chomp

puts "So you're saying that a #{adj} #{noun} can #{verb} #{adverb} more than me?!"