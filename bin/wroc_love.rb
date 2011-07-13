#!/usr/bin/env ruby

require 'launchy'

def say(msg)
  puts msg
end

def banner
  say <<-EOF

wroc_love.rb Conference 2012
============================
  Ruby and Friends

  March 10-11, 2012
  Wroclaw, Poland

Commands:
  web       Visit conference website
  map       Launch Google map
  follow    Follow us on Twitter
  tweet     Spread the word!
EOF
end

cmd = ARGV.shift

case cmd
when nil
  banner
when "web"
  Launchy.open("http://wrocloverb.com")
when "map"
  Launchy.open("http://maps.google.pl/maps/ms?msid=209535756088857600233.0004a7f42b9530ef04382&msa=0&ll=49.05227,12.65625&spn=11.971802,28.45459")
when "follow"
  Launchy.open("http://twitter.com/wrocloverb")
when "tweet"
  Launchy.open("http://twitter.com/home?status=Fresh%20Ruby-oriented%20conference%20in%20Wroc%C5%82aw%2C%20Poland.%20Get%20ready%20March%202012%3A%20http%3A%2F%2Fwrocloverb.com%20Please%20RT")
end
