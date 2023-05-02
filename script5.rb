#!/usr/bin/env ruby
require 'json'

json = File.read("manifest.json")
data_hash = JSON.parse(json)
puts data_hash
