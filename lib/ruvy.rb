require 'uv'

# Here platform specific stuff
require 'uv-linux'   if FFI::Platform::OS =~ /linux/
require 'uv-unix'    if FFI::Platform.unix?
require 'uv-darwin'  if FFI::Platform.mac?
require 'uv-windows' if FFI::Platform.windows?

# Back to default
require 'ruvy/version'
require 'ruvy/errors'
require 'ruvy/asseritions'
require 'ruvy/loop'
