#!/usr/bin/env ruby
#Regular expression matches a string starts with h ends with n and have single character in between

puts ARGV[0].scan(/^h.n$/).join
