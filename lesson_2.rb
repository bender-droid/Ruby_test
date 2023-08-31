require 'date'

def next_day
  this_day = Date.today
  this_day.next.to_time
end

puts next_day
