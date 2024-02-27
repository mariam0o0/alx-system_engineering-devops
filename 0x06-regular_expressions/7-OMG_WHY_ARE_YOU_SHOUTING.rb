#!/usr/bin/env ruby
#The regular expression that only matches: capital letters

puts ARGV[0].scan(/[A-Z]/).join
