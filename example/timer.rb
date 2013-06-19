require 'bundler/setup'
require 'ruvy'

include Ruvy::Timer

count = 1

# Check clear timeout
timeout = set_timeout(1000){ puts "You'll never see me!" }
set_timeout(500){ clear_timeout(timeout) }

# Check standard api
set_timeout(1000){ puts "Got a timeout of 1s" }

# Check interval
interval = set_interval(1000){ print "\rInterval: #{count+=1} of 5s" }
set_timeout(5000){ clear_timeout(interval); puts } # or simply: interval.stop

# TODO: Check errors
# set_timeout(199){raise "Error"}

puts "Prepare yourself for some timers..."

trap(:INT){fail "Stopping ..."}

Ruvy::Loop.run
puts "Bye"
