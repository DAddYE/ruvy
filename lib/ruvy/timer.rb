module Ruvy
  class Timer < Handle
    attr_reader :callbacks

    # + (Integer) timer_again(handle)
    # Stop the timer, and if it is repeating restart it using the repeat value as the timeout.
    # + (Timer) timer_cb
    # (Not documented).
    # + (Integer) timer_get_repeat(handle)
    # Set the repeat value in milliseconds.
    # + (Integer) timer_init(loop, handle)
    # uv_timer_t is a subclass of uv_handle_t.
    # + (nil) timer_set_repeat(handle, repeat)
    # Set the repeat value in milliseconds.
    # + (Integer) timer_start(handle, cb, timeout, repeat)
    # Start the timer.
    # + (Integer) timer_stop(handle)
    #
    # #again, #get_repeat, #set_repeat, #start, #stop
    #
    def initialize(*args)
      super(*args)
      @timer = UV::Timer.new
      @callbacks = []
      UV.timer_init(@loop, @timer)
    end

    def start(timeout, repeat=1, &block)
      @callbacks << block # This will prevent ruby GC to destroy block var
      cb = -> (i){ block.arity > 0 ? block[i] : block[]; @callbacks.delete(block) }
      @timer.start(cb, timeout, repeat)
      @timer
    end

    def stop
      @timer.stop
    end

    class << self
      def set_timeout(timeout, &block)
        Timer.new.start(timeout, 0, &block)
      end

      def set_interval(interval, &block)
        Timer.new.start(interval, interval, &block)
      end

      def clear_timeout(timer)
        timer.stop
      end
      alias :clear_interval :clear_timeout
    end
  end
end
