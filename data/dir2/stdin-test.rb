#!/usr/bin/env ruby

require 'tempfile'

files = if ARGV.first == '-'
          ARGV.clear
          ARGF
        else
          ARGV
        end

tmpfile = Tempfile.open('files')


files.each do |f|
  tmpfile.puts f
end

tmpfile.close

# puts system pwd
system "cat #{tmpfile.path} | xargs file"

tmpfile.unlink