# Sometimes, the documentation is going to leave you scratching your head.

# In a very early assignment at Launch School, you are tasked with writing
# a program that loads some text messages from a YAML file. We do this 
# with YAML::load_file:

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# Find the documentation for YAML::load_file.

# I already have a hunch that this won't be in the provided Ruby
# documentation because it was developed separately. But let's see.

# I found YAML::load_file in Ruby 1.8.6 by searching
# https://ruby-doc.org/stdlib-1.8.6/libdoc/yaml/rdoc/YAML.html#method-c-load_file

# From the solution:
# https://ruby-doc.org/stdlib-2.7.1/libdoc/psych/rdoc/Psych.html#method-c-load_file
# The YAML pages are unhelpful, but they reference the Psych module which is part of the
# standard library. YAML is an alias of Psych, so we can check there to find 
# info about the ::load_file module.