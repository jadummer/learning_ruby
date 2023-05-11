#!usr/bin/env ruby

=begin
Script 8: Open your ARK list and print each line to the screen, using the 
File.open() do # |f| ... end block.

OOPS, again: There's only one ARK here. Do you have a file with more ARK 
IDs you could use here?

added more arkids to the existing txt file
=end

path = ARGV
path = path.join("")

f = File.open(path)
f.each { |line| puts line }