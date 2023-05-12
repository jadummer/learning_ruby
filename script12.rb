#!usr/bin/env ruby

=begin
Script 12: Same as script 11 for data/dir2 and data/dir3, but also print the prefix 
with the file extension:

-- File, txt: some_file.txt
-- File, csv: some_other_file.csv
etc.
=end

dir = ARGV
dir = dir.join('')

Dir.entries(dir).each do |file|
	next if file == '.' or file == '..'
		print "File, #{File.extname(file).strip.downcase[1..-1]}: "
		puts file
end
