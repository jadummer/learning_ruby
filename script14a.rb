#!usr/bin/env ruby

=begin
Script 14a: Same as script 13, but read all the files from the directory and use 
Enumerable#select with a block to select the CSV files.
=end

dir = ARGV
dir = dir.join('')

Dir.entries(dir).select do |file|
	if File.extname(file) == '.csv'
		puts file
	end
end


