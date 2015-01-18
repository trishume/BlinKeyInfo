#!/usr/bin/env ruby

# require "blink1"

def set_colour(r,g,b)
  # Blink1.open do |blink1|
  #   blink1.fade_to_rgb(r,g,b)
  # end
  system "blink1-tool -q --rgb=#{r.to_i},#{g.to_i},#{b.to_i}"
end

set_colour(200,0,200)
