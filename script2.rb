#!/usr/bin/env ruby

# print the arguments as a comma-separated list (Array#join)
# ruby script2.rb hello how are you
# returns ["hello," "how," "are," "you"]

input_array = ARGV

input_array.to_s
puts input_array.join(", ")

