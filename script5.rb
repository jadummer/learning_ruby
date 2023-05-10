#!/usr/bin/env ruby
require 'json'

# Open one JSON file and load it using the JSON library and print the top level keys

path = ARGV
path = path.join("")

json = File.read(path)
data_hash = JSON.parse(json)
puts data_hash.keys
