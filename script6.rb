#!/usr/bin/env ruby
require 'json'
require 'pp'

# Open one JSON file and print each image @id, geting each ID using Hash bracket [] notation

path = ARGV
path = path.join("")

json = File.read(path)
data_hash = JSON.parse(json) # is a Hash
sequences = data_hash["sequences"] # is an Array
canvases = sequences[0]["canvases"] # is an Array
canvases.each do |canvas| 
	#for each hash get the first value of the @id key
	puts canvas["@id"]
end

