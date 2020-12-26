=begin
https://www.codewars.com/kata/551dd1f424b7a4cdae0001f0/train/ruby
Double Cola
5 kyu

Sheldon, Leonard, Penny, Rajesh and Howard are in the queue for a "Double Cola" drink vending machine; there are no other people in the queue. The first one in the queue (Sheldon) buys a can, drinks it and doubles! The resulting two Sheldons go to the end of the queue. Then the next in the queue (Leonard) buys a can, drinks it and gets to the end of the queue as two Leonards, and so on.

For example, Penny drinks the third can of cola and the queue will look like this:

Rajesh, Howard, Sheldon, Sheldon, Leonard, Leonard, Penny, Penny

Input:
The input data consist of an array which contains at least 1 name, and single integer n which may go as high as the biggest number your language of choice supports (if there's such limit, of course).

Output / Examples:
Return the single line — the name of the person who drinks the n-th can of cola. The cans are numbered starting from 1.

PROBLEM:
- Input: array of strings, names AND an integer
  - The integer is the person who we should return
- Output: a string, the name of someone who drinks the nth can (given integer)
- Every time someone drinks a can, the go to the end of the queue array and get doubled
- We start counting people from 1 not 0
- 


["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"]                       - Start, given
["Leonard", "Penny", "Rajesh", "Howard", "Sheldon", "Sheldon"]            - 1 iteration, 1 drink
["Penny", "Rajesh", "Howard", "Sheldon", "Sheldon", "Leonard", "Leonard"] - 2 drinks, 

0 index person

Algorithm:
- Iterate int - 1 times - on each iteration
  - Destructively rotate then append a second last person
    names.rotate!
    names << names[-1]
- return the 0th index person

=end

names = ["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"]

def who_is_next(names, int)
  (int - 1).times do
    names.rotate!
    names << names[-1]
  end
  names[0]
end

p who_is_next(names, 1) == "Sheldon"
p who_is_next(names, 3) == "Penny"
p who_is_next(names, 6) == "Sheldon"
p who_is_next(names, 7) == "Sheldon"
p who_is_next(names, 52) == "Penny"
p who_is_next(names, 7230702951) == "Leonard"