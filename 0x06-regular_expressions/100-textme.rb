#!/usr/bin/env ruby
#The regular expression that matches a pattern

puts ARGV[0].scan(/\[from:\w+\]\s\[to:.+\]\s\[flags:.+?\]/).join(',')
