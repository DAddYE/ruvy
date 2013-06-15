require 'ffi'

module UV
  extend FFI::Library
  ffi_lib File.expand_path("../../ext/libuv/libuv.#{FFI::Platform::LIBSUFFIX}", __FILE__)

  ##
  # Writing FFI::Gen::Enum
  #
  ##
  # Writing FFI::Gen::StructOrUnion
  #
  # (Not documented)
  class Loop < FFI::Struct
    layout :dummy, :char
  end

  # Note: May be cast to struct iovec. See writev(2).
  #
  # ## Fields:
  # :base ::
  #   (String)
  # :len ::
  #   (Integer)
  class Buf < FFI::Struct
    layout :base, :string,
           :len, :ulong
  end

  # empty
  #
  # ## Fields:
  # :handle ::
  #   (FFI::Pointer(*Void))
  # :errmsg ::
  #   (String)
  class Lib < FFI::Struct
    layout :handle, :pointer,
           :errmsg, :string
  end

  # Current event mask.
  #
  # ## Fields:
  # :work ::
  #   (FFI::Pointer(*))
  # :done ::
  #   (FFI::Pointer(*))
  # :loop ::
  #   (Loop)
  # :wq ::
  #   (Array<FFI::Pointer(*Void)>)
  class Work < FFI::Struct
    layout :work, :pointer,
           :done, :pointer,
           :loop, Loop,
           :wq, [:pointer, 2]
  end

  # (Not documented)
  #
  # ## Fields:
  # :cb ::
  #   (FFI::Pointer(IoCb))
  # :pending_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :watcher_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :pevents ::
  #   (Integer) Pending event mask i.e. mask at next tick.
  # :events ::
  #   (Integer) Current event mask.
  # :fd ::
  #   (Integer)
  # :rcount ::
  #   (Integer)
  # :wcount ::
  #   (Integer)
  class Io < FFI::Struct
    layout :cb, :pointer,
           :pending_queue, [:pointer, 2],
           :watcher_queue, [:pointer, 2],
           :pevents, :uint,
           :events, :uint,
           :fd, :int,
           :rcount, :int,
           :wcount, :int
  end

  # (Not documented)
  #
  # ## Fields:
  # :cb ::
  #   (FFI::Pointer(AsyncCb))
  # :io_watcher ::
  #   (Io)
  # :wfd ::
  #   (Integer)
  class Async < FFI::Struct
    layout :cb, :pointer,
           :io_watcher, Io.by_value,
           :wfd, :int
  end

  # (Not documented)
  #
  # ## Fields:
  # :n ::
  #   (Integer)
  # :count ::
  #   (Integer)
  # :mutex ::
  #   (unknown)
  # :turnstile1 ::
  #   (Integer)
  # :turnstile2 ::
  #   (Integer)
  class Barrier < FFI::Struct
    layout :n, :uint,
           :count, :uint,
           :mutex, :char,
           :turnstile1, :uint,
           :turnstile2, :uint
  end

  ##
  # Writing Callbacks
  #
  # (Not documented)
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_io_cb`(w, events)
  # @param [Io] w
  # @param [Integer] events
  # @return [Loop]
  # @scope class
  #
  callback :io_cb, [Io, :uint], Loop

  # Current event mask.
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_async_cb`(w, nevents)
  # @param [Async] w
  # @param [Integer] nevents
  # @return [Loop]
  # @scope class
  #
  callback :async_cb, [Async, :uint], Loop

  # (Not documented)
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_once`(pthread_once)
  # @param [unknown] pthread_once
  # @return [unknown]
  # @scope class
  #
  callback :once, [:char], :char

  # (Not documented)
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_mutex`(pthread_mutex)
  # @param [unknown] pthread_mutex
  # @return [unknown]
  # @scope class
  #
  callback :mutex, [:char], :char

  # (Not documented)
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_sem`(semaphore)
  # @param [Integer] semaphore
  # @return [Integer]
  # @scope class
  #
  callback :sem, [:uint], :uint

  # Platform-specific definitions for uv_spawn support.
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_uid`(uid)
  # @param [Integer] uid
  # @return [Integer]
  # @scope class
  #
  callback :uid, [:uint], :uint

  # (Not documented)
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_rwlock`(pthread_rwlock)
  # @param [unknown] pthread_rwlock
  # @return [unknown]
  # @scope class
  #
  callback :rwlock, [:char], :char

  # Platform-specific definitions for uv_spawn support.
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_gid`(gid)
  # @param [Integer] gid
  # @return [Integer]
  # @scope class
  #
  callback :gid, [:uint], :uint

  # (Not documented)
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_cond`(pthread_cond)
  # @param [unknown] pthread_cond
  # @return [unknown]
  # @scope class
  #
  callback :cond, [:char], :char

  # (Not documented)
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_thread`(pthread)
  # @param [FFI::Pointer(Pthread)] pthread
  # @return [FFI::Pointer(Pthread)]
  # @scope class
  #
  callback :thread, [:pointer], :pointer

  ##
  # Writing Functions
  #
end
