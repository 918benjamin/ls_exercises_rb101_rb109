=begin
You have a bank of switches before you, numbered from 1 to n. Each switch is
connected to exactly one light that is initially off. You walk down the row of
switches and toggle every one of them. You go back to the beginning, and on this
second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go
back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat
this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and
returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].

Problem:
- input: integer (both the number of lights and the number of rounds/repetitions)
   - rounds is actually n - 1 because the first round is turning them all on
   - future rounds are 

Approach
- Initialize a hash of n keys all with the value false (off)
- Iterate n times and on each iteration (1.upto(n)):
  - Iterate through each key:value pair using the the pattern
    - reverse the boolean if key % n == 0
- return an array of the keys for which the value is false
  - Select just the pairs which have a true value
  - return the resulting keys only

=end

# test cases
def lights_on(n)
  lights = []
  n.times {|_| lights << false }
  
  1.upto(n) do |num|
    lights.map!.with_index do |light, index|
      (index + 1) % num == 0 ? !light : light
    end
  end
  lights.map!.with_index do |light, index|
    light ? index + 1 : light
  end
  lights.select {|light| light}
end

p lights_on(5) == [1, 4]
p lights_on(10) == [1, 4, 9]
p lights_on(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]