=begin
Given 2 strings, your job is to find out if there is a substring that appears in both strings. You will return true if you find a substring that appears in both strings, and false if not. A substring is longer than 1 character.

Problem:
- input: two strings
- output: boolean
  - true if there is at least one substring in both strings
  - false if no substring appears in both strings
- substring is > 1 character (2 or more characters)
- case does not matter (per test case 4) so downcase at the start

puts substring_test('Something', 'Fun') == false
puts substring_test('Something', 'Home') == true
ome == ome

puts substring_test('Something', ' ') == false
puts substring_test('BANANA', 'banana') == true
puts substring_test('test', 'llt') == false
puts substring_test(' ', ' ') == false
puts substring_test('1234567', '541265') == true


Approach:
- downcase both strings
- iterate (word1.length - 2) times through a word creating substrings
  - initialize a start variable to current_num
  - initialize an end variable to 1
  - iterate until end >= string1.length - 1 - start
    - slice the current word to create a substring, from start to end
    - check if each substring is included in the other word. if so, return true.
      (word2.include?(substring))
    - increment stop by 1
- if no substring is found that matches, return false

0 1 2 3
t e s t
len = 4
len - 1 = 3
0 1 2 times
start 0, stop 2


=end

def substring_test(word1, word2)
  word1, word2 = word1.downcase, word2.downcase
  (word1.length - 1).times do |start|
    stop = 2
    until stop > word1.length - start
      substring = word1.slice(start, stop)
      return true if word2.include?(substring)
      stop += 1
    end
  end
  false
end

p substring_test('Something', 'Fun') == false
p substring_test('Something', 'Home') == true
p substring_test('Something', ' ') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'llt') == false
p substring_test(' ', ' ') == false
p substring_test('1234567', '541265') == true
