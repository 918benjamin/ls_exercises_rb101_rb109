=begin
Write a method that takes a string as argument, and returns true if all
parentheses in the string are properly balanced, false otherwise. To be
properly balanced, parentheses must occur in matching '(' and ')' pairs.

Examples:
balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false

Note that balanced pairs must each start with a (, not a ).

Problem:
- input: string
- output: boolean
- write a method, balanced? that takes a string and returns a boolean
- return true if the parentheses within the string are properly balanced, false if not
  - balanced means each opening parenthesis has a closed parenthesis
  - no closed parenthesis appears before an open
- 

'What (is) this?'
open = 0
close = 0
W(not), h(not), etc, ( is open
  open += 1 (1)
  close = 0
i, s, )
  open = 1
  close += 1 (1)
open == close

'((What) (is this))?'
open = 0
close = 0
( open +=1 (1), close = 0
( open +=1 (2), close = 0
w.h.a.t
) open = 2, close += 1 (1)


open == close

=end

### My solution
def balanced?(str)
  valid = true
  open, close = 0, 0
  str.each_char do |char|
    open += 1 if char == '('
    close += 1 if char == ')'
    valid = false if close > open
  end
  open == close && valid
end

# Test cases
p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false