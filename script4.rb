#!/usr/bin/env ruby
require 'json'

File.open("manifest.json").each do |line|
	puts JSON.pretty_generate(JSON.parse(line))
end