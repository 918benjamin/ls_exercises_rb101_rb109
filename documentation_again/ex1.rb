# Locate the ruby documentation for methods File::path and File#path. 
# How are they different?

# File::path is a class method given to the entire class and called
# on the class itself.
# It returns a string representation of the path of the file object.

# File#path is an instance method that is accessible to instances
# of the class. It also returns a string representing the file object's
# path, but only the path used to create the file. If the file has changed,
# as in moved or deleted, the pathname becomes void.

# From the solution, the real key here is distinguishing between a class
# method (::method in the Ruby docs) and an instance method (#method in docs)

# A class method is called on the class itself, while an instance method is
# call on an object.

# Class method example:
# File.path - File with a capital F is the class

# Instance method example
File.new.('my-file.txt').path
# OR
f = File.new('my-file.txt')
puts f.path

# The File.new method returns a new instance of class File, so when
# we invoke the File#path method on this new object, it's the instance method
# path and not the class method path.