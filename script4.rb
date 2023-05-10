#!/usr/bin/env ruby
# require 'json'

# Open one JSON file and print each line to the screen, using
# File.open do |f|
# end

# CHANGE: If time permits, change this script to accept an argument 
# so it will work with any text file.

path = ARGV
path = path.join("")
puts path

File.open(path).each {|line| puts line}

