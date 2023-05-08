#!/usr/bin/env ruby

# read a list of arguments from the command prompt and print them out
# ruby script1.rb one two three

ARGV.each do |a|
	puts "Argument: #{a}"
end
