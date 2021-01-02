# We started working on a card game but got stuck. Check out why the code below
# raises a TypeError.

# Once you get the program to run and produce a sum, you might notice that the
# sum is off: It's lower than it should be. Why is that?

# On line 30 (original, line 40 below) we don't save the value returned by map.
# When remaining_cards invokes sum, it isn't summing the card's scores unless we save them to remaining_cards
# The sum is off because every suit in the deck is referencing the same cards array.

### Original
# cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

# deck = { :hearts   => cards,
#          :diamonds => cards,
#          :clubs    => cards,
#          :spades   => cards }

# def score(card)
#   case card
#   when :ace   then 11
#   when :king  then 10
#   when :queen then 10
#   when :jack  then 10
#   else card
#   end
# end

# # Pick one random card per suit

# player_cards = []
# deck.keys.each do |suit|
#   cards = deck[suit]
#   cards.shuffle!
#   player_cards << cards.pop
# end

# # Determine the score of the remaining cards in the deck

# sum = deck.reduce(0) do |sum, (_, remaining_cards)|
#   remaining_cards.map do |card|
#     score(card)
#   end

#   sum += remaining_cards.sum
# end

# puts sum

### Debugged
cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.dup,
         :diamonds => cards.dup,
         :clubs    => cards.dup,
         :spades   => cards.dup }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

p deck
# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  remaining_cards.map!  do |card|
    score(card)
  end

  sum += remaining_cards.sum
end

p deck
puts sum