#!usr/bin/env ruby

=begin
Script 14b: Same as script 14a, except use Enumerable#reject to select the CSV files.
=end

dir = ARGV
dir = dir.join('')

Dir.entries(dir).reject do |file|
	next if File.extname(file) != '.csv'
	puts file
end