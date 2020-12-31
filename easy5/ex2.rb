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


New approach:
- If the given number is positive, count up from 00:00
  - when mins reaches 60, add one to hours
  - when hours reaches 24, reset hours to 0
- If the given number is negative, count down from 24:00
  - when the mins reaches 00, start over at 60
  - when hours reaches 0, start over at 24
- Use a hash to store the hours: and mins:
- convert to a string at the end with the rule
  - if either hours or mins is < 9, '0' + hrs or '0' + mins
  else, hrs.to_s or mins.to_s


=end

### Start of my first attempt (pre 109 written assessment)
# def time_of_day(mins)
#   binding.pry
#   arr = ['00', '00']
#   hrs = mins / 60
#   mins_remain = mins % 60
#   case mins <=> 0
#   when -1
#     # 
#   when 1
#     if mins_remain == 0
#       if hrs >= 24
#         hrs = hrs % 24
#       end

#       if hrs < 9
#         arr[0] = '0' + hrs.to_s
#       else
#         arr[0] = hrs.to_s
#       end

      

#     elsif mins_remain < 9
#       arr[1] = '0' + mins_remain.to_s

#     else
#       arr[1] = mins_remain.to_s
#     end
#   end
#   arr.join(':')
# end

### New solution (post 109 written assessment)
def time_of_day(mins)
  hsh = mins >= 0 ? {hrs: 0, mins: 0} : {hrs: 24, mins: 0}
    case mins <=> 0
    when 1
      mins.times do
        hsh[:mins] += 1
        if hsh[:mins] == 60
          hsh[:mins] -= 60
          hsh[:hrs] += 1
        end
        if hsh[:hrs] >= 24
          hsh[:hrs] -= 24
        end
      end
    when -1
      mins.abs.times do
        hsh[:mins] -= 1
        if hsh[:mins] <= 0
          hsh[:mins] += 60
          hsh[:hrs] -= 1
        end
        if hsh[:hrs] < 0
          hsh[:hrs] += 24
        end
      end
    end
    arr = hsh.values.to_a
    arr.map! do |num|
      num > 9 ? num.to_s : '0' + num.to_s
    end.join(':')
end

### LS solution
# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

# def time_of_day(delta_minutes)
#   delta_minutes =  delta_minutes % MINUTES_PER_DAY
#   hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
#   format('%02d:%02d', hours, minutes)
# end

# Test cases
p time_of_day(0) == "00:00"
p time_of_day(3) == "00:03"
p time_of_day(-3) == "23:57"
p time_of_day(35)  == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
p time_of_day(1440) == '00:00'
