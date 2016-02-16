require 'time'
require 'Date'

now = Time.parse("25, Jan 2001")
now2 = Time.parse("6:38PM")

range =  now..now2
puts range