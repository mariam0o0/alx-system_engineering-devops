#!/usr/bin/env ruby
#The regular expression that matches a pattern

puts ARGV[0].scan(/\[from:(.*)\]\s\[to:(.*)\]\s\[flags:(.*?)\]/).join(',')
