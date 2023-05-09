#!usr/bin/env ruby

# Script 8: Open your ARK list and print each line to the screen, using the File.open() do # |f| ... end block.

f = File.open("arkids.txt")
f.each do |line|
	puts line
end
f.close()