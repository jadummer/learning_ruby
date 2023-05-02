#!/usr/bin/env ruby

if File.exist?("manifest.json")
	puts "manifest.json"
else
	puts "There is no json file in this directory."
end