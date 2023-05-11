## Learning Ruby

Write a series of scripts that do the following and save each one:

- [x] Script 1: read a list of arguments from the command prompt and print them out

- [x] Script 2: print the arguments as a comma-separated list (Array#join)

  - [x] FIX: The output of `script2.rb a b c d` should be `a, b, c, d`

- [x] Script 3: Take JSON file path from the command line and verify the file exists, print a message to the screen saying so; add a message to print when the file does not.

  - [x] FIX: Script 3 should take an argument `script3.rb data/manifest.json`; the script now hard codes the path and the file exists tests will always evaluate to true; when the file does not exist the script should print a different message:

```shell
$ ruby script3.rb data/manifest.xyz # => "File does not exist: data/manifest.xyz
```

- [x] Script 4: Open _one_ JSON file and print each line to the screen, using
```
File.open do |f|
end
```
 - [x] CHANGE: If time permits, change this script to accept an argument so it will work with any text file.

Do you get a blank line between each printed line? If so, why? How do you fix it without using a regular expression?

- [x] Script 5: Open one JSON file and load it using the JSON library and print the top level keys

- [x] Script 6: Open one JSON file and print each image @id, getting each ID using Hash bracket `[]` notation

- [x] Script 7: Open one JSON file and print each image @id using, getting each `@id` using Hash#dig

  - [x] OOPS: My bad, the manifest was a bad choice here. It doesn't really exercise the `Hash#dig` method. So, do this, open and load `data/dir2/ds-catalog-dump-20230328.json` and use `Hash#dig` to get the `value` for each top-level hash in the list (`thing['labels']['en']['value']`). Note that they all have labels.

- [x] Script 7b: Following the *OOPS* above, load the same file, `data/dir2/ds-catalog-dump-20230328.json`, then

   - Find each *item* (`thing['type'] == 'item'`)
   - Find get all the claims hashes (e.g., `thing['claims']['P16'].each { |claim| .. }`)
   - For each one of these claims print the `id` using bracket notation (i.e., `claim['mainsnak'][...]`)
   - The above should break; why?
   - Now do the same using `Hash#dig`; this shouldn't break

The next scripts don’t deal with JSON; so, you’re starting over

- [x] Script 8: Open your ARK list and print each line to the screen, using the `File.open() do |f| ... end` block.

   - [x] OOPS, again: There's only one ARK here. Do you have a file with more ARK IDs you could use here?

- [x] Script 9: Re-implement your `normalize_string` method, open your ARK list, and print each normalized string to the screen; use the `do ... end` block; try the `/.../` and `%r(...)` notations.

- [x] Script 10: Open the ark list and print each IIIF manifest URL to the screen using string interpolation.

## Working with directories

- [ ] Script 11: Accept a directory as an argument; read each file name and print to the screen prefix `--- File: ` before each file name; run this on `data/dir1` and `data/dir2`

- [ ] Script 12: Same as script 11 for `data/dir2` and `data/dir3`, but also print the prefix with the file extension:

```
-- File, txt: some_file.txt
-- File, csv: some_other_file.csv
etc.
```

- [ ] Script 13: Accept a directory as an argument; select the CSV files; use `Dir[]` with globbing; print each file name to the screen prefixing each with `--- `

- [ ] Script 14: Same as script 13, but read all the files from the directory and use [`Enumerable#all?`](https://ruby-doc.org/3.2.2/Enumerable.html#method-i-all-3F) with a block to select the CSV files.

## Working with images

#### Prep

Install ImageMagick: `brew install ImageMagick`
Install the Rmagick gem: `gem install rmagick`

- [ ] Script 15: Download web JPEGs for [LJS 108](https://openn.library.upenn.edu/Data/0001/html/ljs108.html) into a new folder.

- [ ] Script 16: Combine the JPEGs for [LJS 108](https://openn.library.upenn.edu/Data/0001/html/ljs108.html) as a single PDF; output the PDF to a separate folder.

- [ ] Script 17: Download web JPEGs for [LJS 108](https://openn.library.upenn.edu/Data/0001/html/ljs108.html) into a new folder; combine them as a single PDF; output the PDF to a separate folder; delete the JPEGs after.


## Useful pages

These pages from https://ruby-doc.org will be helpful:

**Array**
https://ruby-doc.org/3.2.2/Array.html

*Array mixes in all these methods:*
https://ruby-doc.org/3.2.2/Enumerable.html

**Dir: directory operations**
https://ruby-doc.org/3.2.2/Dir.html

*Dir[] and Dir.glob*
https://ruby-doc.org/3.2.2/Dir.html#method-c-glob

**Enumerable#any?**
https://ruby-doc.org/3.2.2/Enumerable.html#method-i-all-3F

**File**
https://ruby-doc.org/3.2.2/File.html

**FileUtils**
https://ruby-doc.org/3.2.2/stdlibs/fileutils/FileUtils.html

For equivalents to `rm`, `cp`, `mv`, etc.

**Hash**
https://ruby-doc.org/3.2.2/Hash.html

**JSON**
https://ruby-doc.org/3.2.2/exts/json/JSON.html

**open-uri**
https://ruby-doc.org/3.2.2/stdlibs/open-uri/OpenURI.html

*Downloading files with OpenURI*
https://www.twilio.com/blog/download-image-files-ruby

**Regular expressions**
https://ruby-doc.org/3.2.2/Regexp.html

**RMagick**
https://rmagick.github.io | https://github.com/rmagick/rmagick

*Using Rmagick to combine images in one PDF*
https://stackoverflow.com/a/20638567

**String**
https://ruby-doc.org/3.2.2/String.html

Note especially: `String#sub`, `String#gsub`, `String.chomp`, `String.strip`
