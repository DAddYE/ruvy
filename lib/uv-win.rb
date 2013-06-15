require 'ffi'

module UV
  extend FFI::Library
  ffi_lib 'uv'

  # (Not documented)
  class Sockaddr < FFI::Struct
    layout :dummy, :char
  end

  # (Not documented)
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_wsaapi`(buffers, buffer_count, bytes, flags, overlapped, completion_routine)
  # @param [Integer] buffers
  # @param [Integer] buffer_count
  # @param [Integer] bytes
  # @param [Integer] flags
  # @param [Integer] overlapped
  # @param [Integer] completion_routine
  # @return [Integer]
  # @scope class
  callback :wsaapi, [:int, :int, :int, :int, :int, :int], :int

  # (Not documented)
  class Sockaddr < FFI::Struct
    layout :dummy, :char
  end

  # (Not documented)
  #
  # ## Fields:
  # :handle ::
  #   (Integer)
  # :events ::
  #   (Integer)
  # :status ::
  #   (Integer)
  class AFDPOLLHANDLEINFO < FFI::Struct
    layout :handle, :int,
           :events, :int,
           :status, :int
  end

  # (Not documented)
  #
  # ## Fields:
  # :timeout ::
  #   (Integer)
  # :number_of_handles ::
  #   (Integer)
  # :exclusive ::
  #   (Integer)
  # :handles ::
  #   (Array<AFDPOLLHANDLEINFO>)
  class AFDPOLLINFO < FFI::Struct
    layout :timeout, :int,
           :number_of_handles, :int,
           :exclusive, :int,
           :handles, [AFDPOLLHANDLEINFO.by_value, 1]
  end

  # It should be possible to cast uv_buf_t() to WSABUF()
  # see http://msdn.microsoft.com/en-us/library/ms741542(v=vs.85).aspx
  #
  # ## Fields:
  # :len ::
  #   (Integer)
  # :base ::
  #   (String)
  class BufT < FFI::Struct
    layout :len, :int,
           :base, :string
  end

  # (Not documented)
  #
  # ## Fields:
  # :waiters_count ::
  #   (Integer)
  # :waiters_count_lock ::
  #   (Integer)
  # :signal_event ::
  #   (Integer)
  # :broadcast_event ::
  #   (Integer)
  class  < FFI::Struct
    layout :waiters_count, :uint,
           :waiters_count_lock, :int,
           :signal_event, :int,
           :broadcast_event, :int
  end

  # This condition variable implementation is based on the SetEvent solution
  # (section 3.2) at http://www.cs.wustl.edu/~schmidt/win32-cv-1.html
  # We could not use the SignalObjectAndWait solution (section 3.4) because
  # it want the 2nd argument (type uv_mutex_t) of uv_cond_wait() and
  # uv_cond_timedwait() to be HANDLEs, but we use CRITICAL_SECTIONs.
  #
  # ## Fields:
  # :cond_var ::
  #   (Integer)
  # :fallback ::
  #   ()
  class CondT < FFI::Union
    layout :cond_var, :int,
           :fallback, .by_value
  end

  # (Not documented)
  #
  # ## Fields:
  # :read_mutex ::
  #   (Integer)
  # :write_mutex ::
  #   (Integer)
  # :num_readers ::
  #   (Integer)
  class  < FFI::Struct
    layout :read_mutex, :int,
           :write_mutex, :int,
           :num_readers, :uint
  end

  # (Not documented)
  #
  # ## Fields:
  # :srwlock ::
  #   (Integer) windows.h.
  # :fallback ::
  #   ()
  class RwlockT < FFI::Union
    layout :srwlock, :int,
           :fallback, .by_value
  end

  # (Not documented)
  #
  # ## Fields:
  # :n ::
  #   (Integer)
  # :count ::
  #   (Integer)
  # :mutex ::
  #   (Integer)
  # :turnstile1 ::
  #   (Integer)
  # :turnstile2 ::
  #   (Integer)
  class BarrierT < FFI::Struct
    layout :n, :uint,
           :count, :uint,
           :mutex, :int,
           :turnstile1, :int,
           :turnstile2, :int
  end

  # (Not documented)
  #
  # ## Fields:
  # :ran ::
  #   (Integer)
  # :event ::
  #   (Integer)
  class OnceS < FFI::Struct
    layout :ran, :uchar,
           :event, :int
  end

  # Platform-specific definitions for uv_dlopen support.
  #
  # ## Fields:
  # :handle ::
  #   (Integer)
  # :errmsg ::
  #   (String)
  class LibT < FFI::Struct
    layout :handle, :int,
           :errmsg, :string
  end

  # (Not documented)
  class TimerS < FFI::Struct
    layout :dummy, :char
  end

  # (Not documented)
  #
  # ## Fields:
  # :rbh_root ::
  #   (TimerS)
  class TimerTreeS < FFI::Struct
    layout :rbh_root, TimerS
  end

  # TODO: remove me in 0.9.
  #
  # @method utf16_to_utf8(utf16_buffer, utf16_size, utf8_buffer, utf8_size)
  # @param [FFI::Pointer(*Int)] utf16_buffer
  # @param [Integer] utf16_size
  # @param [String] utf8_buffer
  # @param [Integer] utf8_size
  # @return [Integer]
  # @scope class
  attach_function :utf16_to_utf8, :uv_utf16_to_utf8, [:pointer, :ulong, :string, :ulong], :int

  # (Not documented)
  #
  # @method utf8_to_utf16(utf8_buffer, utf16_buffer, utf16_size)
  # @param [String] utf8_buffer
  # @param [FFI::Pointer(*Int)] utf16_buffer
  # @param [Integer] utf16_size
  # @return [Integer]
  # @scope class
  attach_function :utf8_to_utf16, :uv_utf8_to_utf16, [:string, :pointer, :ulong], :int

end
