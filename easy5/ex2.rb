=begin
The time of day can be represented as the number of minutes before or after
midnight. If the number of minutes is positive, the time is after midnight.
If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns
the time of day in 24 hour format (hh:mm). Your method should work with any
integer input.

You may not use ruby's Date and Time classes.

Disregard Daylight Savings and Standard Time and other complications.

Examples:
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
00:00 == 24:00
24:00 - 3 is 23:57 (24 - 1 and 60 - 3)
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"

time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

Understand the problem:
- input: integer (minutes before or after midnight)
- output: string (representation of the time)
- midnight is 0 mins or '00:00'
- 720 is the maximum number of minutes in one 12-hour period, 1440 in 24-hours
  - After that our count resets to 00:00 midnight
- 60 mins max in an hour
- We need to account for resetting back to 0 at the maximum in both directions
  - Negative and positive

Algorithm
- Create a local 
- Check if the given number 'mins' is greater than, less than, or 0
  (case mins <=> 0, when -1 its negative, when 1 its positive)
- If mins is 0, return '00:00'
- if mins is negative
    -
- If mins is positive
  - 


=end

require 'pry'
require 'pry-byebug'

def time_of_day(mins)
  binding.pry
  arr = ['00', '00']
  hrs = mins / 60
  mins_remain = mins % 60
  case mins <=> 0
  when -1
    # 
  when 1
    if mins_remain == 0
      if hrs >= 24
        hrs = hrs % 24
      end

      if hrs < 9
        arr[0] = '0' + hrs.to_s
      else
        arr[0] = hrs.to_s
      end

      

    elsif mins_remain < 9
      arr[1] = '0' + mins_remain.to_s

    else
      arr[1] = mins_remain.to_s
    end
  end
  arr.join(':')
end


# Test cases
# p time_of_day(0) == "00:00"
# p time_of_day(3) == "00:03"
# p time_of_day(-3) == "23:57"
# p time_of_day(35)  == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
p time_of_day(800) #== "13:20"
# p time_of_day(-4231) == "01:29"
# p time_of_day(1440) == '00:00'