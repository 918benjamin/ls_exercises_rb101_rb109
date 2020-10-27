=begin
Write a method that takes two strings as arguments, determines the longest of
the two strings, and then returns the result of concatenating the shorter
string, the longer string, and the shorter string once again. You may assume
that the strings are of different lengths.

Examples:
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"


Understand the problem:
- input: two strings
- output: one string
- Which input string is longer?
- Output is short + long + short all in one string
- Strings will be different lengths
- Length is what we care about here, not order (alphabetical, ascii, etc)
- Write a method

short_long_short('abc', 'defgh') == "abcdefghabc"
'abc' length is 3
'defgh' length is 5
'defgh' is long
'abc' is short


Algorithm
- Record the length of str1
- Record the length of str2
- If str1's length is larger, str1 is `long'
  - otherwise, str1 is `short`
- if str2's length is larger, str2 is `long`
  - otherwise, str2 is `short`
- Add the short + long + short and return


=end

def short_long_short(str1, str2)
  long = str1.length > str2.length ? str1 : str2
  short = str2.length > str1.length ? str1 : str2

  short + long + short
end


# Test cases
p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"