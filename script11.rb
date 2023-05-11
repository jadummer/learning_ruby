#!usr/bin/env ruby

=begin
Script 11: Accept a directory as an argument; read each file name and print to the 
screen prefix --- File: before each file name; run this on data/dir1 and data/dir2
=end

dir = ARGV
dir = dir.join('')

Dir.entries(dir).each do |file|
	next if file == '.' or file == '..'
		print "File: "
		puts file
end
