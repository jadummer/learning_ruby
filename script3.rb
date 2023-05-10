#!/usr/bin/env ruby

# Take JSON file path from the command line and verify the file exists, 
# print a message to the screen saying so; 
# add a message to print when the file does not.

# FIX: Script 3 should take an argument script3.rb data/manifest.json; 
# the script now hard codes the path and the file exists tests will 
# always evaluate to true; when the file does not exist the script should 
# print a different message: $ ruby script3.rb data/manifst.xyz # => 
# File does not exist: data/manifest.xyz

path = ARGV
path = path.join("")
puts path

def file_exist(str)
	if File.exist?(str)
		puts "File exists: #{str}"
	else
		puts "File does not exist: #{str}"
	end
end

file_exist(path)
