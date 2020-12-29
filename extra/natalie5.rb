# https://www.codewars.com/kata/52f78966747862fc9a0009ae/train/ruby

=begin
Your job is to create a calculator which evaluates expressions in Reverse Polish notation.
https://en.wikipedia.org/wiki/Reverse_Polish_notation

For example expression 5 1 2 + 4 * + 3 - (which is equivalent to 5 + ((1 + 2) * 4) - 3 in normal notation) should evaluate to 14.

For your convenience, the input is formatted such that a space is provided between every token.

Empty expression should evaluate to 0.

Valid operations are +, -, *, /.

You may assume that there won't be exceptional situations (like stack underflow or division by zero).

Examples:
calc("") == 0 # Should work with empty string
calc("3") == 3 # Should parse numbers
calc("3.5") == 3.5 # Should parse float numbers
calc("1 3 +") == 4 # Should support addition
calc("1 3 *") == 3 # Should support multiplication
calc("1 3 -") == -2 # Should support subtraction
calc("4 2 /") == 2 # Should support division
calc("5 1 2 + 4 * + 3 -") == 14


=end
## Natalie's solution
OPERATIONS = ["*", "+", "-", "/"]

# def calc(str)
#   return 0 if str.empty?
  
#   str_ar = str.split
#   temp_nums = []
#   final_num = nil
  
#   str_ar.each do |ele|
#     if ele.to_f.to_s == ele
#       temp_nums << ele.to_f
#     elsif ele.to_i.to_s == ele
#       temp_nums << ele.to_f
#     elsif OPERATIONS.include?(ele)
#       num1 = temp_nums.pop
#       final_num.nil? ? num2 = temp_nums.pop : num2 = final_num
      
#       final_num  = case ele
#                    when "*"
#                      num2 * num1
#                    when "/"
#                      num2 / num1
#                    when "+"
#                      num2 + num1
#                    when "-"
#                      num2 - num1
#                   end
    
#     end
#   end
  
#   final_num.nil? ? temp_nums[0] : final_num
# end

#code wars solution
def calc(expr)
  expr.split.each_with_object([]) { |ele, ar|
    if ele.match(/\d+/)
      ar << ele.to_f
    else
      y, x = ar.pop, ar.pop
      ar << x.send(ele, y)
    end
  }.last || 0
end

p calc("") == 0 # Should work with empty string
p calc("3") == 3 # Should parse numbers
p calc("3.5") == 3.5 # Should parse float numbers
p calc("1 3 +") == 4 # Should support addition
p calc("1 3 *") == 3 # Should support multiplication
p calc("1 3 -") == -2 # Should support subtraction
p calc("4 2 /") == 2 # Should support division
p calc("5 1 2 + 4 * + 3 -") == 14
