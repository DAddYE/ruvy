require 'bundler/setup'
require 'ruvy'

include Ruvy

count = 1

# Check clear timeout
timeout = Timer.set_timeout(1000){ puts "You'll never see me!" }
Timer.set_timeout(500){ Timer.clear_timeout(timeout) }

# Check standard api
Timer.set_timeout(1000){ puts "Got a timeout of 1s" }

# Check interval
interval = Timer.set_interval(1000){ print "\rInterval: #{count+=1} of 5s" }
Timer.set_timeout(5000){ Timer.clear_timeout(interval); puts } # or simply: interval.stop

# TODO: Check errors
# Timer.set_timeout(199){raise "Error"}

puts "Prepare yourself for some timers..."

trap(:INT){abort "Stopping ..."}

Loop.run
puts "Bye"
