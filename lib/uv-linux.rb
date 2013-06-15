require 'ffi'

module UV
  extend FFI::Library
  ffi_lib 'uv'

end
