# Mehtods: ref, unref, is_active, close, has_ref

module Ruvy
  class Handle
    attr_reader :handle, :loop

    def initialize(loop=UV.default_loop)
      @handle = UV::Handle.new
      @loop   = loop
    end
  end
end
