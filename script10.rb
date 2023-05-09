#!usr/bin/env ruby

# Script 10: Open the ark list and print each IIIF manifest URL to the screen using string # interpolation.

# create variables to use to build each iiif manifest url
iiif_manifest_prefix = "https://colenda.library.upenn.edu/phalt/iiif/2/81431-"
iiif_manifest_suffix = "/manifest"

f = File.open("arkids.txt")
f.each do |line|
	iiif_manifest_url = "#{iiif_manifest_prefix}line#{iiif_manifest_suffix}"
	puts iiif_manifest_url
end