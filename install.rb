#!/usr/bin/env ruby
Dir['*'].each do |file|
  link = file
  link = "." + file unless file == "bin"
  puts "linking file --> ~/#{link}"
  system "ln -s file ~/#{link}"
end