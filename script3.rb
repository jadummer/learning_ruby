#!/usr/bin/env ruby

# Take JSON file path from the command line and verify the file exists, 
# print a message to the screen saying so; 
# add a message to print when the file does not.

if File.exist?("manifest.json")
	puts "manifest.json exists"
else
	puts "There is no json file in this directory."
end
