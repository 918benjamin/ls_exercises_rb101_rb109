=begin
Write a program that solicits 6 numbers from the user, then prints a message
that describes whether or not the 6th number appears amongst the first 5 numbers.

Examples:
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].


Understand the Problem
- Ask the user for 6 numbers
- Check if the 6th is within the first 5
- Store the first 5 in an array and output that array in the result

Algorithm
- Ask the user for a number 6 times
  - On times 1-5, put their response into an array
  - On time 6, store their response in a local variable, `check_num`
- Output the result

=end

PROMPT_NUMS = ['1st', '2nd', '3rd', '4th', '5th', 'last']

nums_arr = []
check_num = nil

6.times do |i|
  puts "Enter the #{PROMPT_NUMS[i]} number:"
  if i == 5
    check_num = gets.chomp.to_i
  else
    nums_arr << gets.chomp.to_i
  end
end

puts "The number #{check_num} #{nums_arr.include?(check_num) ? 'appears' : 'does not appear'} in #{nums_arr}."