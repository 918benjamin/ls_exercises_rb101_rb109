=begin
As seen in the previous exercise, the time of day can be represented as the
number of minutes before or after midnight. If the number of minutes is
positive, the time is after midnight. If the number of minutes is negative,
the time is before midnight.

Write two methods that each take a time of day in 24 hour format, and return
the number of minutes before and after midnight, respectively. Both methods
should return a value in the range 0..1439.

You may not use ruby's Date and Time methods.

Examples:
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

Yes, we know that 24:00 isn't a valid time in 24-hour format. Humor us, though;
it makes the problem more interesting.

Disregard Daylight Savings and Standard Time and other irregularities.

Problem:
- Write two methods, one for before and one for after midnight
- input: string (time in 24:00 format)
- output: integer (number of minutes before or after midnight)
- 


=end

def after_midnight(str)
  return 0 if str == '00:00'
  hrs = str[0, 2].to_i
  mins = str[3, 2].to_i
  (24 - hrs) * 60 + mins
end

def before_midnight(str)
  return 0 if str == '00:00'
  hrs = str[0, 2].to_i
  mins = str[3, 2].to_i
  (23 - hrs) * 60 + (60 - mins)
end

# Test cases
# p after_midnight('00:00') == 0
# p after_midnight('12:34') == 754
# p after_midnight('24:00') == 0

p before_midnight('00:00') == 0
p before_midnight('12:34') == 686
p before_midnight('24:00') == 0