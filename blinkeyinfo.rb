#!/usr/bin/env ruby

require "blink1"

def set_colour(r,g,b)
  Blink1.open do |blink1|
    blink1.fade_to_rgb(100,r,g,b)
  end
  # system "blink1-tool -q --rgb=#{r.to_i},#{g.to_i},#{b.to_i}"
end

def load_average
  res = `sysctl vm.loadavg`.split
  res[2].to_f
end

case
when Time.now.hour >= 22 || Time.now.hour < 7
  set_colour(0,0,0)
when load_average > 2.0
  set_colour(200,0,0)
else
  set_colour(0,120,200)
end
