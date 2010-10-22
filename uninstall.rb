#!/usr/bin/env ruby
Dir['*'].each do |file|
  link = file
  link = "." + file unless file == "bin"
  system "rm -rf  ~/#{link}"
end