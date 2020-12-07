=begin
Write a method that takes a floating point number that represents an angle
between 0 and 360 degrees and returns a String that represents that angle in
degrees, minutes and seconds. You should use a degree symbol (°) to represent
degrees, a single quote (') to represent minutes, and a double quote (") to
represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

Note: your results may differ slightly depending on how you round values,
but should be within a second or two of the results shown.

You should use two digit numbers with leading zeros when formatting the
minutes and seconds, e.g., 321°03'07".

You may use this constant to represent the degree symbol:
DEGREE = "\xC2\xB0"

Problem:
- Input: Float
- Output: String
  - "x°yy'zz\""



=end

DEGREE = "\xC2\xB0"

### My solution:
def append_time(result, remainder, time, mins=true)
  if remainder.round == remainder
    result << (mins ? "00'" : "00\"")
  elsif time > 10
    result << time.to_i.to_s + (mins ? "'" : "\"")
  else
    result << "0" + time.to_i.to_s + (mins ? "'" : "\"")
  end
end

def dms(angle)
  result = ''
  result << angle.to_i.to_s + "\xC2\xB0"

  remainder = (angle - angle.to_i).round(6)
  mins = remainder * 60

  append_time(result, remainder, mins)
  # if remainder.round == remainder
  #   result << "00'" 
  # elsif mins > 10
  #   result << mins.to_i.to_s + "'"
  # else
  #   result << "0" + mins.to_i.to_s + "'"
  # end

  remainder = (mins - mins.to_i).round(6)
  secs = remainder * 60

  append_time(result, remainder, secs, false)
  # if remainder.round == remainder
  #   result << "00\"" 
  # elsif secs > 10
  #   result << secs.to_i.to_s + "\""
  # else
  #   result << "0" + secs.to_i.to_s + "\""
  # end

  p result
end



# Test cases
p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")