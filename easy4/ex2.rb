=begin
Write a method that takes a year as input and returns the century.
The return value should be a string that begins with the century number, and
ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01.
So, the years 1901-2000 comprise the 20th century.

Examples:

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

Understand the problem:
- Input: integer (year)
- Output: string (century with proper suffix
- Century is 1901-2000
- 

Algorithm
- Get the `century` number
  - If the given number divided by 100 has no remainder
    - `century` is the given number / 100
  - else, `century` is the given number / 100 + 1
  - convert `century` to a string
- Get the `suffix`
  - get the last two digits
    - If the last digit is 4-9 or 0, suffix is 'th'
    - if the last digit is 1, 2, 3, suffix is corresponds
      - unless the 2nd to last digit is a 1, then suffix is 'th'
- add `suffix` to `century` and return


=end

def century(num)
  year = num / 100
  year += 1 if num % 100 != 0
  year = year.to_s
  
  if year[-2] == '1'
    year << 'th'
  elsif year[-1] == '1'
    year << 'st'
  elsif year[-1] == '2'
    year << 'nd'
  elsif year[-1] == '3'
    year << 'rd'
  else
    year << 'th'
  end
  
  year
end

# century(2000)
# century(2001)
# century(1965)

# Test cases
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'




=begin

1st
2nd
3rd
4th
5th
6th
7th
8th
9th
10th
11th
12th
13th
14th
15th
16th
17th
18th
19th
20th
21st
22nd
23rd
24th
25th
26th
27th
28th
29th
30th
31st
32nd
33rd
34th
35th

=end