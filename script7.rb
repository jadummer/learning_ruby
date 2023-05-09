#!/usr/bin/env ruby
require 'json'
require 'pp'

# Open one JSON file and print each image @id using, getting each @id using Hash#dig

json = File.read("manifest.json")
data_hash = JSON.parse(json) # is a Hash
sequences = data_hash.dig("sequences")
canvases = sequences[0].dig("canvases")
canvases.each do |canvas| 
	#for each hash get the first value of the @id key
	puts canvas["@id"]
end
