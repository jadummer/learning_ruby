#!/usr/bin/env ruby

require 'nokogiri'
require 'json'

infile = ARGV.shift # remove the first argument
outfile = ARGV.shift # remove the second argument

# if there's a second argument (the `outfile`); then write to that
# otherwise, print the results to the terminal (STDOUT, or standard output)
output = outfile ? File.open(outfile) : STDOUT

# Open the XML file and strip away those pesky XML namespaces
xml = File.open(infile) { |f| Nokogiri::XML f }
xml.remove_namespaces!

# find every mediawiki/page element with in JSON format (some are HTML, we don't want those)
xpath = '/mediawiki/page[./revision/format/text() = "application/json"]'

# create a hash by iterating each selecting mediawiki/page,
# getting the ID and the JSON text
# `#inject({})` creates a hash (that is, `{}`) and then passes that
# hash, as `hash` to the block with each `page`
data = xml.xpath(xpath).inject({}) { |hash, page|
  # each `page` is nokogiri node, so we can call `#xpath()` on it to
  # return whatever bit we want

  # first get the ID (IDs are unique)
  id = page.xpath('./id/text()').text.to_i

  # next, get the text -- this is the JSON bit
  # add the JSON to the hash using the `id` as key
  hash[id] = page.xpath('./revision/text/text()').text
  hash
}

##
# create an array of JSON data in the order of the IDs
# sort the keys; that is, the IDs; then create an array with `#map`
# of the JSON bits
json = data.keys.sort.map { |id| output.puts data[id] }

# output the json blobs as a JSON Array
output.puts "["
output.puts json.join ",\n"
output.puts "]"

