=begin
You are given a method named spin_me that takes a string as an argument and
returns a string that contains the same words, but with each word's characters
reversed. Given the method's implementation, will the returned string be the
same object as the one passed in as an argument or a different object?

Answer: No. Immediately `split` is invoked on local variable `str` which returns
an Array so there's no way to return the same string UNLESS we removed all the
characters from str and replaced them one by one within the block, which doesn't
happen here.

=end

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end



# Test cases

spin_me("hello world") # "olleh dlrow"