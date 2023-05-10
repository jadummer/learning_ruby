#!/usr/bin/env ruby
require 'json'
require 'pp'

=begin

1. Open one JSON file and print each image @id using, getting each @id using Hash#dig

2. OOPS: My bad, the manifest was a bad choice here. It doesn't really exercise the 
Hash#dig method. So, do this, open and load data/dir2/ds-catalog-dump-20230328.json 
and use Hash#dig to get the value for each top-level hash in the list 
(thing['labels']['en']['value']). Note that they all have labels.

=end

path = ARGV
path = path.join("")

json = File.read(path)
data_hash = JSON.parse(json) # is an Array
data_hash.each do |h|
	puts h.dig('labels', 'en', 'value')
end

