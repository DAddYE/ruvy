module Ruvy

  module Timer
    include Handle
    extend self

    class TimerError < StandardError; end

    def set_timeout(timeout, &block)
      start(timeout, 0, &block)
    end

    def set_interval(interval, &block)
      start(interval, interval, &block)
    end

    def clear_timeout(timer)
      timer.stop
    end
    alias :clear_interval :clear_timeout

    private
    def callbacks
      @_callbacks ||= []
    end

    def start(timout, repeat, &block)
      callbacks << block
      cb = -> (i){ block.arity > 0 ? block[i] : block[]; callbacks.delete(block); }
      timer = UV::Timer.new create_handle(:uv_timer, UV.method(:timer_stop))
      err = UV.timer_init(Ruvy::Loop.default_loop, timer)
      raise TimerError unless err.zero?
      err = timer.start(cb, timout, repeat)
      raise TimerError unless err.zero?
      timer
    end
  end
end
