#!/usr/bin/env ruby
require 'json'

# Open one JSON file and load it using the JSON library and print the top level keys

json = File.read("manifest.json")
data_hash = JSON.parse(json)
puts data_hash
