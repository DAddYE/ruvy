module Ruvy
  module Loop
    extend self
    include Asseritions

    ##
    # This function runs the event loop. It will act differently depending on the
    # specified mode.
    #
    # ## Example
    #
    #     def foo
    #       :bar
    #     end
    #
    # @param mode [Symbol] where `mode` can be:
    #
    #   * **:default**: Runs the event loop until the reference count drops to
    #     zero. Always returns zero.
    #
    #   * **:once**: Poll for new events once. Note that this function blocks if
    #     there are no pending events. Returns zero when done (no active handles
    #     or requests left), or non-zero if more events are expected (meaning you
    #     should run the event loop again sometime in the future).
    #
    #   * **:nowait**: Poll for new events once but don't block if there are no
    #     pending events.
    #
    # @return [Integer]
    #
    def run(mode=:default)
      UV.run(default_loop, :"uv_run_#{mode}")
    end

    def default_loop
      @_default_loop ||= FFI::AutoPointer.new(UV.default_loop, UV.method(:loop_delete))
    end

    ##
    # This function will stop the event loop by forcing uv_run to end
    # as soon as possible, but not sooner than the next loop iteration.
    # If this function was called before blocking for i/o, the loop won't
    # block for i/o on this iteration.
    #
    # @return [NilClass]
    #
    def stop
      UV.stop(default_loop)
      UV.loop_delete(default_loop)
      @_default_loop = nil
    end

    ##
    # Return the current timestamp in milliseconds. The timestamp is cached at
    # the start of the event loop tick, see {#update_time} for details and
    # rationale.
    #
    # The timestamp increases monotonically from some arbitrary point in time.
    # Don't make assumptions about the starting point, you will only get
    # disappointed.
    #
    # Use `hrtime` if you need sub-milliseond granularity.
    #
    # @return [Integer]
    #
    def now
      UV.now(default_loop)
    end

    ##
    # Update the event loop's concept of "now". Libuv caches the current time
    # at the start of the event loop tick in order to reduce the number of
    # time-related system calls.
    #
    # You won't normally need to call this function unless you have callbacks
    # that block the event loop for longer periods of time, where "longer" is
    # somewhat subjective but probably on the order of a millisecond or more.
    #
    # @return [NilClass]
    #
    def update_time
      UV.update_time(default_loop)
    end

    ##
    # Most functions return boolean: 0 for success and -1 for failure.
    # On error the user should then call uv_last_error() to determine
    # the error code.
    #
    # @return [Array] of two elements: `[code, message]`
    #
    def last_error
      err  = UV.last_error(default_loop)
      name = UV.err_name(err)
      msg  = UV.strerror(err)
      [name, msg]
    end
  end
end
