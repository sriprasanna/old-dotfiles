#!/usr/bin/env ruby
current_directory = Dir.pwd
Dir['*'].each do |file|
  link = file
  link = "." + file unless file == "bin"
  puts "linking #{current_directory}/#{file} --> ~/#{link}"
  system "ln -s #{current_directory}/#{file} ~/#{link}"
end