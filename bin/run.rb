#!/usr/bin/env ruby

day = ARGV[0]
require File.expand_path("day#{day}/day#{day}.rb")
puts "Day#{day}"
cons = const_get("Day#{day}")
puts cons

Run.new.call
