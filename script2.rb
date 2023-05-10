#!/usr/bin/env ruby

# print the arguments as a comma-separated list (Array#join)
# ruby script2.rb hello how are you
# returns ["hello," "how," "are," "you"]

# FIX: The output of script2.rb a b c d should be a, b, c, d

input_array = ARGV
puts input_array.join(", ")

