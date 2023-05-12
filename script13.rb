#!usr/bin/env ruby

=begin
Script 13: Accept a directory as an argument; select the CSV files; use Dir[] 
with globbing; print each file name to the screen prefixing each with --- 
=end

dir = ARGV
dir = dir.join('')

Dir.glob("*.csv", base: dir) do |file|
	puts "--- #{file}"
end