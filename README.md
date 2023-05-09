## Learning Ruby

Write a series of scripts that do the following and save each one:

- [x] Script 1: read a list of arguments from the command prompt and print them out

- [x] Script 2: print the arguments as a comma-separated list (Array#join)

- [x] Script 3: Take JSON file path from the command line and verify the file exists, print a message to the screen saying so; add a message to print when the file does not.

- [x] Script 4: Open _one_ JSON file and print each line to the screen, using
```
File.open do |f|
end
```
Do you get a blank line between each printed line? If so, why? How do you fix it without using a regular expression?

- [x] Script 5: Open one JSON file and load it using the JSON library and print the top level keys

- [x] Script 6: Open one JSON file and print each image @id, geting each ID using Hash bracket `[]` notation

- [x] Script 7: Open one JSON file and print each image @id using, getting each `@id` using Hash#dig

The next scripts don’t deal with JSON; so you’re starting over

- [x] Script 8: Open your ARK list and print each line to the screen, using the `File.open() do |f| ... end` block.

- [ ] Script 9: Reimplement your `normalize_string` method, open your ARK list, and print each normalized string to the screen; use the `do ... end` block; try the `/.../` and `%r(...)` notations.

- [ ] Script 10: Open the ark list and print each IIIF manifest URL to the screen using string interpolation.

These pages from https://ruby-doc.org will be helpful:

String
https://ruby-doc.org/3.2.2/String.html
Note especially: String#sub, String#gsub, String.chomp, String.strip

File
https://ruby-doc.org/3.2.2/File.html

Array
https://ruby-doc.org/3.2.2/Array.html

Array mixes in all these methods:
https://ruby-doc.org/3.2.2/Enumerable.html

JSON
https://ruby-doc.org/3.2.2/exts/json/JSON.html

Hash
https://ruby-doc.org/3.2.2/Hash.html

Regular expressions
https://ruby-doc.org/3.2.2/Regexp.html
