require "pry"
require "pry-byebug"

def weird_case(str)
  binding.pry
  chars = str.chars
  flip = true
  chars = chars.map do |char|
    if char == ' '
      char
    elsif flip
      flip = false
      char.upcase
    else
      flip = true
      char
    end
  end
  chars.join
end


# test cases
p weird_case("String") #== "StRiNg"
# p weird_case("Weird string case") #== "WeIrD sTrInG cAsE"
# p weird_case("string") #== "StRiNg"