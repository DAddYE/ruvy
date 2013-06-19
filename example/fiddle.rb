require 'fiddle'
require 'fiddle/import'

module UV
  include Fiddle
  include Fiddle::CParser
  extend  Fiddle::Importer
  extend  self

  dlload File.expand_path("../../ext/libuv/libuv.dylib", __FILE__)

  def version
    fn(:version_string, :voidp).call.to_s
  end

  def default_loop
    @_default_loop ||=
      UV.fn(:default_loop, :voidp).call
  end

  def run(mode=0)
    UV.fn(:run, :int, :voidp, :int).call(default_loop, mode)
  end

  def create_handle(type)
    Pointer.malloc handle_size(type), handler['free']
  end

  def handle_size(type)
    handle = handle_types.fetch(type, type)
    fn(:handle_size, :llong, :int).call(handle)
  end

  def cb(*args, &block)
    ret_type  = c_type(args.shift)
    args_type = args.map(&method(:c_type))
    Closure::BlockCaller.new(ret_type, args_type){ |*a| block[*a] }
  end

  def fn(*args)
    name = args.shift
    (@_fns ||= {}).fetch name do
      fn = handler["#{name}"] || handler["uv_#{name}"]
      raise DLError, "cannot find the function: #{name}()" unless fn
      options   = args[-1].is_a?(Hash) ? args.pop : {}
      options   = {name: name}.merge(options)
      call_type = options.delete(:call_type) || Function::DEFAULT
      ret_type  = c_type(args.shift)
      args_type = args.map(&method(:c_type))
      Function.new(fn, args_type, ret_type, call_type, options)
    end
  end

  class CTypeError < StandardError; end

  def c_type(type=nil)
    @_c_types ||= Hash[
      :void,      TYPE_VOID,
      :voidp,     TYPE_VOIDP,
      :int,       TYPE_INT,
      :uint,     -TYPE_INT,
      :llong,     TYPE_LONG_LONG,
      :ullong,   -TYPE_LONG_LONG,
      :char,      TYPE_CHAR,
      :uchar,    -TYPE_CHAR,
      :short,     TYPE_SHORT,
      :ushort,   -TYPE_SHORT,
      :long,      TYPE_LONG,
      :float,     TYPE_FLOAT,
      :double,    TYPE_DOUBLE,
      :size_t,    TYPE_SIZE_T,
      :ssize_t,   TYPE_SSIZE_T,
      :ptrdiff_t, TYPE_PTRDIFF_T,
      :intptr_t,  TYPE_INTPTR_T,
      :uintptr_t, TYPE_UINTPTR_T
    ]
    case type
    when Integer
      @_c_types.invert.fetch(type, type)
    when Symbol, String
      @_c_types[type] || CTypeError.new("#{type} not found!")
    when nil
      @_c_types
    end
  end

  def handle_types
    @_handle_types ||= Hash[
      :unknown_handle, 0,
      :async, 1,
      :check, 2,
      :fs_event, 3,
      :fs_poll, 4,
      :handle, 5,
      :idle, 6,
      :named_pipe, 7,
      :poll, 8,
      :prepare, 9,
      :process, 10,
      :stream, 11,
      :tcp, 12,
      :timer, 13,
      :tty, 14,
      :udp, 15,
      :signal, 16,
      :file, 17,
      :handle_type_max, 18
    ]
  end
end

##
# Timers Libuv API
#
module UV::Timer
  extend self

  def init(timer)
    fn = UV.fn(:timer_init, :int, :voidp, :voidp)
    fn.call(UV.default_loop, timer)
  end

  def start(timer, timeout, repeat, &block)
    c  = timer_cb(&block)
    fn = UV.fn(:timer_start, :int, :voidp, :voidp, :llong, :llong)
    fn.call(timer, c, timeout, repeat)
  end

  def stop(timer)
    UV.fn(:timer_stop, :int, :voidp).call(timer)
  end

  private
  def timer_cb(&block)
    UV.cb(:voidp, :voidp, :int){ |timer, status| block[status]; status }
  end
end

##
# Timer Object
#
class Timer
  class TimerError < StandardError; end

  def initialize(timeout, repeat, &block)
    err = UV::Timer.init(native)
    raise TimerError unless err.zero?
    err = UV::Timer.start(native, timeout, repeat, &block)
    raise TimerError unless err.zero?
  end

  def stop
    UV::Timer.stop(native)
  end

  private
  def native
    @_native ||= UV.create_handle(:timer)
  end
end

##
# Global
#
def set_timeout(timeout, &block)
  Timer.new(timeout, 0, &block)
end

def set_interval(interval, &block)
  Timer.new(interval, interval, &block)
end

def clear_timeout(timer)
  timer.stop
end
alias clear_interval clear_timeout

##
# My tests
#
if ENV['TEST']
  count = 1

  # Check clear timeout
  timeout = set_timeout(1000){ puts "You'll never see me!" }
  set_timeout(500){ clear_timeout(timeout) }

  # Check standard api
  set_timeout(1000){ puts "Got a timeout of 1s" }

  # Check interval
  interval = set_interval(1000){ print "\rInterval: #{count+=1} of 5s" }
  set_timeout(5000){ clear_timeout(interval); puts }

  # TODO: Check errors
  # set_timeout(199){raise "Error"}

  puts "Prepare yourself for some timers..."
  UV.run
else
  require 'irb'
  IRB.start
end
