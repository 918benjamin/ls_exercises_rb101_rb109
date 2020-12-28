https://www.codewars.com/kata/52774a314c2333f0a7000688

=begin
Write a method called that takes a string of parentheses, and determines if the order of the parentheses is valid. The method should return true if the string is valid, and false if it's invalid.

Examples:
"()"              =>  true
")(()))"          =>  false
"("               =>  false
"(())((()())())"  =>  true

There can be 0 up to 100 parentheses
Along with opening (() and closing ()) parenthesis, input may contain any valid ASCII characters.
Furthermore, the input string may be empty and/or not contain any parentheses at all.
Do not treat other forms of brackets as parentheses (e.g. [], {}, <>).

=end


# Test cases
valid_parentheses("()") == true
valid_parentheses(")(()))" == false
valid_parentheses("(") == false
valid_parentheses("(())((()())())" == true
