require 'bundler/setup'
require 'ruvy'

# From libuv book:
#
#   int64_t counter = 0;
#
#   void wait_for_a_while(uv_idle_t* handle, int status) {
#       counter++;
#
#       if (counter >= 10e6)
#           uv_idle_stop(handle);
#   }
#
#   int main() {
#       uv_idle_t idler;
#
#       uv_idle_init(uv_default_loop(), &idler);
#       uv_idle_start(&idler, wait_for_a_while);
#
#       printf("Idling...\n");
#       uv_run(uv_default_loop(), UV_RUN_DEFAULT);
#
#       return 0;
#   }

include UV

trap(:INT){puts "Stopping ..."; stop default_loop}

counter = 0

wait_for_a_while = -> (handle, status) do
  idle_stop(handle) if (counter += 1) > 10e6
end

idle = Idle.new
idle_init(default_loop, idle)
idle_start(idle, wait_for_a_while)

begun_at = Time.now

puts "Idling ..."
run default_loop, :uv_run_default

puts "Completed in: %.2fs" % [Time.now-begun_at]
