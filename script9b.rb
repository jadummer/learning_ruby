#!usr/bin/env ruby

# Reimplement your normalize_string method, open your ARK list, and print each normalized 
# string to the screen; use the do ... end block; try the /.../ and %r(...) notations.

puts "Enter a phrase that contains whitespace."
phrase = gets

RE_WHITESPACE = Regexp.compile(%r{\s+})
def normalize_string(str)
	return str.gsub(RE_WHITESPACE, '')
end

puts normalize_string(phrase)


