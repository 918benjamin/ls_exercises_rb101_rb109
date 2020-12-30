=begin
A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

[[B, O], [X, K], [D, Q], [C, P], [N, A], [G, T], [R, E], [F, S], [J, W], [H, U], [V, I], [L, Y], [Z, M]]

BATCH
[[B, O], [X, K], [D, Q], [C, P], [N, A], [G, T], [R, E], [F, S], [J, W], [H, U], [V, I], [L, Y], [Z, M]]
B - B:0
A - N:A
T - G:T

This limits the words you can spell with the blocks to just those words that do
not use both letters from any given block. Each block can only be used once.

Write a method that returns true if the word passed in as an argument can be
spelled from this set of blocks, false otherwise.

Examples:
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

problem:
- input: string (word)
- output: boolean
  - return true if arg word can be spelled from the blocks, false if not
- given a constant, block of pairs of letters
- a word can only use one letter from each pair and cannot reuse any letter
- Block seems to be case agnostic

Algorithm:
- initialize a local variable blocks to the block set
- initialize local variable valid to false
- iterate through the characters in the given word. For each character:
  - Iterate through the blocks array. For each block array within:
    - Check if the block contains the current character
      - if so, remove the current block from blocks
        - set valid = true
        - break out of the loop
- return valid

=end
# require "pry"
# require "pry-byebug"

### My solution after refactoring based on LS solution simplicity with the blocks formatting
def block_word?(word)
  blocks = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)
  valid = false
  # binding.pry
  word.each_char do |char|
    blocks.each do |block|
      if block.include?(char.upcase)
        blocks.delete(block)
        valid = true
        break
      end
      valid = false
    end
  end
  valid
end

# Test cases
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('ben') == true
p block_word?('benjamin') == false
p block_word?('bb') == false