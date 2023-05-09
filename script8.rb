#!usr/bin/env ruby

# Script 8: Open your ARK list and print each line to the screen, using the File.open() do # |f| ... end block.

f = File.open("data/arkids.txt")
f.each { |line| puts line }