# Mehtods: ref, unref, is_active, close, has_ref

module Ruvy
  module Handle
    def create_handle(type, release)
      FFI::AutoPointer.new UV.malloc(UV.handle_size(type)), release
    end
  end
end
