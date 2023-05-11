#!usr/bin/env ruby
require 'json'
require 'pp'

=begin
Following the *OOPS* from 7, load the same file, `data/dir2/ds-catalog-dump-20230328.json`, 
then:
   - Find each *item* (`thing['type'] == 'item'`)
   - Find get all the claims hashes (e.g., `thing['claims']['P16'].each { |claim| .. }`)
   - For each one of these claims print the `id` using bracket notation 
   (i.e., `claim['mainsnak'][...]`)
   - The above should break; why?
   P16 is an array
   - Now do the same using `Hash#dig`; this shouldn't break
=end

path = ARGV
path = path.join("")

RE_PNUM = Regexp.compile(/P\d\d/)

json = File.read(path)
data_hash = JSON.parse(json) # is an Array
data_hash.each do |h|
   if h['type'] == 'item' 
      if h['claims'].is_a? Hash
         if h.dig('claims', 'P47', 0, 'id')
            puts h.dig('claims', 'P47', 0, 'id')
         elsif  h.dig('claims', 'P16', 0, 'id')  
            puts h.dig('claims', 'P16', 0, 'id')
         else
            puts "No id"
         end
      else
         puts "Not a Hash"
      end
   else
      puts "Not an item"
   end
end





