require 'ffi'

module UV
  extend FFI::Library
  ffi_lib File.expand_path("../../ext/libuv/libuv.#{FFI::Platform::LIBSUFFIX}", __FILE__)

  ##
  # Writing FFI::Gen::Enum
  #
  # (Not documented)
  #
  # _This entry is only for documentation and no real method. The FFI::Enum can be accessed via `#enum_type(:err_code)`._
  #
  # ## Options:
  # :uv_unknown ::
  #
  # :uv_ok ::
  #
  # :uv_eof ::
  #
  # :uv_eaddrinfo ::
  #
  # :uv_eacces ::
  #
  # :uv_eagain ::
  #
  # :uv_eaddrinuse ::
  #
  # :uv_eaddrnotavail ::
  #
  # :uv_eafnosupport ::
  #
  # :uv_ealready ::
  #
  # :uv_ebadf ::
  #
  # :uv_ebusy ::
  #
  # :uv_econnaborted ::
  #
  # :uv_econnrefused ::
  #
  # :uv_econnreset ::
  #
  # :uv_edestaddrreq ::
  #
  # :uv_efault ::
  #
  # :uv_ehostunreach ::
  #
  # :uv_eintr ::
  #
  # :uv_einval ::
  #
  # :uv_eisconn ::
  #
  # :uv_emfile ::
  #
  # :uv_emsgsize ::
  #
  # :uv_enetdown ::
  #
  # :uv_enetunreach ::
  #
  # :uv_enfile ::
  #
  # :uv_enobufs ::
  #
  # :uv_enomem ::
  #
  # :uv_enotdir ::
  #
  # :uv_eisdir ::
  #
  # :uv_enonet ::
  #
  # :uv_enotconn ::
  #
  # :uv_enotsock ::
  #
  # :uv_enotsup ::
  #
  # :uv_enoent ::
  #
  # :uv_enosys ::
  #
  # :uv_epipe ::
  #
  # :uv_eproto ::
  #
  # :uv_eprotonosupport ::
  #
  # :uv_eprototype ::
  #
  # :uv_etimedout ::
  #
  # :uv_echarset ::
  #
  # :uv_eaifamnosupport ::
  #
  # :uv_eaiservice ::
  #
  # :uv_eaisocktype ::
  #
  # :uv_eshutdown ::
  #
  # :uv_eexist ::
  #
  # :uv_esrch ::
  #
  # :uv_enametoolong ::
  #
  # :uv_eperm ::
  #
  # :uv_eloop ::
  #
  # :uv_exdev ::
  #
  # :uv_enotempty ::
  #
  # :uv_enospc ::
  #
  # :uv_eio ::
  #
  # :uv_erofs ::
  #
  # :uv_enodev ::
  #
  # :uv_espipe ::
  #
  # :uv_ecanceled ::
  #
  # :uv_max_errors ::
  #
  #
  # @method `enum_err_code`
  # @return [Symbol]
  # @scope class
  #
  enum :err_code, [
    :uv_unknown, -1,
    :uv_ok, 0,
    :uv_eof, 1,
    :uv_eaddrinfo, 2,
    :uv_eacces, 3,
    :uv_eagain, 4,
    :uv_eaddrinuse, 5,
    :uv_eaddrnotavail, 6,
    :uv_eafnosupport, 7,
    :uv_ealready, 8,
    :uv_ebadf, 9,
    :uv_ebusy, 10,
    :uv_econnaborted, 11,
    :uv_econnrefused, 12,
    :uv_econnreset, 13,
    :uv_edestaddrreq, 14,
    :uv_efault, 15,
    :uv_ehostunreach, 16,
    :uv_eintr, 17,
    :uv_einval, 18,
    :uv_eisconn, 19,
    :uv_emfile, 20,
    :uv_emsgsize, 21,
    :uv_enetdown, 22,
    :uv_enetunreach, 23,
    :uv_enfile, 24,
    :uv_enobufs, 25,
    :uv_enomem, 26,
    :uv_enotdir, 27,
    :uv_eisdir, 28,
    :uv_enonet, 29,
    :uv_enotconn, 31,
    :uv_enotsock, 32,
    :uv_enotsup, 33,
    :uv_enoent, 34,
    :uv_enosys, 35,
    :uv_epipe, 36,
    :uv_eproto, 37,
    :uv_eprotonosupport, 38,
    :uv_eprototype, 39,
    :uv_etimedout, 40,
    :uv_echarset, 41,
    :uv_eaifamnosupport, 42,
    :uv_eaiservice, 44,
    :uv_eaisocktype, 45,
    :uv_eshutdown, 46,
    :uv_eexist, 47,
    :uv_esrch, 48,
    :uv_enametoolong, 49,
    :uv_eperm, 50,
    :uv_eloop, 51,
    :uv_exdev, 52,
    :uv_enotempty, 53,
    :uv_enospc, 54,
    :uv_eio, 55,
    :uv_erofs, 56,
    :uv_enodev, 57,
    :uv_espipe, 58,
    :uv_ecanceled, 59,
    :uv_max_errors, 60
  ]

  # (Not documented)
  #
  # _This entry is only for documentation and no real method. The FFI::Enum can be accessed via `#enum_type(:req_type)`._
  #
  # ## Options:
  # :uv_unknown_req ::
  #
  # :uv_req ::
  #
  # :uv_connect ::
  #
  # :uv_write ::
  #
  # :uv_shutdown ::
  #
  # :uv_udp_send ::
  #
  # :uv_fs ::
  #
  # :uv_work ::
  #
  # :uv_getaddrinfo ::
  #
  # :uv_req_type_max ::
  #
  #
  # @method `enum_req_type`
  # @return [Symbol]
  # @scope class
  #
  enum :req_type, [
    :uv_unknown_req, 0,
    :uv_req, 1,
    :uv_connect, 2,
    :uv_write, 3,
    :uv_shutdown, 4,
    :uv_udp_send, 5,
    :uv_fs, 6,
    :uv_work, 7,
    :uv_getaddrinfo, 8,
    :uv_req_type_max, 9
  ]

  # This will be called repeatedly after the uv_fs_event_t is initialized.
  # If uv_fs_event_t was initialized with a directory the filename parameter
  # will be a relative path to a file contained in the directory.
  # The events parameter is an ORed mask of enum uv_fs_event elements.
  #
  # _This entry is only for documentation and no real method. The FFI::Enum can be accessed via `#enum_type(:membership)`._
  #
  # ## Options:
  # :uv_leave_group ::
  #
  # :uv_join_group ::
  #
  #
  # @method `enum_membership`
  # @return [Symbol]
  # @scope class
  #
  enum :membership, [
    :uv_leave_group, 0,
    :uv_join_group, 1
  ]

  # uv_poll_t is a subclass of uv_handle_t.
  #
  # The uv_poll watcher is used to watch file descriptors for readability and
  # writability, similar to the purpose of poll(2).
  #
  # The purpose of uv_poll is to enable integrating external libraries that
  # rely on the event loop to signal it about the socket status changes, like
  # c-ares or libssh2. Using uv_poll_t for any other other purpose is not
  # recommended; uv_tcp_t, uv_udp_t, etc. provide an implementation that is
  # much faster and more scalable than what can be achieved with uv_poll_t,
  # especially on Windows.
  #
  # It is possible that uv_poll occasionally signals that a file descriptor is
  # readable or writable even when it isn't. The user should therefore always
  # be prepared to handle EAGAIN or equivalent when it attempts to read from or
  # write to the fd.
  #
  # It is not okay to have multiple active uv_poll watchers for the same socket.
  # This can cause libuv to busyloop or otherwise malfunction.
  #
  # The user should not close a file descriptor while it is being polled by an
  # active uv_poll watcher. This can cause the poll watcher to report an error,
  # but it might also start polling another socket. However the fd can be safely
  # closed immediately after a call to uv_poll_stop() or uv_close().
  #
  # On windows only sockets can be polled with uv_poll. On unix any file
  # descriptor that would be accepted by poll(2) can be used with uv_poll.
  #
  # _This entry is only for documentation and no real method. The FFI::Enum can be accessed via `#enum_type(:poll_event)`._
  #
  # ## Options:
  # :uv_readable ::
  #
  # :uv_writable ::
  #
  #
  # @method `enum_poll_event`
  # @return [Symbol]
  # @scope class
  #
  enum :poll_event, [
    :uv_readable, 1,
    :uv_writable, 2
  ]

  # These are the flags that can be used for the uv_process_options.flags field.
  #
  # _This entry is only for documentation and no real method. The FFI::Enum can be accessed via `#enum_type(:process_flags)`._
  #
  # ## Options:
  # :uv_process_setuid ::
  #   Set the child process' user id. The user id is supplied in the `uid` field
  #   of the options struct. This does not work on windows; setting this flag
  #   will cause uv_spawn() to fail.
  # :uv_process_setgid ::
  #   Set the child process' group id. The user id is supplied in the `gid`
  #   field of the options struct. This does not work on windows; setting this
  #   flag will cause uv_spawn() to fail.
  # :uv_process_windows_verbatim_arguments ::
  #   Do not wrap any arguments in quotes, or perform any other escaping, when
  #   converting the argument list into a command line string. This option is
  #   only meaningful on Windows systems. On unix it is silently ignored.
  # :uv_process_detached ::
  #   Spawn the child process in a detached state - this will make it a process
  #   group leader, and will effectively enable the child to keep running after
  #   the parent exits.  Note that the child process will still keep the
  #   parent's event loop alive unless the parent process calls uv_unref() on
  #   the child's process handle.
  # :uv_process_windows_hide ::
  #   Hide the subprocess console window that would normally be created. This
  #   option is only meaningful on Windows systems. On unix it is silently
  #   ignored.
  #
  # @method `enum_process_flags`
  # @return [Symbol]
  # @scope class
  #
  enum :process_flags, [
    :uv_process_setuid, 1,
    :uv_process_setgid, 2,
    :uv_process_windows_verbatim_arguments, 4,
    :uv_process_detached, 8,
    :uv_process_windows_hide, 16
  ]

  # This flag can be used with uv_fs_symlink on Windows
  # to specify whether the symlink is to be created using junction points.
  #
  # _This entry is only for documentation and no real method. The FFI::Enum can be accessed via `#enum_type(:fs_event)`._
  #
  # ## Options:
  # :uv_rename ::
  #
  # :uv_change ::
  #
  #
  # @method `enum_fs_event`
  # @return [Symbol]
  # @scope class
  #
  enum :fs_event, [
    :uv_rename, 1,
    :uv_change, 2
  ]

  # (Not documented)
  #
  # _This entry is only for documentation and no real method. The FFI::Enum can be accessed via `#enum_type(:handle_type)`._
  #
  # ## Options:
  # :uv_unknown_handle ::
  #
  # :uv_async ::
  #
  # :uv_check ::
  #
  # :uv_fs_event ::
  #
  # :uv_fs_poll ::
  #
  # :uv_handle ::
  #
  # :uv_idle ::
  #
  # :uv_named_pipe ::
  #
  # :uv_poll ::
  #
  # :uv_prepare ::
  #
  # :uv_process ::
  #
  # :uv_stream ::
  #
  # :uv_tcp ::
  #
  # :uv_timer ::
  #
  # :uv_tty ::
  #
  # :uv_udp ::
  #
  # :uv_signal ::
  #
  # :uv_file ::
  #
  # :uv_handle_type_max ::
  #
  #
  # @method `enum_handle_type`
  # @return [Symbol]
  # @scope class
  #
  enum :handle_type, [
    :uv_unknown_handle, 0,
    :uv_async, 1,
    :uv_check, 2,
    :uv_fs_event, 3,
    :uv_fs_poll, 4,
    :uv_handle, 5,
    :uv_idle, 6,
    :uv_named_pipe, 7,
    :uv_poll, 8,
    :uv_prepare, 9,
    :uv_process, 10,
    :uv_stream, 11,
    :uv_tcp, 12,
    :uv_timer, 13,
    :uv_tty, 14,
    :uv_udp, 15,
    :uv_signal, 16,
    :uv_file, 17,
    :uv_handle_type_max, 18
  ]

  # UDP support.
  #
  # _This entry is only for documentation and no real method. The FFI::Enum can be accessed via `#enum_type(:udp_flags)`._
  #
  # ## Options:
  # :uv_udp_ipv6only ::
  #   Disables dual stack mode. Used with uv_udp_bind6().
  # :uv_udp_partial ::
  #   Indicates message was truncated because read buffer was too small. The
  #   remainder was discarded by the OS. Used in uv_udp_recv_cb.
  #
  # @method `enum_udp_flags`
  # @return [Symbol]
  # @scope class
  #
  enum :udp_flags, [
    :uv_udp_ipv6only, 1,
    :uv_udp_partial, 2
  ]

  # File System Methods.
  #
  # The uv_fs_* functions execute a blocking system call asynchronously (in a
  # thread pool) and call the specified callback in the specified loop after
  # completion. If the user gives NULL as the callback the blocking system
  # call will be called synchronously. req should be a pointer to an
  # uninitialized uv_fs_t object.
  #
  # uv_fs_req_cleanup() must be called after completion of the uv_fs_
  # function to free any internal memory allocations associated with the
  # request.
  #
  # _This entry is only for documentation and no real method. The FFI::Enum can be accessed via `#enum_type(:fs_type)`._
  #
  # ## Options:
  # :uv_fs_unknown ::
  #
  # :uv_fs_custom ::
  #
  # :uv_fs_open ::
  #
  # :uv_fs_close ::
  #
  # :uv_fs_read ::
  #
  # :uv_fs_write ::
  #
  # :uv_fs_sendfile ::
  #
  # :uv_fs_stat ::
  #
  # :uv_fs_lstat ::
  #
  # :uv_fs_fstat ::
  #
  # :uv_fs_ftruncate ::
  #
  # :uv_fs_utime ::
  #
  # :uv_fs_futime ::
  #
  # :uv_fs_chmod ::
  #
  # :uv_fs_fchmod ::
  #
  # :uv_fs_fsync ::
  #
  # :uv_fs_fdatasync ::
  #
  # :uv_fs_unlink ::
  #
  # :uv_fs_rmdir ::
  #
  # :uv_fs_mkdir ::
  #
  # :uv_fs_rename ::
  #
  # :uv_fs_readdir ::
  #
  # :uv_fs_link ::
  #
  # :uv_fs_symlink ::
  #
  # :uv_fs_readlink ::
  #
  # :uv_fs_chown ::
  #
  # :uv_fs_fchown ::
  #
  #
  # @method `enum_fs_type`
  # @return [Symbol]
  # @scope class
  #
  enum :fs_type, [
    :uv_fs_unknown, -1,
    :uv_fs_custom, 0,
    :uv_fs_open, 1,
    :uv_fs_close, 2,
    :uv_fs_read, 3,
    :uv_fs_write, 4,
    :uv_fs_sendfile, 5,
    :uv_fs_stat, 6,
    :uv_fs_lstat, 7,
    :uv_fs_fstat, 8,
    :uv_fs_ftruncate, 9,
    :uv_fs_utime, 10,
    :uv_fs_futime, 11,
    :uv_fs_chmod, 12,
    :uv_fs_fchmod, 13,
    :uv_fs_fsync, 14,
    :uv_fs_fdatasync, 15,
    :uv_fs_unlink, 16,
    :uv_fs_rmdir, 17,
    :uv_fs_mkdir, 18,
    :uv_fs_rename, 19,
    :uv_fs_readdir, 20,
    :uv_fs_link, 21,
    :uv_fs_symlink, 22,
    :uv_fs_readlink, 23,
    :uv_fs_chown, 24,
    :uv_fs_fchown, 25
  ]

  # None of the above.
  #
  # _This entry is only for documentation and no real method. The FFI::Enum can be accessed via `#enum_type(:run_mode)`._
  #
  # ## Options:
  # :uv_run_default ::
  #
  # :uv_run_once ::
  #
  # :uv_run_nowait ::
  #
  #
  # @method `enum_run_mode`
  # @return [Symbol]
  # @scope class
  #
  enum :run_mode, [
    :uv_run_default, 0,
    :uv_run_once, 1,
    :uv_run_nowait, 2
  ]

  # Flags to be passed to uv_fs_event_init.
  #
  # _This entry is only for documentation and no real method. The FFI::Enum can be accessed via `#enum_type(:fs_event_flags)`._
  #
  # ## Options:
  # :uv_fs_event_watch_entry ::
  #   By default, if the fs event watcher is given a directory name, we will
  #   watch for all events in that directory. This flags overrides this behavior
  #   and makes fs_event report only changes to the directory entry itself. This
  #   flag does not affect individual files watched.
  #   This flag is currently not implemented yet on any backend.
  # :uv_fs_event_stat ::
  #   By default uv_fs_event will try to use a kernel interface such as inotify
  #   or kqueue to detect events. This may not work on remote filesystems such
  #   as NFS mounts. This flag makes fs_event fall back to calling stat() on a
  #   regular interval.
  #   This flag is currently not implemented yet on any backend.
  # :uv_fs_event_recursive ::
  #   By default, event watcher, when watching directory, is not registering
  #   (is ignoring) changes in it's subdirectories.
  #   This flag will override this behaviour on platforms that support it.
  #
  # @method `enum_fs_event_flags`
  # @return [Symbol]
  # @scope class
  #
  enum :fs_event_flags, [
    :uv_fs_event_watch_entry, 1,
    :uv_fs_event_stat, 2,
    :uv_fs_event_recursive, 3
  ]

  # uv_spawn() options
  #
  # _This entry is only for documentation and no real method. The FFI::Enum can be accessed via `#enum_type(:stdio_flags)`._
  #
  # ## Options:
  # :uv_ignore ::
  #
  # :uv_create_pipe ::
  #
  # :uv_inherit_fd ::
  #
  # :uv_inherit_stream ::
  #
  # :uv_readable_pipe ::
  #   When UV_CREATE_PIPE is specified, UV_READABLE_PIPE and UV_WRITABLE_PIPE
  #   determine the direction of flow, from the child process' perspective. Both
  #   flags may be specified to create a duplex data stream.
  # :uv_writable_pipe ::
  #
  #
  # @method `enum_stdio_flags`
  # @return [Symbol]
  # @scope class
  #
  enum :stdio_flags, [
    :uv_ignore, 0,
    :uv_create_pipe, 1,
    :uv_inherit_fd, 2,
    :uv_inherit_stream, 4,
    :uv_readable_pipe, 16,
    :uv_writable_pipe, 32
  ]

  ##
  # Writing FFI::Gen::StructOrUnion
  #
  # The presence of these unions force similar struct layout.
  #
  # ## Fields:
  # :async ::
  #   (unknown)
  # :check ::
  #   (unknown)
  # :fs_event ::
  #   (unknown)
  # :fs_poll ::
  #   (unknown)
  # :handle ::
  #   (unknown)
  # :idle ::
  #   (unknown)
  # :pipe ::
  #   (unknown)
  # :poll ::
  #   (unknown)
  # :prepare ::
  #   (unknown)
  # :process ::
  #   (unknown)
  # :stream ::
  #   (unknown)
  # :tcp ::
  #   (unknown)
  # :timer ::
  #   (unknown)
  # :tty ::
  #   (unknown)
  # :udp ::
  #   (unknown)
  # :signal ::
  #   (unknown)
  class AnyHandle < FFI::Union
    layout :async, :char,
           :check, :char,
           :fs_event, :char,
           :fs_poll, :char,
           :handle, :char,
           :idle, :char,
           :pipe, :char,
           :poll, :char,
           :prepare, :char,
           :process, :char,
           :stream, :char,
           :tcp, :char,
           :timer, :char,
           :tty, :char,
           :udp, :char,
           :signal, :char
  end

  # TODO: do these really need a status argument?
  #
  # ## Fields:
  # :tv_sec ::
  #   (Integer)
  # :tv_nsec ::
  #   (Integer)
  class Timespec < FFI::Struct
    layout :tv_sec, :long,
           :tv_nsec, :long
  end

  # This will be called repeatedly after the uv_fs_event_t is initialized.
  # If uv_fs_event_t was initialized with a directory the filename parameter
  # will be a relative path to a file contained in the directory.
  # The events parameter is an ORed mask of enum uv_fs_event elements.
  #
  # ## Fields:
  # :code ::
  #   (Symbol from `enum_err_code`) read-only
  # :sys_errno ::
  #   (Integer) private
  class Err < FFI::Struct
    layout :code, :err_code,
           :sys_errno, :int
  end

  # uv_shutdown_t is a subclass of uv_req_t
  #
  # Shutdown the outgoing (write) side of a duplex stream. It waits for
  # pending write requests to complete. The handle should refer to a
  # initialized stream. req should be an uninitialized shutdown request
  # struct. The cb is called after shutdown is complete.
  #
  # ## Fields:
  # :data ::
  #   (FFI::Pointer(*Void))
  # :type ::
  #   (Symbol from `enum_req_type`)
  # :active_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :handle ::
  #   (FFI::Pointer(*Stream))
  # :cb ::
  #   (FFI::Pointer(ShutdownCb))
  module ShutdownWrappers
    # @param [FFI::Pointer(*Stream)] handle
    # @param [FFI::Pointer(ShutdownCb)] cb
    # @return [Integer]
    def shutdown(handle, cb)
      UV.shutdown(self, handle, cb)
    end
  end

  class Shutdown < FFI::Struct
    include ShutdownWrappers
    layout :data, :pointer,
           :type, :req_type,
           :active_queue, [:pointer, 2],
           :handle, :pointer,
           :cb, :pointer
  end

  # uv_write_t is a subclass of uv_req_t
  #
  # ## Fields:
  # :data ::
  #   (FFI::Pointer(*Void))
  # :type ::
  #   (Symbol from `enum_req_type`)
  # :active_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :cb ::
  #   (FFI::Pointer(WriteCb))
  # :send_handle ::
  #   (FFI::Pointer(*Stream))
  # :handle ::
  #   (FFI::Pointer(*Stream))
  # :queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :write_index ::
  #   (Integer)
  # :bufs ::
  #   (FFI::Pointer(*Buf))
  # :bufcnt ::
  #   (Integer)
  # :error ::
  #   (Integer)
  # :bufsml ::
  #   (Array<unknown>)
  module WriteWrappers
    # @param [FFI::Pointer(*Stream)] handle
    # @param [unknown] bufs
    # @param [Integer] bufcnt
    # @param [FFI::Pointer(WriteCb)] cb
    # @return [Integer]
    def write(handle, bufs, bufcnt, cb)
      UV.write(self, handle, bufs, bufcnt, cb)
    end
  end

  class Write < FFI::Struct
    include WriteWrappers
    layout :data, :pointer,
           :type, :req_type,
           :active_queue, [:pointer, 2],
           :cb, :pointer,
           :send_handle, :pointer,
           :handle, :pointer,
           :queue, [:pointer, 2],
           :write_index, :int,
           :bufs, :pointer,
           :bufcnt, :int,
           :error, :int,
           :bufsml, [:char, 4]
  end

  # uv_connect_t is a subclass of uv_req_t
  #
  # ## Fields:
  # :data ::
  #   (FFI::Pointer(*Void))
  # :type ::
  #   (Symbol from `enum_req_type`)
  # :active_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :cb ::
  #   (FFI::Pointer(ConnectCb))
  # :handle ::
  #   (FFI::Pointer(*Stream))
  # :queue ::
  #   (Array<FFI::Pointer(*Void)>)
  class Connect < FFI::Struct
    layout :data, :pointer,
           :type, :req_type,
           :active_queue, [:pointer, 2],
           :cb, :pointer,
           :handle, :pointer,
           :queue, [:pointer, 2]
  end

  # uv_tty_t is a subclass of uv_stream_t
  #
  # Representing a stream for the console.
  #
  # ## Fields:
  # :close_cb ::
  #   (FFI::Pointer(CloseCb))
  # :data ::
  #   (FFI::Pointer(*Void))
  # :loop ::
  #   (FFI::Pointer(*Loop))
  # :type ::
  #   (Symbol from `enum_handle_type`)
  # :handle_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :flags ::
  #   (Integer)
  # :next_closing ::
  #   (FFI::Pointer(*Handle))
  # :write_queue_size ::
  #   (Integer)
  # :alloc_cb ::
  #   (FFI::Pointer(AllocCb))
  # :read_cb ::
  #   (FFI::Pointer(ReadCb))
  # :read2_cb ::
  #   (FFI::Pointer(Read2Cb))
  # :connect_req ::
  #   (Connect)
  # :shutdown_req ::
  #   (Shutdown)
  # :io_watcher ::
  #   (unknown)
  # :write_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :write_completed_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :connection_cb ::
  #   (FFI::Pointer(ConnectionCb))
  # :delayed_error ::
  #   (Integer)
  # :accepted_fd ::
  #   (Integer)
  # :select ::
  #   (FFI::Pointer(*Void))
  # :orig_termios ::
  #   (unknown)
  # :mode ::
  #   (Integer)
  module TtyWrappers
    # @param [FFI::Pointer(*Int)] width
    # @param [FFI::Pointer(*Int)] height
    # @return [Integer]
    def get_winsize(width, height)
      UV.tty_get_winsize(self, width, height)
    end

    # @param [Integer] mode
    # @return [Integer]
    def set_mode(mode)
      UV.tty_set_mode(self, mode)
    end
  end

  class Tty < FFI::Struct
    include TtyWrappers
    layout :close_cb, :pointer,
           :data, :pointer,
           :loop, :pointer,
           :type, :handle_type,
           :handle_queue, [:pointer, 2],
           :flags, :int,
           :next_closing, :pointer,
           :write_queue_size, :ulong,
           :alloc_cb, :pointer,
           :read_cb, :pointer,
           :read2_cb, :pointer,
           :connect_req, Connect,
           :shutdown_req, Shutdown,
           :io_watcher, :char,
           :write_queue, [:pointer, 2],
           :write_completed_queue, [:pointer, 2],
           :connection_cb, :pointer,
           :delayed_error, :int,
           :accepted_fd, :int,
           :select, :pointer,
           :orig_termios, :char,
           :mode, :int
  end

  # uv_poll_t is a subclass of uv_handle_t.
  #
  # The uv_poll watcher is used to watch file descriptors for readability and
  # writability, similar to the purpose of poll(2).
  #
  # The purpose of uv_poll is to enable integrating external libraries that
  # rely on the event loop to signal it about the socket status changes, like
  # c-ares or libssh2. Using uv_poll_t for any other other purpose is not
  # recommended; uv_tcp_t, uv_udp_t, etc. provide an implementation that is
  # much faster and more scalable than what can be achieved with uv_poll_t,
  # especially on Windows.
  #
  # It is possible that uv_poll occasionally signals that a file descriptor is
  # readable or writable even when it isn't. The user should therefore always
  # be prepared to handle EAGAIN or equivalent when it attempts to read from or
  # write to the fd.
  #
  # It is not okay to have multiple active uv_poll watchers for the same socket.
  # This can cause libuv to busyloop or otherwise malfunction.
  #
  # The user should not close a file descriptor while it is being polled by an
  # active uv_poll watcher. This can cause the poll watcher to report an error,
  # but it might also start polling another socket. However the fd can be safely
  # closed immediately after a call to uv_poll_stop() or uv_close().
  #
  # On windows only sockets can be polled with uv_poll. On unix any file
  # descriptor that would be accepted by poll(2) can be used with uv_poll.
  #
  # ## Fields:
  # :close_cb ::
  #   (FFI::Pointer(CloseCb))
  # :data ::
  #   (FFI::Pointer(*Void))
  # :loop ::
  #   (FFI::Pointer(*Loop))
  # :type ::
  #   (Symbol from `enum_handle_type`)
  # :handle_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :flags ::
  #   (Integer)
  # :next_closing ::
  #   (FFI::Pointer(*Handle))
  # :poll_cb ::
  #   (FFI::Pointer(PollCb))
  # :io_watcher ::
  #   (unknown)
  module PollWrappers
    # @param [Integer] events
    # @param [FFI::Pointer(PollCb)] cb
    # @return [Integer]
    def start(events, cb)
      UV.poll_start(self, events, cb)
    end

    # @return [Integer]
    def stop()
      UV.poll_stop(self)
    end
  end

  class Poll < FFI::Struct
    include PollWrappers
    layout :close_cb, :pointer,
           :data, :pointer,
           :loop, :pointer,
           :type, :handle_type,
           :handle_queue, [:pointer, 2],
           :flags, :int,
           :next_closing, :pointer,
           :poll_cb, :pointer,
           :io_watcher, :char
  end

  # uv_check_t is a subclass of uv_handle_t.
  #
  # Every active check handle gets its callback called exactly once per loop
  # iteration, just after the system returns from blocking.
  #
  # ## Fields:
  # :close_cb ::
  #   (FFI::Pointer(CloseCb))
  # :data ::
  #   (FFI::Pointer(*Void))
  # :loop ::
  #   (FFI::Pointer(*Loop))
  # :type ::
  #   (Symbol from `enum_handle_type`)
  # :handle_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :flags ::
  #   (Integer)
  # :next_closing ::
  #   (FFI::Pointer(*Handle))
  # :check_cb ::
  #   (FFI::Pointer(CheckCb))
  # :queue ::
  #   (Array<FFI::Pointer(*Void)>)
  module CheckWrappers
    # @param [FFI::Pointer(CheckCb)] cb
    # @return [Integer]
    def start(cb)
      UV.check_start(self, cb)
    end

    # @return [Integer]
    def stop()
      UV.check_stop(self)
    end
  end

  class Check < FFI::Struct
    include CheckWrappers
    layout :close_cb, :pointer,
           :data, :pointer,
           :loop, :pointer,
           :type, :handle_type,
           :handle_queue, [:pointer, 2],
           :flags, :int,
           :next_closing, :pointer,
           :check_cb, :pointer,
           :queue, [:pointer, 2]
  end

  # uv_async_t is a subclass of uv_handle_t.
  #
  # uv_async_send wakes up the event loop and calls the async handle's callback.
  # There is no guarantee that every uv_async_send call leads to exactly one
  # invocation of the callback; the only guarantee is that the callback function
  # is called at least once after the call to async_send. Unlike all other
  # libuv functions, uv_async_send can be called from another thread.
  #
  # ## Fields:
  # :close_cb ::
  #   (FFI::Pointer(CloseCb))
  # :data ::
  #   (FFI::Pointer(*Void))
  # :loop ::
  #   (FFI::Pointer(*Loop))
  # :type ::
  #   (Symbol from `enum_handle_type`)
  # :handle_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :flags ::
  #   (Integer)
  # :next_closing ::
  #   (FFI::Pointer(*Handle))
  # :async_cb ::
  #   (FFI::Pointer(AsyncCb))
  # :queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :pending ::
  #   (Integer)
  module AsyncWrappers
    # @return [Integer]
    def send()
      UV.async_send(self)
    end
  end

  class Async < FFI::Struct
    include AsyncWrappers
    layout :close_cb, :pointer,
           :data, :pointer,
           :loop, :pointer,
           :type, :handle_type,
           :handle_queue, [:pointer, 2],
           :flags, :int,
           :next_closing, :pointer,
           :async_cb, :pointer,
           :queue, [:pointer, 2],
           :pending, :int
  end

  # uv_timer_t is a subclass of uv_handle_t.
  #
  # Used to get woken up at a specified time in the future.
  #
  # ## Fields:
  # :close_cb ::
  #   (FFI::Pointer(CloseCb))
  # :data ::
  #   (FFI::Pointer(*Void))
  # :loop ::
  #   (FFI::Pointer(*Loop))
  # :type ::
  #   (Symbol from `enum_handle_type`)
  # :handle_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :flags ::
  #   (Integer)
  # :next_closing ::
  #   (FFI::Pointer(*Handle))
  # :tree_entry ::
  #   (TimerTreeEntry)
  # :timer_cb ::
  #   (FFI::Pointer(TimerCb))
  # :timeout ::
  #   (Integer)
  # :repeat ::
  #   (Integer)
  # :start_id ::
  #   (Integer)
  module TimerWrappers
    # @param [FFI::Pointer(TimerCb)] cb
    # @param [Integer] timeout
    # @param [Integer] repeat
    # @return [Integer]
    def start(cb, timeout, repeat)
      UV.timer_start(self, cb, timeout, repeat)
    end

    # @return [Integer]
    def again()
      UV.timer_again(self)
    end

    # @return [Integer]
    def get_repeat()
      UV.timer_get_repeat(self)
    end

    # @return [Integer]
    def stop()
      UV.timer_stop(self)
    end

    # @param [Integer] repeat
    # @return [nil]
    def set_repeat(repeat)
      UV.timer_set_repeat(self, repeat)
    end
  end

  class Timer < FFI::Struct
    include TimerWrappers
    layout :close_cb, :pointer,
           :data, :pointer,
           :loop, :pointer,
           :type, :handle_type,
           :handle_queue, [:pointer, 2],
           :flags, :int,
           :next_closing, :pointer,
           :tree_entry, :pointer,
           :timer_cb, :pointer,
           :timeout, :ulong_long,
           :repeat, :ulong_long,
           :start_id, :ulong_long
  end

  # (Not documented)
  #
  # ## Fields:
  # :stream ::
  #   (FFI::Pointer(*Stream))
  # :fd ::
  #   (Integer)
  class StdioContainerData < FFI::Union
    layout :stream, :pointer,
           :fd, :int
  end

  # (Not documented)
  #
  # ## Fields:
  # :exit_cb ::
  #   (FFI::Pointer(ExitCb)) Called after the process exits.
  # :file ::
  #   (String) Path to program to execute.
  # :args ::
  #   (FFI::Pointer(**CharS)) Command line arguments. args(0) should be the path to the program. On
  #   Windows this uses CreateProcess which concatenates the arguments into a
  #   string this can cause some strange errors. See the note at
  #   windows_verbatim_arguments.
  # :env ::
  #   (FFI::Pointer(**CharS)) This will be set as the environ variable in the subprocess. If this is
  #   NULL then the parents environ will be used.
  # :cwd ::
  #   (String) If non-null this represents a directory the subprocess should execute
  #   in. Stands for current working directory.
  # :flags ::
  #   (Integer) Various flags that control how uv_spawn() behaves. See the definition of
  #   `enum uv_process_flags` below.
  # :stdio_count ::
  #   (Integer) The `stdio` field points to an array of uv_stdio_container_t structs that
  #   describe the file descriptors that will be made available to the child
  #   process. The convention is that stdio(0) points to stdin, fd 1 is used for
  #   stdout, and fd 2 is stderr.
  #
  #   Note that on windows file descriptors greater than 2 are available to the
  #   child process only if the child processes uses the MSVCRT runtime.
  # :stdio ::
  #   (FFI::Pointer(*StdioContainer))
  # :uid ::
  #   (Integer) Libuv can change the child process' user/group id. This happens only when
  #   the appropriate bits are set in the flags fields. This is not supported on
  #   windows; uv_spawn() will fail and set the error to UV_ENOTSUP.
  # :gid ::
  #   (Integer)
  class ProcessOptions < FFI::Struct
    layout :exit_cb, :pointer,
           :file, :string,
           :args, :pointer,
           :env, :pointer,
           :cwd, :string,
           :flags, :uint,
           :stdio_count, :int,
           :stdio, :pointer,
           :uid, :uint,
           :gid, :uint
  end

  # uv_work_t is a subclass of uv_req_t
  #
  # ## Fields:
  # :data ::
  #   (FFI::Pointer(*Void))
  # :type ::
  #   (Symbol from `enum_req_type`)
  # :active_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :loop ::
  #   (FFI::Pointer(*Loop))
  # :work_cb ::
  #   (FFI::Pointer(WorkCb))
  # :after_work_cb ::
  #   (FFI::Pointer(AfterWorkCb))
  # :work_req ::
  #   (unknown)
  class Work < FFI::Struct
    layout :data, :pointer,
           :type, :req_type,
           :active_queue, [:pointer, 2],
           :loop, :pointer,
           :work_cb, :pointer,
           :after_work_cb, :pointer,
           :work_req, :char
  end

  # (Not documented)
  #
  # ## Fields:
  # :user ::
  #   (Integer)
  # :nice ::
  #   (Integer)
  # :sys ::
  #   (Integer)
  # :idle ::
  #   (Integer)
  # :irq ::
  #   (Integer)
  class CpuTimes < FFI::Struct
    layout :user, :ulong_long,
           :nice, :ulong_long,
           :sys, :ulong_long,
           :idle, :ulong_long,
           :irq, :ulong_long
  end

  # None of the above.
  # Cancel a pending request. Fails if the request is executing or has finished
  # executing.
  #
  # Returns 0 on success, -1 on error. The loop error code is not touched.
  #
  # Only cancellation of uv_fs_t, uv_getaddrinfo_t and uv_work_t requests is
  # currently supported.
  #
  # Cancelled requests have their callbacks invoked some time in the future.
  # It's _not_ safe to free the memory associated with the request until your
  # callback is called.
  #
  # Here is how cancellation is reported to your callback:
  #
  # - A uv_fs_t request has its req->errorno field set to UV_ECANCELED.
  #
  # - A uv_work_t or uv_getaddrinfo_t request has its callback invoked with
  #   status == -1 and uv_last_error(loop).code == UV_ECANCELED.
  #
  # This function is currently only implemented on UNIX platforms. On Windows,
  # it always returns -1.
  #
  # ## Fields:
  # :model ::
  #   (String)
  # :speed ::
  #   (Integer)
  # :cpu_times ::
  #   (CpuTimes)
  class CpuInfo < FFI::Struct
    layout :model, :string,
           :speed, :int,
           :cpu_times, CpuTimes.by_value
  end

  # This flag can be used with uv_fs_symlink on Windows
  # to specify whether the symlink is to be created using junction points.
  #
  # ## Fields:
  # :close_cb ::
  #   (FFI::Pointer(CloseCb))
  # :data ::
  #   (FFI::Pointer(*Void))
  # :loop ::
  #   (FFI::Pointer(*Loop))
  # :type ::
  #   (Symbol from `enum_handle_type`)
  # :handle_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :flags ::
  #   (Integer)
  # :next_closing ::
  #   (FFI::Pointer(*Handle))
  # :filename ::
  #   (String)
  # :cb ::
  #   (FFI::Pointer(FsEventCb))
  # :event_watcher ::
  #   (unknown)
  # :realpath ::
  #   (String)
  # :realpath_len ::
  #   (Integer)
  # :cf_flags ::
  #   (Integer)
  # :cf_eventstream ::
  #   (FFI::Pointer(*Void))
  # :cf_cb ::
  #   (Async)
  # :cf_events ::
  #   (Array<FFI::Pointer(*Void)>)
  # :cf_sem ::
  #   (Integer)
  # :cf_mutex ::
  #   (unknown)
  class FsEvent < FFI::Struct
    layout :close_cb, :pointer,
           :data, :pointer,
           :loop, :pointer,
           :type, :handle_type,
           :handle_queue, [:pointer, 2],
           :flags, :int,
           :next_closing, :pointer,
           :filename, :string,
           :cb, :pointer,
           :event_watcher, :char,
           :realpath, :string,
           :realpath_len, :int,
           :cf_flags, :int,
           :cf_eventstream, :pointer,
           :cf_cb, Async,
           :cf_events, [:pointer, 2],
           :cf_sem, :uint,
           :cf_mutex, :char
  end

  # UNIX signal handling on a per-event loop basis. The implementation is not
  # ultra efficient so don't go creating a million event loops with a million
  # signal watchers.
  #
  # Note to Linux users: SIGRT0 and SIGRT1 (signals 32 and 33) are used by the
  # NPTL pthreads library to manage threads. Installing watchers for those
  # signals will lead to unpredictable behavior and is strongly discouraged.
  # Future versions of libuv may simply reject them.
  #
  # Some signal support is available on Windows:
  #
  #   SIGINT is normally delivered when the user presses CTRL+C. However, like
  #   on Unix, it is not generated when terminal raw mode is enabled.
  #
  #   SIGBREAK is delivered when the user pressed CTRL+BREAK.
  #
  #   SIGHUP is generated when the user closes the console window. On SIGHUP the
  #   program is given approximately 10 seconds to perform cleanup. After that
  #   Windows will unconditionally terminate it.
  #
  #   SIGWINCH is raised whenever libuv detects that the console has been
  #   resized. SIGWINCH is emulated by libuv when the program uses an uv_tty_t
  #   handle to write to the console. SIGWINCH may not always be delivered in a
  #   timely manner; libuv will only detect size changes when the cursor is
  #   being moved. When a readable uv_tty_handle is used in raw mode, resizing
  #   the console buffer will also trigger a SIGWINCH signal.
  #
  # Watchers for other signals can be successfully created, but these signals
  # are never generated. These signals are: SIGILL, SIGABRT, SIGFPE, SIGSEGV,
  # SIGTERM and SIGKILL.
  #
  # Note that calls to raise() or abort() to programmatically raise a signal are
  # not detected by libuv; these will not trigger a signal watcher.
  #
  # ## Fields:
  # :close_cb ::
  #   (FFI::Pointer(CloseCb))
  # :data ::
  #   (FFI::Pointer(*Void))
  # :loop ::
  #   (FFI::Pointer(*Loop))
  # :type ::
  #   (Symbol from `enum_handle_type`)
  # :handle_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :flags ::
  #   (Integer)
  # :next_closing ::
  #   (FFI::Pointer(*Handle))
  # :signal_cb ::
  #   (FFI::Pointer(SignalCb))
  # :signum ::
  #   (Integer)
  # :tree_entry ::
  #   (SignalTreeEntry)
  # :caught_signals ::
  #   (Integer)
  # :dispatched_signals ::
  #   (Integer)
  module SignalWrappers
    # @param [FFI::Pointer(SignalCb)] signal_cb
    # @param [Integer] signum
    # @return [Integer]
    def start(signal_cb, signum)
      UV.signal_start(self, signal_cb, signum)
    end

    # @return [Integer]
    def stop()
      UV.signal_stop(self)
    end
  end

  class Signal < FFI::Struct
    include SignalWrappers
    layout :close_cb, :pointer,
           :data, :pointer,
           :loop, :pointer,
           :type, :handle_type,
           :handle_queue, [:pointer, 2],
           :flags, :int,
           :next_closing, :pointer,
           :signal_cb, :pointer,
           :signum, :int,
           :tree_entry, :pointer,
           :caught_signals, :uint,
           :dispatched_signals, :uint
  end

  # (Not documented)
  #
  # ## Fields:
  # :rbh_root ::
  #   (Timer)
  class Timers < FFI::Struct
    layout :rbh_root, Timer
  end

  # The presence of these unions force similar struct layout.
  #
  # ## Fields:
  # :data ::
  #   (FFI::Pointer(*Void)) User data - use this for whatever.
  # :last_err ::
  #   (Err) The last error
  # :active_handles ::
  #   (Integer) Loop reference counting
  # :handle_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :active_reqs ::
  #   (Array<FFI::Pointer(*Void)>)
  # :stop_flag ::
  #   (Integer) Internal flag to signal loop stop
  # :flags ::
  #   (Integer)
  # :backend_fd ::
  #   (Integer)
  # :pending_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :watcher_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :watchers ::
  #   (FFI::Pointer(**Io))
  # :nwatchers ::
  #   (Integer)
  # :nfds ::
  #   (Integer)
  # :wq ::
  #   (Array<FFI::Pointer(*Void)>)
  # :wq_mutex ::
  #   (unknown)
  # :wq_async ::
  #   (Async)
  # :closing_handles ::
  #   (FFI::Pointer(*Handle))
  # :process_handles ::
  #   (Array<Array<FFI::Pointer(*Void)>>)
  # :prepare_handles ::
  #   (Array<FFI::Pointer(*Void)>)
  # :check_handles ::
  #   (Array<FFI::Pointer(*Void)>)
  # :idle_handles ::
  #   (Array<FFI::Pointer(*Void)>)
  # :async_handles ::
  #   (Array<FFI::Pointer(*Void)>)
  # :async_watcher ::
  #   (unknown)
  # :timer_handles ::
  #   (Timers)
  # :time ::
  #   (Integer)
  # :signal_pipefd ::
  #   (Array<Integer>)
  # :signal_io_watcher ::
  #   (unknown)
  # :child_watcher ::
  #   (Signal)
  # :emfile_fd ::
  #   (Integer)
  # :timer_counter ::
  #   (Integer)
  # :cf_thread ::
  #   (FFI::Pointer(Thread))
  # :cf_cb ::
  #   (FFI::Pointer(*Void))
  # :cf_loop ::
  #   (FFI::Pointer(*Void))
  # :cf_mutex ::
  #   (unknown)
  # :cf_sem ::
  #   (Integer)
  # :cf_signals ::
  #   (Array<FFI::Pointer(*Void)>)
  module LoopWrappers
    # @return [nil]
    def delete()
      UV.loop_delete(self)
    end
  end

  class Loop < FFI::Struct
    include LoopWrappers
    layout :data, :pointer,
           :last_err, Err.by_value,
           :active_handles, :uint,
           :handle_queue, [:pointer, 2],
           :active_reqs, [:pointer, 2],
           :stop_flag, :uint,
           :flags, :ulong,
           :backend_fd, :int,
           :pending_queue, [:pointer, 2],
           :watcher_queue, [:pointer, 2],
           :watchers, :pointer,
           :nwatchers, :uint,
           :nfds, :uint,
           :wq, [:pointer, 2],
           :wq_mutex, :char,
           :wq_async, Async.by_value,
           :closing_handles, :pointer,
           :process_handles, [[:pointer, 2], 1],
           :prepare_handles, [:pointer, 2],
           :check_handles, [:pointer, 2],
           :idle_handles, [:pointer, 2],
           :async_handles, [:pointer, 2],
           :async_watcher, :char,
           :timer_handles, Timers.by_value,
           :time, :ulong_long,
           :signal_pipefd, [:int, 2],
           :signal_io_watcher, :char,
           :child_watcher, Signal.by_value,
           :emfile_fd, :int,
           :timer_counter, :ulong_long,
           :cf_thread, :pointer,
           :cf_cb, :pointer,
           :cf_loop, :pointer,
           :cf_mutex, :char,
           :cf_sem, :uint,
           :cf_signals, [:pointer, 2]
  end

  # uv_udp_send_t is a subclass of uv_req_t
  #
  # ## Fields:
  # :data ::
  #   (FFI::Pointer(*Void))
  # :type ::
  #   (Symbol from `enum_req_type`)
  # :active_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :handle ::
  #   (FFI::Pointer(*Udp))
  # :cb ::
  #   (FFI::Pointer(UdpSendCb))
  # :queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :addr ::
  #   (unknown)
  # :bufcnt ::
  #   (Integer)
  # :bufs ::
  #   (FFI::Pointer(*Buf))
  # :status ::
  #   (Integer)
  # :send_cb ::
  #   (FFI::Pointer(UdpSendCb))
  # :bufsml ::
  #   (Array<unknown>)
  module UdpSendWrappers
    # @param [FFI::Pointer(*Udp)] handle
    # @param [unknown] bufs
    # @param [Integer] bufcnt
    # @param [unknown] addr
    # @param [FFI::Pointer(UdpSendCb)] send_cb
    # @return [Integer]
    def udp_send(handle, bufs, bufcnt, addr, send_cb)
      UV.udp_send(self, handle, bufs, bufcnt, addr, send_cb)
    end
  end

  class UdpSend < FFI::Struct
    include UdpSendWrappers
    layout :data, :pointer,
           :type, :req_type,
           :active_queue, [:pointer, 2],
           :handle, :pointer,
           :cb, :pointer,
           :queue, [:pointer, 2],
           :addr, :char,
           :bufcnt, :int,
           :bufs, :pointer,
           :status, :long,
           :send_cb, :pointer,
           :bufsml, [:char, 4]
  end

  # (Not documented)
  #
  # ## Fields:
  # :netmask4 ::
  #   (unknown)
  # :netmask6 ::
  #   (unknown)
  class InterfaceAddressNetmask < FFI::Union
    layout :netmask4, :char,
           :netmask6, :char
  end

  # uv_fs_stat() based polling file watcher.
  #
  # ## Fields:
  # :close_cb ::
  #   (FFI::Pointer(CloseCb))
  # :data ::
  #   (FFI::Pointer(*Void))
  # :loop ::
  #   (Loop)
  # :type ::
  #   (Symbol from `enum_handle_type`)
  # :handle_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :flags ::
  #   (Integer)
  # :next_closing ::
  #   (FFI::Pointer(*Handle))
  # :poll_ctx ::
  #   (FFI::Pointer(*Void)) Private, don't touch.
  module FsPollWrappers
    # @return [Integer]
    def stop()
      UV.fs_poll_stop(self)
    end

    # @param [FFI::Pointer(FsPollCb)] poll_cb
    # @param [String] path
    # @param [Integer] interval
    # @return [Integer]
    def start(poll_cb, path, interval)
      UV.fs_poll_start(self, poll_cb, path, interval)
    end
  end

  class FsPoll < FFI::Struct
    include FsPollWrappers
    layout :close_cb, :pointer,
           :data, :pointer,
           :loop, Loop,
           :type, :handle_type,
           :handle_queue, [:pointer, 2],
           :flags, :int,
           :next_closing, :pointer,
           :poll_ctx, :pointer
  end

  # (Not documented)
  #
  # ## Fields:
  # :req ::
  #   (unknown)
  # :connect ::
  #   (unknown)
  # :write ::
  #   (unknown)
  # :shutdown ::
  #   (unknown)
  # :udp_send ::
  #   (unknown)
  # :fs ::
  #   (unknown)
  # :work ::
  #   (unknown)
  # :getaddrinfo ::
  #   (unknown)
  class AnyReq < FFI::Union
    layout :req, :char,
           :connect, :char,
           :write, :char,
           :shutdown, :char,
           :udp_send, :char,
           :fs, :char,
           :work, :char,
           :getaddrinfo, :char
  end

  # Request types.
  # Abstract base class of all requests.
  #
  # ## Fields:
  # :data ::
  #   (FFI::Pointer(*Void))
  # :type ::
  #   (Symbol from `enum_req_type`)
  # :active_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  class Req < FFI::Struct
    layout :data, :pointer,
           :type, :req_type,
           :active_queue, [:pointer, 2]
  end

  # uv_tcp_t is a subclass of uv_stream_t
  #
  # Represents a TCP stream or TCP server.
  #
  # ## Fields:
  # :close_cb ::
  #   (FFI::Pointer(CloseCb))
  # :data ::
  #   (FFI::Pointer(*Void))
  # :loop ::
  #   (FFI::Pointer(*Loop))
  # :type ::
  #   (Symbol from `enum_handle_type`)
  # :handle_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :flags ::
  #   (Integer)
  # :next_closing ::
  #   (FFI::Pointer(*Handle))
  # :write_queue_size ::
  #   (Integer)
  # :alloc_cb ::
  #   (FFI::Pointer(AllocCb))
  # :read_cb ::
  #   (FFI::Pointer(ReadCb))
  # :read2_cb ::
  #   (FFI::Pointer(Read2Cb))
  # :connect_req ::
  #   (Connect)
  # :shutdown_req ::
  #   (Shutdown)
  # :io_watcher ::
  #   (unknown)
  # :write_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :write_completed_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :connection_cb ::
  #   (FFI::Pointer(ConnectionCb))
  # :delayed_error ::
  #   (Integer)
  # :accepted_fd ::
  #   (Integer)
  # :select ::
  #   (FFI::Pointer(*Void))
  module TcpWrappers
    # @param [Integer] enable
    # @return [Integer]
    def nodelay(enable)
      UV.tcp_nodelay(self, enable)
    end

    # @param [Integer] enable
    # @return [Integer]
    def simultaneous_accepts(enable)
      UV.tcp_simultaneous_accepts(self, enable)
    end

    # @param [unknown] unknown
    # @return [Integer]
    def bind6(unknown)
      UV.tcp_bind6(self, unknown)
    end

    # @param [FFI::Pointer(*Sockaddr)] name
    # @param [FFI::Pointer(*Int)] namelen
    # @return [Integer]
    def getpeername(name, namelen)
      UV.tcp_getpeername(self, name, namelen)
    end

    # @param [Integer] enable
    # @param [Integer] delay
    # @return [Integer]
    def keepalive(enable, delay)
      UV.tcp_keepalive(self, enable, delay)
    end

    # @param [FFI::Pointer(*Sockaddr)] name
    # @param [FFI::Pointer(*Int)] namelen
    # @return [Integer]
    def getsockname(name, namelen)
      UV.tcp_getsockname(self, name, namelen)
    end

    # @param [unknown] unknown
    # @return [Integer]
    def bind(unknown)
      UV.tcp_bind(self, unknown)
    end

    # @param [Integer] sock
    # @return [Integer]
    def open(sock)
      UV.tcp_open(self, sock)
    end
  end

  class Tcp < FFI::Struct
    include TcpWrappers
    layout :close_cb, :pointer,
           :data, :pointer,
           :loop, :pointer,
           :type, :handle_type,
           :handle_queue, [:pointer, 2],
           :flags, :int,
           :next_closing, :pointer,
           :write_queue_size, :ulong,
           :alloc_cb, :pointer,
           :read_cb, :pointer,
           :read2_cb, :pointer,
           :connect_req, Connect,
           :shutdown_req, Shutdown,
           :io_watcher, :char,
           :write_queue, [:pointer, 2],
           :write_completed_queue, [:pointer, 2],
           :connection_cb, :pointer,
           :delayed_error, :int,
           :accepted_fd, :int,
           :select, :pointer
  end

  # uv_pipe_t is a subclass of uv_stream_t
  #
  # Representing a pipe stream or pipe server. On Windows this is a Named
  # Pipe. On Unix this is a UNIX domain socket.
  #
  # ## Fields:
  # :close_cb ::
  #   (FFI::Pointer(CloseCb))
  # :data ::
  #   (FFI::Pointer(*Void))
  # :loop ::
  #   (FFI::Pointer(*Loop))
  # :type ::
  #   (Symbol from `enum_handle_type`)
  # :handle_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :flags ::
  #   (Integer)
  # :next_closing ::
  #   (FFI::Pointer(*Handle))
  # :write_queue_size ::
  #   (Integer)
  # :alloc_cb ::
  #   (FFI::Pointer(AllocCb))
  # :read_cb ::
  #   (FFI::Pointer(ReadCb))
  # :read2_cb ::
  #   (FFI::Pointer(Read2Cb))
  # :connect_req ::
  #   (Connect)
  # :shutdown_req ::
  #   (Shutdown)
  # :io_watcher ::
  #   (unknown)
  # :write_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :write_completed_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :connection_cb ::
  #   (FFI::Pointer(ConnectionCb))
  # :delayed_error ::
  #   (Integer)
  # :accepted_fd ::
  #   (Integer)
  # :select ::
  #   (FFI::Pointer(*Void))
  # :ipc ::
  #   (Integer)
  # :pipe_fname ::
  #   (String)
  module PipeWrappers
    # @param [Integer] file
    # @return [Integer]
    def open(file)
      UV.pipe_open(self, file)
    end

    # @param [String] name
    # @return [Integer]
    def bind(name)
      UV.pipe_bind(self, name)
    end

    # @param [Integer] count
    # @return [nil]
    def pending_instances(count)
      UV.pipe_pending_instances(self, count)
    end
  end

  class Pipe < FFI::Struct
    include PipeWrappers
    layout :close_cb, :pointer,
           :data, :pointer,
           :loop, :pointer,
           :type, :handle_type,
           :handle_queue, [:pointer, 2],
           :flags, :int,
           :next_closing, :pointer,
           :write_queue_size, :ulong,
           :alloc_cb, :pointer,
           :read_cb, :pointer,
           :read2_cb, :pointer,
           :connect_req, Connect,
           :shutdown_req, Shutdown,
           :io_watcher, :char,
           :write_queue, [:pointer, 2],
           :write_completed_queue, [:pointer, 2],
           :connection_cb, :pointer,
           :delayed_error, :int,
           :accepted_fd, :int,
           :select, :pointer,
           :ipc, :int,
           :pipe_fname, :string
  end

  # uv_idle_t is a subclass of uv_handle_t.
  #
  # Every active idle handle gets its callback called repeatedly until it is
  # stopped. This happens after all other types of callbacks are processed.
  # When there are multiple "idle" handles active, their callbacks are called
  # in turn.
  #
  # ## Fields:
  # :close_cb ::
  #   (FFI::Pointer(CloseCb))
  # :data ::
  #   (FFI::Pointer(*Void))
  # :loop ::
  #   (FFI::Pointer(*Loop))
  # :type ::
  #   (Symbol from `enum_handle_type`)
  # :handle_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :flags ::
  #   (Integer)
  # :next_closing ::
  #   (FFI::Pointer(*Handle))
  # :idle_cb ::
  #   (FFI::Pointer(IdleCb))
  # :queue ::
  #   (Array<FFI::Pointer(*Void)>)
  module IdleWrappers
    # @return [Integer]
    def stop()
      UV.idle_stop(self)
    end

    # @param [FFI::Pointer(IdleCb)] cb
    # @return [Integer]
    def start(cb)
      UV.idle_start(self, cb)
    end
  end

  class Idle < FFI::Struct
    include IdleWrappers
    layout :close_cb, :pointer,
           :data, :pointer,
           :loop, :pointer,
           :type, :handle_type,
           :handle_queue, [:pointer, 2],
           :flags, :int,
           :next_closing, :pointer,
           :idle_cb, :pointer,
           :queue, [:pointer, 2]
  end

  # uv_getaddrinfo_t is a subclass of uv_req_t
  #
  # Request object for uv_getaddrinfo.
  #
  # ## Fields:
  # :data ::
  #   (FFI::Pointer(*Void))
  # :type ::
  #   (Symbol from `enum_req_type`)
  # :active_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :loop ::
  #   (FFI::Pointer(*Loop)) read-only
  # :work_req ::
  #   (unknown)
  # :cb ::
  #   (FFI::Pointer(GetaddrinfoCb))
  # :hints ::
  #   (FFI::Pointer(*Addrinfo))
  # :hostname ::
  #   (String)
  # :service ::
  #   (String)
  # :res ::
  #   (FFI::Pointer(*Addrinfo))
  # :retcode ::
  #   (Integer)
  class Getaddrinfo < FFI::Struct
    layout :data, :pointer,
           :type, :req_type,
           :active_queue, [:pointer, 2],
           :loop, :pointer,
           :work_req, :char,
           :cb, :pointer,
           :hints, :pointer,
           :hostname, :string,
           :service, :string,
           :res, :pointer,
           :retcode, :int
  end

  # uv_process_t is a subclass of uv_handle_t
  #
  # ## Fields:
  # :close_cb ::
  #   (FFI::Pointer(CloseCb))
  # :data ::
  #   (FFI::Pointer(*Void))
  # :loop ::
  #   (FFI::Pointer(*Loop))
  # :type ::
  #   (Symbol from `enum_handle_type`)
  # :handle_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :flags ::
  #   (Integer)
  # :next_closing ::
  #   (FFI::Pointer(*Handle))
  # :exit_cb ::
  #   (FFI::Pointer(ExitCb))
  # :pid ::
  #   (Integer)
  # :queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :errorno ::
  #   (Integer)
  module ProcessWrappers
    # @param [Integer] signum
    # @return [Integer]
    def kill(signum)
      UV.process_kill(self, signum)
    end
  end

  class Process < FFI::Struct
    include ProcessWrappers
    layout :close_cb, :pointer,
           :data, :pointer,
           :loop, :pointer,
           :type, :handle_type,
           :handle_queue, [:pointer, 2],
           :flags, :int,
           :next_closing, :pointer,
           :exit_cb, :pointer,
           :pid, :int,
           :queue, [:pointer, 2],
           :errorno, :int
  end

  # (Not documented)
  #
  # ## Fields:
  # :st_dev ::
  #   (Integer)
  # :st_mode ::
  #   (Integer)
  # :st_nlink ::
  #   (Integer)
  # :st_uid ::
  #   (Integer)
  # :st_gid ::
  #   (Integer)
  # :st_rdev ::
  #   (Integer)
  # :st_ino ::
  #   (Integer)
  # :st_size ::
  #   (Integer)
  # :st_blksize ::
  #   (Integer)
  # :st_blocks ::
  #   (Integer)
  # :st_atim ::
  #   (Timespec)
  # :st_mtim ::
  #   (Timespec)
  # :st_ctim ::
  #   (Timespec)
  class Stat < FFI::Struct
    layout :st_dev, :ulong_long,
           :st_mode, :ulong_long,
           :st_nlink, :ulong_long,
           :st_uid, :ulong_long,
           :st_gid, :ulong_long,
           :st_rdev, :ulong_long,
           :st_ino, :ulong_long,
           :st_size, :ulong_long,
           :st_blksize, :ulong_long,
           :st_blocks, :ulong_long,
           :st_atim, Timespec.by_value,
           :st_mtim, Timespec.by_value,
           :st_ctim, Timespec.by_value
  end


  # uv_fs_t is a subclass of uv_req_t
  #
  # ## Fields:
  # :data ::
  #   (FFI::Pointer(*Void))
  # :type ::
  #   (Symbol from `enum_req_type`)
  # :active_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :fs_type ::
  #   (Symbol from `enum_fs_type`)
  # :loop ::
  #   (FFI::Pointer(*Loop))
  # :cb ::
  #   (FFI::Pointer(FsCb))
  # :result ::
  #   (Integer)
  # :ptr ::
  #   (FFI::Pointer(*Void))
  # :path ::
  #   (String)
  # :errorno ::
  #   (Symbol from `enum_err_code`)
  # :statbuf ::
  #   (Stat)
  # :new_path ::
  #   (String)
  # :file ::
  #   (Integer)
  # :flags ::
  #   (Integer)
  # :mode ::
  #   (Integer)
  # :buf ::
  #   (FFI::Pointer(*Void))
  # :len ::
  #   (Integer)
  # :off ::
  #   (Integer)
  # :uid ::
  #   (Integer)
  # :gid ::
  #   (Integer)
  # :atime ::
  #   (Float)
  # :mtime ::
  #   (Float)
  # :work_req ::
  #   (unknown)
  module FsWrappers
    # @return [nil]
    def req_cleanup()
      UV.fs_req_cleanup(self)
    end
  end

  class Fs < FFI::Struct
    include FsWrappers
    layout :data, :pointer,
           :type, :req_type,
           :active_queue, [:pointer, 2],
           :fs_type, :fs_type,
           :loop, :pointer,
           :cb, :pointer,
           :result, :long,
           :ptr, :pointer,
           :path, :string,
           :errorno, :err_code,
           :statbuf, Stat.by_value,
           :new_path, :string,
           :file, :int,
           :flags, :int,
           :mode, :ushort,
           :buf, :pointer,
           :len, :ulong,
           :off, :long_long,
           :uid, :uint,
           :gid, :uint,
           :atime, :double,
           :mtime, :double,
           :work_req, :char
  end

  # (Not documented)
  #
  # ## Fields:
  # :address4 ::
  #   (unknown)
  # :address6 ::
  #   (unknown)
  class InterfaceAddressAddress < FFI::Union
    layout :address4, :char,
           :address6, :char
  end

  # uv_udp_t is a subclass of uv_handle_t
  #
  # ## Fields:
  # :close_cb ::
  #   (FFI::Pointer(CloseCb))
  # :data ::
  #   (FFI::Pointer(*Void))
  # :loop ::
  #   (FFI::Pointer(*Loop))
  # :type ::
  #   (Symbol from `enum_handle_type`)
  # :handle_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :flags ::
  #   (Integer)
  # :next_closing ::
  #   (FFI::Pointer(*Handle))
  # :alloc_cb ::
  #   (FFI::Pointer(AllocCb))
  # :recv_cb ::
  #   (FFI::Pointer(UdpRecvCb))
  # :io_watcher ::
  #   (unknown)
  # :write_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :write_completed_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  module UdpWrappers
    # @param [unknown] addr
    # @param [Integer] flags
    # @return [Integer]
    def bind(addr, flags)
      UV.udp_bind(self, addr, flags)
    end

    # @param [FFI::Pointer(*Sockaddr)] name
    # @param [FFI::Pointer(*Int)] namelen
    # @return [Integer]
    def getsockname(name, namelen)
      UV.udp_getsockname(self, name, namelen)
    end

    # @param [Integer] on
    # @return [Integer]
    def set_multicast_loop(on)
      UV.udp_set_multicast_loop(self, on)
    end

    # @param [Integer] on
    # @return [Integer]
    def set_broadcast(on)
      UV.udp_set_broadcast(self, on)
    end

    # @param [FFI::Pointer(AllocCb)] alloc_cb
    # @param [FFI::Pointer(UdpRecvCb)] recv_cb
    # @return [Integer]
    def recv_start(alloc_cb, recv_cb)
      UV.udp_recv_start(self, alloc_cb, recv_cb)
    end

    # @param [Integer] sock
    # @return [Integer]
    def open(sock)
      UV.udp_open(self, sock)
    end

    # @param [String] multicast_addr
    # @param [String] interface_addr
    # @param [Symbol from `enum_membership`] membership
    # @return [Integer]
    def set_membership(multicast_addr, interface_addr, membership)
      UV.udp_set_membership(self, multicast_addr, interface_addr, membership)
    end

    # @param [Integer] ttl
    # @return [Integer]
    def set_ttl(ttl)
      UV.udp_set_ttl(self, ttl)
    end

    # @return [Integer]
    def recv_stop()
      UV.udp_recv_stop(self)
    end

    # @param [unknown] addr
    # @param [Integer] flags
    # @return [Integer]
    def bind6(addr, flags)
      UV.udp_bind6(self, addr, flags)
    end

    # @param [Integer] ttl
    # @return [Integer]
    def set_multicast_ttl(ttl)
      UV.udp_set_multicast_ttl(self, ttl)
    end
  end

  class Udp < FFI::Struct
    include UdpWrappers
    layout :close_cb, :pointer,
           :data, :pointer,
           :loop, :pointer,
           :type, :handle_type,
           :handle_queue, [:pointer, 2],
           :flags, :int,
           :next_closing, :pointer,
           :alloc_cb, :pointer,
           :recv_cb, :pointer,
           :io_watcher, :char,
           :write_queue, [:pointer, 2],
           :write_completed_queue, [:pointer, 2]
  end

  # (Not documented)
  #
  # ## Fields:
  # :rbe_left ::
  #   (Timer)
  # :rbe_right ::
  #   (Timer)
  # :rbe_parent ::
  #   (Timer)
  # :rbe_color ::
  #   (Integer)
  class TimerTreeEntry < FFI::Struct
    layout :rbe_left, Timer,
           :rbe_right, Timer,
           :rbe_parent, Timer,
           :rbe_color, :int
  end

  # (Not documented)
  #
  # ## Fields:
  # :close_cb ::
  #   (FFI::Pointer(CloseCb))
  # :data ::
  #   (FFI::Pointer(*Void))
  # :loop ::
  #   (Loop)
  # :type ::
  #   (Symbol from `enum_handle_type`)
  # :handle_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :flags ::
  #   (Integer)
  # :next_closing ::
  #   (FFI::Pointer(*Handle))
  class Handle < FFI::Struct
    layout :close_cb, :pointer,
           :data, :pointer,
           :loop, Loop,
           :type, :handle_type,
           :handle_queue, [:pointer, 2],
           :flags, :int,
           :next_closing, :pointer
  end

  # uv_stream_t is a subclass of uv_handle_t
  #
  # uv_stream is an abstract class.
  #
  # uv_stream_t is the parent class of uv_tcp_t, uv_pipe_t, uv_tty_t, and
  # soon uv_file_t.
  #
  # ## Fields:
  # :close_cb ::
  #   (FFI::Pointer(CloseCb))
  # :data ::
  #   (FFI::Pointer(*Void))
  # :loop ::
  #   (FFI::Pointer(*Loop))
  # :type ::
  #   (Symbol from `enum_handle_type`)
  # :handle_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :flags ::
  #   (Integer)
  # :next_closing ::
  #   (Handle)
  # :write_queue_size ::
  #   (Integer)
  # :alloc_cb ::
  #   (FFI::Pointer(AllocCb))
  # :read_cb ::
  #   (FFI::Pointer(ReadCb))
  # :read2_cb ::
  #   (FFI::Pointer(Read2Cb))
  # :connect_req ::
  #   (Connect)
  # :shutdown_req ::
  #   (Shutdown)
  # :io_watcher ::
  #   (unknown)
  # :write_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :write_completed_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :connection_cb ::
  #   (FFI::Pointer(ConnectionCb))
  # :delayed_error ::
  #   (Integer)
  # :accepted_fd ::
  #   (Integer)
  # :select ::
  #   (FFI::Pointer(*Void))
  class Stream < FFI::Struct
    layout :close_cb, :pointer,
           :data, :pointer,
           :loop, :pointer,
           :type, :handle_type,
           :handle_queue, [:pointer, 2],
           :flags, :int,
           :next_closing, Handle,
           :write_queue_size, :ulong,
           :alloc_cb, :pointer,
           :read_cb, :pointer,
           :read2_cb, :pointer,
           :connect_req, Connect,
           :shutdown_req, Shutdown,
           :io_watcher, :char,
           :write_queue, [:pointer, 2],
           :write_completed_queue, [:pointer, 2],
           :connection_cb, :pointer,
           :delayed_error, :int,
           :accepted_fd, :int,
           :select, :pointer
  end

  # When UV_CREATE_PIPE is specified, UV_READABLE_PIPE and UV_WRITABLE_PIPE
  # determine the direction of flow, from the child process' perspective. Both
  # flags may be specified to create a duplex data stream.
  #
  # ## Fields:
  # :flags ::
  #   (Symbol from `enum_stdio_flags`)
  # :data ::
  #   (StdioContainerData)
  class StdioContainer < FFI::Struct
    layout :flags, :stdio_flags,
           :data, StdioContainerData.by_value
  end

  # Cancel a pending request. Fails if the request is executing or has finished
  # executing.
  #
  # Returns 0 on success, -1 on error. The loop error code is not touched.
  #
  # Only cancellation of uv_fs_t, uv_getaddrinfo_t and uv_work_t requests is
  # currently supported.
  #
  # Cancelled requests have their callbacks invoked some time in the future.
  # It's _not_ safe to free the memory associated with the request until your
  # callback is called.
  #
  # Here is how cancellation is reported to your callback:
  #
  # - A uv_fs_t request has its req->errorno field set to UV_ECANCELED.
  #
  # - A uv_work_t or uv_getaddrinfo_t request has its callback invoked with
  #   status == -1 and uv_last_error(loop).code == UV_ECANCELED.
  #
  # This function is currently only implemented on UNIX platforms. On Windows,
  # it always returns -1.
  #
  # ## Fields:
  # :name ::
  #   (String)
  # :is_internal ::
  #   (Integer)
  # :address ::
  #   (InterfaceAddressAddress)
  # :netmask ::
  #   (InterfaceAddressNetmask)
  class InterfaceAddress < FFI::Struct
    layout :name, :string,
           :is_internal, :int,
           :address, InterfaceAddressAddress.by_value,
           :netmask, InterfaceAddressNetmask.by_value
  end

  # uv_prepare_t is a subclass of uv_handle_t.
  #
  # Every active prepare handle gets its callback called exactly once per loop
  # iteration, just before the system blocks to wait for completed i/o.
  #
  # ## Fields:
  # :close_cb ::
  #   (FFI::Pointer(CloseCb))
  # :data ::
  #   (FFI::Pointer(*Void))
  # :loop ::
  #   (FFI::Pointer(*Loop))
  # :type ::
  #   (Symbol from `enum_handle_type`)
  # :handle_queue ::
  #   (Array<FFI::Pointer(*Void)>)
  # :flags ::
  #   (Integer)
  # :next_closing ::
  #   (Handle)
  # :prepare_cb ::
  #   (FFI::Pointer(PrepareCb))
  # :queue ::
  #   (Array<FFI::Pointer(*Void)>)
  module PrepareWrappers
    # @return [Integer]
    def stop()
      UV.prepare_stop(self)
    end

    # @param [FFI::Pointer(PrepareCb)] cb
    # @return [Integer]
    def start(cb)
      UV.prepare_start(self, cb)
    end
  end

  class Prepare < FFI::Struct
    include PrepareWrappers
    layout :close_cb, :pointer,
           :data, :pointer,
           :loop, :pointer,
           :type, :handle_type,
           :handle_queue, [:pointer, 2],
           :flags, :int,
           :next_closing, Handle,
           :prepare_cb, :pointer,
           :queue, [:pointer, 2]
  end

  # (Not documented)
  #
  # ## Fields:
  # :rbe_left ::
  #   (Signal)
  # :rbe_right ::
  #   (Signal)
  # :rbe_parent ::
  #   (Signal)
  # :rbe_color ::
  #   (Integer)
  class SignalTreeEntry < FFI::Struct
    layout :rbe_left, Signal,
           :rbe_right, Signal,
           :rbe_parent, Signal,
           :rbe_color, :int
  end

  ##
  # Writing Callbacks
  #
  # Should return a buffer that libuv can use to read data into.
  #
  # `suggested_size` is a hint. Returning a buffer that is smaller is perfectly
  # okay as long as `buf.len > 0`.
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_alloc_cb`(handle, suggested_size)
  # @param [Handle] handle
  # @param [Integer] suggested_size
  # @return [unknown]
  # @scope class
  #
  callback :alloc_cb, [Handle, :ulong], :char

  # Just like the uv_read_cb except that if the pending parameter is true
  # then you can use uv_accept() to pull the new handle into the process.
  # If no handle is pending then pending will be UV_UNKNOWN_HANDLE.
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_read2_cb`(nread, buf, pending)
  # @param [Integer] nread
  # @param [unknown] buf
  # @param [Symbol from `enum_handle_type`] pending
  # @return [Pipe]
  # @scope class
  #
  callback :read2_cb, [:long, :char, :handle_type], Pipe

  # (Not documented)
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_connect_cb`(status)
  # @param [Integer] status
  # @return [Connect]
  # @scope class
  #
  callback :connect_cb, [:int], Connect

  # (Not documented)
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_connection_cb`(status)
  # @param [Integer] status
  # @return [Stream]
  # @scope class
  #
  callback :connection_cb, [:int], Stream

  # (Not documented)
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_poll_cb`(status, events)
  # @param [Integer] status
  # @param [Integer] events
  # @return [Poll]
  # @scope class
  #
  callback :poll_cb, [:int, :int], Poll

  # TODO: do these really need a status argument?
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_async_cb`(status)
  # @param [Integer] status
  # @return [Async]
  # @scope class
  #
  callback :async_cb, [:int], Async

  # (Not documented)
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_check_cb`(status)
  # @param [Integer] status
  # @return [Check]
  # @scope class
  #
  callback :check_cb, [:int], Check

  # (Not documented)
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_exit_cb`(exit_status, term_signal)
  # @param [Integer] exit_status
  # @param [Integer] term_signal
  # @return [Process]
  # @scope class
  #
  callback :exit_cb, [:int, :int], Process

  # (Not documented)
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_fs_cb`(req)
  # @param [Fs] req
  # @return [Fs]
  # @scope class
  #
  callback :fs_cb, [Fs], Fs

  # (Not documented)
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_after_work_cb`(status)
  # @param [Integer] status
  # @return [Work]
  # @scope class
  #
  callback :after_work_cb, [:int], Work

  # This will be called repeatedly after the uv_fs_event_t is initialized.
  # If uv_fs_event_t was initialized with a directory the filename parameter
  # will be a relative path to a file contained in the directory.
  # The events parameter is an ORed mask of enum uv_fs_event elements.
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_fs_event_cb`(filename, events, status)
  # @param [String] filename
  # @param [Integer] events
  # @param [Integer] status
  # @return [FsEvent]
  # @scope class
  #
  callback :fs_event_cb, [:string, :int, :int], FsEvent

  # (Not documented)
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_signal_cb`(signum)
  # @param [Integer] signum
  # @return [Signal]
  # @scope class
  #
  callback :signal_cb, [:int], Signal

  # Called after a uv_udp_send() or uv_udp_send6(). status 0 indicates
  # success otherwise error.
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_udp_send_cb`(status)
  # @param [Integer] status
  # @return [UdpSend]
  # @scope class
  #
  callback :udp_send_cb, [:int], UdpSend

  # `nread` is > 0 if there is data available, 0 if libuv is done reading for now
  # or -1 on error.
  #
  # Error details can be obtained by calling uv_last_error(). UV_EOF indicates
  # that the stream has been closed.
  #
  # The callee is responsible for closing the stream when an error happens.
  # Trying to read from the stream again is undefined.
  #
  # The callee is responsible for freeing the buffer, libuv does not reuse it.
  # The buffer may be a null buffer (where buf.base=NULL and buf.len=0) on EOF
  # or error.
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_read_cb`(nread, buf)
  # @param [Integer] nread
  # @param [unknown] buf
  # @return [Stream]
  # @scope class
  #
  callback :read_cb, [:long, :char], Stream

  # Just like the uv_read_cb except that if the pending parameter is true
  # then you can use uv_accept() to pull the new handle into the process.
  # If no handle is pending then pending will be UV_UNKNOWN_HANDLE.
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_shutdown_cb`(status)
  # @param [Integer] status
  # @return [Shutdown]
  # @scope class
  #
  callback :shutdown_cb, [:int], Shutdown

  # (Not documented)
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_timer_cb`(status)
  # @param [Integer] status
  # @return [Timer]
  # @scope class
  #
  callback :timer_cb, [:int], Timer

  # TODO: do these really need a status argument?
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_idle_cb`(status)
  # @param [Integer] status
  # @return [Idle]
  # @scope class
  #
  callback :idle_cb, [:int], Idle

  # (Not documented)
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_work_cb`(req)
  # @param [Work] req
  # @return [Work]
  # @scope class
  #
  callback :work_cb, [Work], Work

  # Just like the uv_read_cb except that if the pending parameter is true
  # then you can use uv_accept() to pull the new handle into the process.
  # If no handle is pending then pending will be UV_UNKNOWN_HANDLE.
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_write_cb`(status)
  # @param [Integer] status
  # @return [Write]
  # @scope class
  #
  callback :write_cb, [:int], Write

  # TODO: do these really need a status argument?
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_prepare_cb`(status)
  # @param [Integer] status
  # @return [Prepare]
  # @scope class
  #
  callback :prepare_cb, [:int], Prepare

  # (Not documented)
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_getaddrinfo_cb`(status, res)
  # @param [Integer] status
  # @param [FFI::Pointer(*Addrinfo)] res
  # @return [Getaddrinfo]
  # @scope class
  #
  callback :getaddrinfo_cb, [:int, :pointer], Getaddrinfo

  # Callback that is invoked when a new UDP datagram is received.
  #
  #  handle  UDP handle.
  #  nread   Number of bytes that have been received.
  #          0 if there is no more data to read. You may
  #          discard or repurpose the read buffer.
  #          -1 if a transmission error was detected.
  #  buf     uv_buf_t with the received data.
  #  addr    struct sockaddr_in or struct sockaddr_in6.
  #          Valid for the duration of the callback only.
  #  flags   One or more OR'ed UV_UDP_* constants.
  #          Right now only UV_UDP_PARTIAL is used.
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_udp_recv_cb`(nread, buf, addr, flags)
  # @param [Integer] nread
  # @param [unknown] buf
  # @param [FFI::Pointer(*Sockaddr)] addr
  # @param [Integer] flags
  # @return [Udp]
  # @scope class
  #
  callback :udp_recv_cb, [:long, :char, :pointer, :uint], Udp

  # Just like the uv_read_cb except that if the pending parameter is true
  # then you can use uv_accept() to pull the new handle into the process.
  # If no handle is pending then pending will be UV_UNKNOWN_HANDLE.
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_close_cb`(handle)
  # @param [Handle] handle
  # @return [Handle]
  # @scope class
  #
  callback :close_cb, [Handle], Handle

  # This will be called repeatedly after the uv_fs_event_t is initialized.
  # If uv_fs_event_t was initialized with a directory the filename parameter
  # will be a relative path to a file contained in the directory.
  # The events parameter is an ORed mask of enum uv_fs_event elements.
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_fs_poll_cb`(status, prev, curr)
  # @param [Integer] status
  # @param [Stat] prev
  # @param [Stat] curr
  # @return [FsPoll]
  # @scope class
  #
  callback :fs_poll_cb, [:int, Stat, Stat], FsPoll

  # TODO: do these really need a status argument?
  #
  # _This entry is only for documentation and no real method._
  #
  # @method `callback_walk_cb`(arg)
  # @param [FFI::Pointer(*Void)] arg
  # @return [Handle]
  # @scope class
  #
  callback :walk_cb, [:pointer], Handle

  ##
  # Writing Functions
  #
  # (Not documented)
  #
  # @method version()
  # @return [Integer]
  # @scope class
  #
  attach_function :version, :uv_version, [], :uint

  # This function must be called before any other functions in libuv.
  #
  # All functions besides uv_run() are non-blocking.
  #
  # All callbacks in libuv are made asynchronously. That is they are never
  # made by the function that takes them as a parameter.
  #
  # @method loop_new()
  # @return [Loop]
  # @scope class
  #
  attach_function :loop_new, :uv_loop_new, [], Loop

  # Returns the default loop.
  #
  # @method default_loop()
  # @return [Loop]
  # @scope class
  #
  attach_function :default_loop, :uv_default_loop, [], Loop

  # This function will stop the event loop by forcing uv_run to end
  # as soon as possible, but not sooner than the next loop iteration.
  # If this function was called before blocking for i/o, the loop won't
  # block for i/o on this iteration.
  #
  # @method stop(loop)
  # @param [Loop] loop
  # @return [nil]
  # @scope class
  #
  attach_function :stop, :uv_stop, [Loop], :void

  # Manually modify the event loop's reference count. Useful if the user wants
  # to have a handle or timeout that doesn't keep the loop alive.
  #
  # @method unref(handle)
  # @param [Handle] handle
  # @return [nil]
  # @scope class
  #
  attach_function :unref, :uv_unref, [Handle], :void

  # Update the event loop's concept of "now". Libuv caches the current time
  # at the start of the event loop tick in order to reduce the number of
  # time-related system calls.
  #
  # You won't normally need to call this function unless you have callbacks
  # that block the event loop for longer periods of time, where "longer" is
  # somewhat subjective but probably on the order of a millisecond or more.
  #
  # @method update_time(loop)
  # @param [Loop] loop
  # @return [nil]
  # @scope class
  #
  attach_function :update_time, :uv_update_time, [Loop], :void

  # Get backend file descriptor. Only kqueue, epoll and event ports are
  # supported.
  #
  # This can be used in conjunction with `uv_run(loop, UV_RUN_NOWAIT)` to
  # poll in one thread and run the event loop's event callbacks in another.
  #
  # Useful for embedding libuv's event loop in another event loop.
  # See test/test-embed.c for an example.
  #
  # Note that embedding a kqueue fd in another kqueue pollset doesn't work on
  # all platforms. It's not an error to add the fd but it never generates
  # events.
  #
  # @method backend_fd(loop)
  # @param [Loop] loop
  # @return [Integer]
  # @scope class
  #
  attach_function :backend_fd, :uv_backend_fd, [Loop], :int

  # Most functions return boolean: 0 for success and -1 for failure.
  # On error the user should then call uv_last_error() to determine
  # the error code.
  #
  # @method last_error(loop)
  # @param [Loop] loop
  # @return [Err]
  # @scope class
  #
  attach_function :last_error, :uv_last_error, [Loop], Err.by_value

  # (Not documented)
  #
  # @method err_name(err)
  # @param [Err] err
  # @return [String]
  # @scope class
  #
  attach_function :err_name, :uv_err_name, [Err.by_value], :string

  # Returns size of various handle types, useful for FFI
  # bindings to allocate correct memory without copying struct
  # definitions
  #
  # @method handle_size(type)
  # @param [Symbol from `enum_handle_type`] type
  # @return [Integer]
  # @scope class
  #
  attach_function :handle_size, :uv_handle_size, [:handle_type], :ulong

  # Returns 1 if the prepare/check/idle/timer handle has been started, 0
  # otherwise. For other handle types this always returns 1.
  #
  # @method is_active(handle)
  # @param [Handle] handle
  # @return [Integer]
  # @scope class
  #
  attach_function :is_active, :uv_is_active, [Handle], :int

  # Request handle to be closed. close_cb will be called asynchronously after
  # this call. This MUST be called on each handle before memory is released.
  #
  # Note that handles that wrap file descriptors are closed immediately but
  # close_cb will still be deferred to the next iteration of the event loop.
  # It gives you a chance to free up any resources associated with the handle.
  #
  # In-progress requests, like uv_connect_t or uv_write_t, are cancelled and
  # have their callbacks called asynchronously with status=-1 and the error code
  # set to UV_ECANCELED.
  #
  # @method close(handle, close_cb)
  # @param [Handle] handle
  # @param [FFI::Pointer(CloseCb)] close_cb
  # @return [nil]
  # @scope class
  #
  attach_function :close, :uv_close, [Handle, :pointer], :void

  # Utility function. Copies up to `size` characters from `src` to `dst`
  # and ensures that `dst` is properly NUL terminated unless `size` is zero.
  #
  # @method strlcpy(dst, src, size)
  # @param [String] dst
  # @param [String] src
  # @param [Integer] size
  # @return [Integer]
  # @scope class
  #
  attach_function :strlcpy, :uv_strlcpy, [:string, :string, :ulong], :ulong

  # uv_stream_t is a subclass of uv_handle_t
  #
  # uv_stream is an abstract class.
  #
  # uv_stream_t is the parent class of uv_tcp_t, uv_pipe_t, uv_tty_t, and
  # soon uv_file_t.
  #
  # @method listen(stream, backlog, cb)
  # @param [Stream] stream
  # @param [Integer] backlog
  # @param [FFI::Pointer(ConnectionCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :listen, :uv_listen, [Stream, :int, :pointer], :int

  # Read data from an incoming stream. The callback will be made several
  # times until there is no more data to read or uv_read_stop is called.
  # When we've reached EOF nread will be set to -1 and the error is set
  # to UV_EOF. When nread == -1 the buf parameter might not point to a
  # valid buffer; in that case buf.len and buf.base are both set to 0.
  # Note that nread might also be 0, which does *not* indicate an error or
  # eof; it happens when libuv requested a buffer through the alloc callback
  # but then decided that it didn't need that buffer.
  #
  # @method read_start(stream, alloc_cb, read_cb)
  # @param [Stream] stream
  # @param [FFI::Pointer(AllocCb)] alloc_cb
  # @param [FFI::Pointer(ReadCb)] read_cb
  # @return [Integer]
  # @scope class
  #
  attach_function :read_start, :uv_read_start, [Stream, :pointer, :pointer], :int

  # Extended read methods for receiving handles over a pipe. The pipe must be
  # initialized with ipc == 1.
  #
  # @method read2_start(stream, alloc_cb, read_cb)
  # @param [Stream] stream
  # @param [FFI::Pointer(AllocCb)] alloc_cb
  # @param [FFI::Pointer(Read2Cb)] read_cb
  # @return [Integer]
  # @scope class
  #
  attach_function :read2_start, :uv_read2_start, [Stream, :pointer, :pointer], :int

  # Extended write function for sending handles over a pipe. The pipe must be
  # initialized with ipc == 1.
  # send_handle must be a TCP socket or pipe, which is a server or a connection
  # (listening or connected state).  Bound sockets or pipes will be assumed to
  # be servers.
  #
  # @method write2(req, handle, bufs, bufcnt, send_handle, cb)
  # @param [Write] req
  # @param [Stream] handle
  # @param [unknown] bufs
  # @param [Integer] bufcnt
  # @param [Stream] send_handle
  # @param [FFI::Pointer(WriteCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :write2, :uv_write2, [Write, Stream, :char, :int, Stream, :pointer], :int

  # Used to determine whether a stream is readable or writable.
  #
  # @method is_writable(handle)
  # @param [Stream] handle
  # @return [Integer]
  # @scope class
  #
  attach_function :is_writable, :uv_is_writable, [Stream], :int

  # uv_tcp_t is a subclass of uv_stream_t
  #
  # Represents a TCP stream or TCP server.
  #
  # @method tcp_init(loop, handle)
  # @param [Loop] loop
  # @param [Tcp] handle
  # @return [Integer]
  # @scope class
  #
  attach_function :tcp_init, :uv_tcp_init, [Loop, Tcp], :int

  # Enable/disable Nagle's algorithm.
  #
  # @method tcp_nodelay(handle, enable)
  # @param [Tcp] handle
  # @param [Integer] enable
  # @return [Integer]
  # @scope class
  #
  attach_function :tcp_nodelay, :uv_tcp_nodelay, [Tcp, :int], :int

  # Enable/disable simultaneous asynchronous accept requests that are
  # queued by the operating system when listening for new tcp connections.
  # This setting is used to tune a tcp server for the desired performance.
  # Having simultaneous accepts can significantly improve the rate of
  # accepting connections (which is why it is enabled by default) but
  # may lead to uneven load distribution in multi-process setups.
  #
  # @method tcp_simultaneous_accepts(handle, enable)
  # @param [Tcp] handle
  # @param [Integer] enable
  # @return [Integer]
  # @scope class
  #
  attach_function :tcp_simultaneous_accepts, :uv_tcp_simultaneous_accepts, [Tcp, :int], :int

  # (Not documented)
  #
  # @method tcp_bind6(handle, unknown)
  # @param [Tcp] handle
  # @param [unknown] unknown
  # @return [Integer]
  # @scope class
  #
  attach_function :tcp_bind6, :uv_tcp_bind6, [Tcp, :char], :int

  # (Not documented)
  #
  # @method tcp_getpeername(handle, name, namelen)
  # @param [Tcp] handle
  # @param [FFI::Pointer(*Sockaddr)] name
  # @param [FFI::Pointer(*Int)] namelen
  # @return [Integer]
  # @scope class
  #
  attach_function :tcp_getpeername, :uv_tcp_getpeername, [Tcp, :pointer, :pointer], :int

  # uv_tcp_connect, uv_tcp_connect6
  # These functions establish IPv4 and IPv6 TCP connections. Provide an
  # initialized TCP handle and an uninitialized uv_connect_t*. The callback
  # will be made when the connection is established.
  #
  # @method tcp_connect6(req, handle, address, cb)
  # @param [Connect] req
  # @param [Tcp] handle
  # @param [unknown] address
  # @param [FFI::Pointer(ConnectCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :tcp_connect6, :uv_tcp_connect6, [Connect, Tcp, :char, :pointer], :int

  # Initialize a new UDP handle. The actual socket is created lazily.
  # Returns 0 on success.
  #
  # @method udp_init(loop, handle)
  # @param [Loop] loop
  # @param [Udp] handle
  # @return [Integer]
  # @scope class
  #
  attach_function :udp_init, :uv_udp_init, [Loop, Udp], :int

  # Bind to a IPv4 address and port.
  #
  # Arguments:
  #  handle    UDP handle. Should have been initialized with `uv_udp_init`.
  #  addr      struct sockaddr_in with the address and port to bind to.
  #  flags     Unused.
  #
  # Returns:
  #  0 on success, -1 on error.
  #
  # @method udp_bind(handle, addr, flags)
  # @param [Udp] handle
  # @param [unknown] addr
  # @param [Integer] flags
  # @return [Integer]
  # @scope class
  #
  attach_function :udp_bind, :uv_udp_bind, [Udp, :char, :uint], :int

  # Bind to a IPv6 address and port.
  #
  # Arguments:
  #  handle    UDP handle. Should have been initialized with `uv_udp_init`.
  #  addr      struct sockaddr_in with the address and port to bind to.
  #  flags     Should be 0 or UV_UDP_IPV6ONLY.
  #
  # Returns:
  #  0 on success, -1 on error.
  #
  # @method udp_getsockname(handle, name, namelen)
  # @param [Udp] handle
  # @param [FFI::Pointer(*Sockaddr)] name
  # @param [FFI::Pointer(*Int)] namelen
  # @return [Integer]
  # @scope class
  #
  attach_function :udp_getsockname, :uv_udp_getsockname, [Udp, :pointer, :pointer], :int

  # Set IP multicast loop flag. Makes multicast packets loop back to
  # local sockets.
  #
  # Arguments:
  #  handle              UDP handle. Should have been initialized with
  #                      `uv_udp_init`.
  #  on                  1 for on, 0 for off
  #
  # Returns:
  #  0 on success, -1 on error.
  #
  # @method udp_set_multicast_loop(handle, on)
  # @param [Udp] handle
  # @param [Integer] on
  # @return [Integer]
  # @scope class
  #
  attach_function :udp_set_multicast_loop, :uv_udp_set_multicast_loop, [Udp, :int], :int

  # Set broadcast on or off
  #
  # Arguments:
  #  handle              UDP handle. Should have been initialized with
  #                      `uv_udp_init`.
  #  on                  1 for on, 0 for off
  #
  # Returns:
  #  0 on success, -1 on error.
  #
  # @method udp_set_broadcast(handle, on)
  # @param [Udp] handle
  # @param [Integer] on
  # @return [Integer]
  # @scope class
  #
  attach_function :udp_set_broadcast, :uv_udp_set_broadcast, [Udp, :int], :int

  # Send data. If the socket has not previously been bound with `uv_udp_bind`
  # or `uv_udp_bind6`, it is bound to 0.0.0.0 (the "all interfaces" address)
  # and a random port number.
  #
  # Arguments:
  #  req       UDP request handle. Need not be initialized.
  #  handle    UDP handle. Should have been initialized with `uv_udp_init`.
  #  bufs      List of buffers to send.
  #  bufcnt    Number of buffers in `bufs`.
  #  addr      Address of the remote peer. See `uv_ip4_addr`.
  #  send_cb   Callback to invoke when the data has been sent out.
  #
  # Returns:
  #  0 on success, -1 on error.
  #
  # @method udp_send(req, handle, bufs, bufcnt, addr, send_cb)
  # @param [UdpSend] req
  # @param [Udp] handle
  # @param [unknown] bufs
  # @param [Integer] bufcnt
  # @param [unknown] addr
  # @param [FFI::Pointer(UdpSendCb)] send_cb
  # @return [Integer]
  # @scope class
  #
  attach_function :udp_send, :uv_udp_send, [UdpSend, Udp, :char, :int, :char, :pointer], :int

  # Receive data. If the socket has not previously been bound with `uv_udp_bind`
  # or `uv_udp_bind6`, it is bound to 0.0.0.0 (the "all interfaces" address)
  # and a random port number.
  #
  # Arguments:
  #  handle    UDP handle. Should have been initialized with `uv_udp_init`.
  #  alloc_cb  Callback to invoke when temporary storage is needed.
  #  recv_cb   Callback to invoke with received data.
  #
  # Returns:
  #  0 on success, -1 on error.
  #
  # @method udp_recv_start(handle, alloc_cb, recv_cb)
  # @param [Udp] handle
  # @param [FFI::Pointer(AllocCb)] alloc_cb
  # @param [FFI::Pointer(UdpRecvCb)] recv_cb
  # @return [Integer]
  # @scope class
  #
  attach_function :udp_recv_start, :uv_udp_recv_start, [Udp, :pointer, :pointer], :int

  # Initialize a new TTY stream with the given file descriptor. Usually the
  # file descriptor will be
  #   0 = stdin
  #   1 = stdout
  #   2 = stderr
  # The last argument, readable, specifies if you plan on calling
  # uv_read_start with this stream. stdin is readable, stdout is not.
  #
  # TTY streams which are not readable have blocking writes.
  #
  # @method tty_init(loop, tty, fd, readable)
  # @param [Loop] loop
  # @param [Tty] tty
  # @param [Integer] fd
  # @param [Integer] readable
  # @return [Integer]
  # @scope class
  #
  attach_function :tty_init, :uv_tty_init, [Loop, Tty, :int, :int], :int

  # To be called when the program exits. Resets TTY settings to default
  # values for the next process to take over.
  #
  # @method tty_reset_mode()
  # @return [nil]
  # @scope class
  #
  attach_function :tty_reset_mode, :uv_tty_reset_mode, [], :void

  # Used to detect what type of stream should be used with a given file
  # descriptor. Usually this will be used during initialization to guess the
  # type of the stdio streams.
  # For isatty() functionality use this function and test for UV_TTY.
  #
  # @method guess_handle(file)
  # @param [Integer] file
  # @return [Symbol from `enum_handle_type`]
  # @scope class
  #
  attach_function :guess_handle, :uv_guess_handle, [:int], :handle_type

  # Opens an existing file descriptor or HANDLE as a pipe.
  #
  # @method pipe_open(pipe, file)
  # @param [Pipe] pipe
  # @param [Integer] file
  # @return [Integer]
  # @scope class
  #
  attach_function :pipe_open, :uv_pipe_open, [Pipe, :int], :int

  # (Not documented)
  #
  # @method pipe_connect(req, handle, name, cb)
  # @param [Connect] req
  # @param [Pipe] handle
  # @param [String] name
  # @param [FFI::Pointer(ConnectCb)] cb
  # @return [nil]
  # @scope class
  #
  attach_function :pipe_connect, :uv_pipe_connect, [Connect, Pipe, :string, :pointer], :void

  # Initialize the poll watcher using a file descriptor.
  #
  # @method poll_init(loop, handle, fd)
  # @param [Loop] loop
  # @param [Poll] handle
  # @param [Integer] fd
  # @return [Integer]
  # @scope class
  #
  attach_function :poll_init, :uv_poll_init, [Loop, Poll, :int], :int

  # Starts polling the file descriptor. `events` is a bitmask consisting made up
  # of UV_READABLE and UV_WRITABLE. As soon as an event is detected the callback
  # will be called with `status` set to 0, and the detected events set en the
  # `events` field.
  #
  # If an error happens while polling status may be set to -1 and the error
  # code can be retrieved with uv_last_error. The user should not close the
  # socket while uv_poll is active. If the user does that anyway, the callback
  # *may* be called reporting an error status, but this is not guaranteed.
  #
  # Calling uv_poll_start on an uv_poll watcher that is already active is fine.
  # Doing so will update the events mask that is being watched for.
  #
  # @method poll_start(handle, events, cb)
  # @param [Poll] handle
  # @param [Integer] events
  # @param [FFI::Pointer(PollCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :poll_start, :uv_poll_start, [Poll, :int, :pointer], :int

  # uv_prepare_t is a subclass of uv_handle_t.
  #
  # Every active prepare handle gets its callback called exactly once per loop
  # iteration, just before the system blocks to wait for completed i/o.
  #
  # @method prepare_init(loop, prepare)
  # @param [Loop] loop
  # @param [Prepare] prepare
  # @return [Integer]
  # @scope class
  #
  attach_function :prepare_init, :uv_prepare_init, [Loop, Prepare], :int

  # (Not documented)
  #
  # @method prepare_stop(prepare)
  # @param [Prepare] prepare
  # @return [Integer]
  # @scope class
  #
  attach_function :prepare_stop, :uv_prepare_stop, [Prepare], :int

  # uv_check_t is a subclass of uv_handle_t.
  #
  # Every active check handle gets its callback called exactly once per loop
  # iteration, just after the system returns from blocking.
  #
  # @method check_start(check, cb)
  # @param [Check] check
  # @param [FFI::Pointer(CheckCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :check_start, :uv_check_start, [Check, :pointer], :int

  # uv_idle_t is a subclass of uv_handle_t.
  #
  # Every active idle handle gets its callback called repeatedly until it is
  # stopped. This happens after all other types of callbacks are processed.
  # When there are multiple "idle" handles active, their callbacks are called
  # in turn.
  #
  # @method idle_init(loop, idle)
  # @param [Loop] loop
  # @param [Idle] idle
  # @return [Integer]
  # @scope class
  #
  attach_function :idle_init, :uv_idle_init, [Loop, Idle], :int

  # (Not documented)
  #
  # @method idle_stop(idle)
  # @param [Idle] idle
  # @return [Integer]
  # @scope class
  #
  attach_function :idle_stop, :uv_idle_stop, [Idle], :int

  # This can be called from other threads to wake up a libuv thread.
  #
  # libuv is single threaded at the moment.
  #
  # @method async_send(async)
  # @param [Async] async
  # @return [Integer]
  # @scope class
  #
  attach_function :async_send, :uv_async_send, [Async], :int

  # Start the timer. `timeout` and `repeat` are in milliseconds.
  #
  # If timeout is zero, the callback fires on the next tick of the event loop.
  #
  # If repeat is non-zero, the callback fires first after timeout milliseconds
  # and then repeatedly after repeat milliseconds.
  #
  # @method timer_start(handle, cb, timeout, repeat)
  # @param [Timer] handle
  # @param [FFI::Pointer(TimerCb)] cb
  # @param [Integer] timeout
  # @param [Integer] repeat
  # @return [Integer]
  # @scope class
  #
  attach_function :timer_start, :uv_timer_start, [Timer, :pointer, :ulong_long, :ulong_long], :int

  # Stop the timer, and if it is repeating restart it using the repeat value
  # as the timeout. If the timer has never been started before it returns -1 and
  # sets the error to UV_EINVAL.
  #
  # @method timer_again(handle)
  # @param [Timer] handle
  # @return [Integer]
  # @scope class
  #
  attach_function :timer_again, :uv_timer_again, [Timer], :int

  # Set the repeat value in milliseconds. Note that if the repeat value is set
  # from a timer callback it does not immediately take effect. If the timer was
  # non-repeating before, it will have been stopped. If it was repeating, then
  # the old repeat value will have been used to schedule the next timeout.
  #
  # @method timer_get_repeat(handle)
  # @param [Timer] handle
  # @return [Integer]
  # @scope class
  #
  attach_function :timer_get_repeat, :uv_timer_get_repeat, [Timer], :ulong_long

  # Free the struct addrinfo. Passing NULL is allowed and is a no-op.
  #
  # @method freeaddrinfo(ai)
  # @param [FFI::Pointer(*Addrinfo)] ai
  # @return [nil]
  # @scope class
  #
  attach_function :freeaddrinfo, :uv_freeaddrinfo, [:pointer], :void

  # Initializes uv_process_t and starts the process.
  #
  # @method spawn(loop, process, options)
  # @param [Loop] loop
  # @param [Process] process
  # @param [ProcessOptions] options
  # @return [Integer]
  # @scope class
  #
  attach_function :spawn, :uv_spawn, [Loop, Process, ProcessOptions.by_value], :int

  # Kills the process with the specified signal.
  #
  # @method kill(pid, signum)
  # @param [Integer] pid
  # @param [Integer] signum
  # @return [Err]
  # @scope class
  #
  attach_function :kill, :uv_kill, [:int, :int], Err.by_value

  # Cancel a pending request. Fails if the request is executing or has finished
  # executing.
  #
  # Returns 0 on success, -1 on error. The loop error code is not touched.
  #
  # Only cancellation of uv_fs_t, uv_getaddrinfo_t and uv_work_t requests is
  # currently supported.
  #
  # Cancelled requests have their callbacks invoked some time in the future.
  # It's _not_ safe to free the memory associated with the request until your
  # callback is called.
  #
  # Here is how cancellation is reported to your callback:
  #
  # - A uv_fs_t request has its req->errorno field set to UV_ECANCELED.
  #
  # - A uv_work_t or uv_getaddrinfo_t request has its callback invoked with
  #   status == -1 and uv_last_error(loop).code == UV_ECANCELED.
  #
  # This function is currently only implemented on UNIX platforms. On Windows,
  # it always returns -1.
  #
  # @method cancel(req)
  # @param [Req] req
  # @return [Integer]
  # @scope class
  #
  attach_function :cancel, :uv_cancel, [Req], :int

  # (Not documented)
  #
  # @method get_process_title(buffer, size)
  # @param [String] buffer
  # @param [Integer] size
  # @return [Err]
  # @scope class
  #
  attach_function :get_process_title, :uv_get_process_title, [:string, :ulong], Err.by_value

  # (Not documented)
  #
  # @method resident_set_memory(rss)
  # @param [FFI::Pointer(*Size)] rss
  # @return [Err]
  # @scope class
  #
  attach_function :resident_set_memory, :uv_resident_set_memory, [:pointer], Err.by_value

  # This allocates cpu_infos array, and sets count.  The array
  # is freed using uv_free_cpu_info().
  #
  # @method cpu_info(cpu_infos, count)
  # @param [FFI::Pointer(**CpuInfo)] cpu_infos
  # @param [FFI::Pointer(*Int)] count
  # @return [Err]
  # @scope class
  #
  attach_function :cpu_info, :uv_cpu_info, [:pointer, :pointer], Err.by_value

  # This allocates addresses array, and sets count.  The array
  # is freed using uv_free_interface_addresses().
  #
  # @method interface_addresses(addresses, count)
  # @param [FFI::Pointer(**InterfaceAddress)] addresses
  # @param [FFI::Pointer(*Int)] count
  # @return [Err]
  # @scope class
  #
  attach_function :interface_addresses, :uv_interface_addresses, [:pointer, :pointer], Err.by_value

  # Stores the result of uv_fs_stat and uv_fs_fstat.
  #
  # @method fs_req_cleanup(req)
  # @param [Fs] req
  # @return [nil]
  # @scope class
  #
  attach_function :fs_req_cleanup, :uv_fs_req_cleanup, [Fs], :void

  # (Not documented)
  #
  # @method fs_open(loop, req, path, flags, mode, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [String] path
  # @param [Integer] flags
  # @param [Integer] mode
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_open, :uv_fs_open, [Loop, Fs, :string, :int, :int, :pointer], :int

  # (Not documented)
  #
  # @method fs_unlink(loop, req, path, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [String] path
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_unlink, :uv_fs_unlink, [Loop, Fs, :string, :pointer], :int

  # (Not documented)
  #
  # @method fs_mkdir(loop, req, path, mode, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [String] path
  # @param [Integer] mode
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_mkdir, :uv_fs_mkdir, [Loop, Fs, :string, :int, :pointer], :int

  # (Not documented)
  #
  # @method fs_readdir(loop, req, path, flags, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [String] path
  # @param [Integer] flags
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_readdir, :uv_fs_readdir, [Loop, Fs, :string, :int, :pointer], :int

  # (Not documented)
  #
  # @method fs_fstat(loop, req, file, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [Integer] file
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_fstat, :uv_fs_fstat, [Loop, Fs, :int, :pointer], :int

  # (Not documented)
  #
  # @method fs_fsync(loop, req, file, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [Integer] file
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_fsync, :uv_fs_fsync, [Loop, Fs, :int, :pointer], :int

  # (Not documented)
  #
  # @method fs_ftruncate(loop, req, file, offset, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [Integer] file
  # @param [Integer] offset
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_ftruncate, :uv_fs_ftruncate, [Loop, Fs, :int, :long_long, :pointer], :int

  # (Not documented)
  #
  # @method fs_chmod(loop, req, path, mode, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [String] path
  # @param [Integer] mode
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_chmod, :uv_fs_chmod, [Loop, Fs, :string, :int, :pointer], :int

  # (Not documented)
  #
  # @method fs_futime(loop, req, file, atime, mtime, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [Integer] file
  # @param [Float] atime
  # @param [Float] mtime
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_futime, :uv_fs_futime, [Loop, Fs, :int, :double, :double, :pointer], :int

  # (Not documented)
  #
  # @method fs_link(loop, req, path, new_path, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [String] path
  # @param [String] new_path
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_link, :uv_fs_link, [Loop, Fs, :string, :string, :pointer], :int

  # This flag can be used with uv_fs_symlink on Windows
  # to specify whether the symlink is to be created using junction points.
  #
  # @method fs_readlink(loop, req, path, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [String] path
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_readlink, :uv_fs_readlink, [Loop, Fs, :string, :pointer], :int

  # (Not documented)
  #
  # @method fs_chown(loop, req, path, uid, gid, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [String] path
  # @param [Integer] uid
  # @param [Integer] gid
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_chown, :uv_fs_chown, [Loop, Fs, :string, :int, :int, :pointer], :int

  # Private, don't touch.
  #
  # @method fs_poll_init(loop, handle)
  # @param [Loop] loop
  # @param [FsPoll] handle
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_poll_init, :uv_fs_poll_init, [Loop, FsPoll], :int

  # Check the file at `path` for changes every `interval` milliseconds.
  #
  # Your callback i invoked with `status == -1` if `path` does not exist
  # or is inaccessible. The watcher is *not* stopped but your callback is
  # not called again until something changes (e.g. when the file is created
  # or the error reason changes).
  #
  # When `status == 0`, your callback receives pointers to the old and new
  # `uv_stat_t` structs. They are valid for the duration of the callback
  # only!
  #
  # For maximum portability, use multi-second intervals. Sub-second intervals
  # will not detect all changes on many file systems.
  #
  # @method fs_poll_stop(handle)
  # @param [FsPoll] handle
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_poll_stop, :uv_fs_poll_stop, [FsPoll], :int

  # UNIX signal handling on a per-event loop basis. The implementation is not
  # ultra efficient so don't go creating a million event loops with a million
  # signal watchers.
  #
  # Note to Linux users: SIGRT0 and SIGRT1 (signals 32 and 33) are used by the
  # NPTL pthreads library to manage threads. Installing watchers for those
  # signals will lead to unpredictable behavior and is strongly discouraged.
  # Future versions of libuv may simply reject them.
  #
  # Some signal support is available on Windows:
  #
  #   SIGINT is normally delivered when the user presses CTRL+C. However, like
  #   on Unix, it is not generated when terminal raw mode is enabled.
  #
  #   SIGBREAK is delivered when the user pressed CTRL+BREAK.
  #
  #   SIGHUP is generated when the user closes the console window. On SIGHUP the
  #   program is given approximately 10 seconds to perform cleanup. After that
  #   Windows will unconditionally terminate it.
  #
  #   SIGWINCH is raised whenever libuv detects that the console has been
  #   resized. SIGWINCH is emulated by libuv when the program uses an uv_tty_t
  #   handle to write to the console. SIGWINCH may not always be delivered in a
  #   timely manner; libuv will only detect size changes when the cursor is
  #   being moved. When a readable uv_tty_handle is used in raw mode, resizing
  #   the console buffer will also trigger a SIGWINCH signal.
  #
  # Watchers for other signals can be successfully created, but these signals
  # are never generated. These signals are: SIGILL, SIGABRT, SIGFPE, SIGSEGV,
  # SIGTERM and SIGKILL.
  #
  # Note that calls to raise() or abort() to programmatically raise a signal are
  # not detected by libuv; these will not trigger a signal watcher.
  #
  # @method signal_start(handle, signal_cb, signum)
  # @param [Signal] handle
  # @param [FFI::Pointer(SignalCb)] signal_cb
  # @param [Integer] signum
  # @return [Integer]
  # @scope class
  #
  attach_function :signal_start, :uv_signal_start, [Signal, :pointer, :int], :int

  # Gets load average.
  # See: http://en.wikipedia.org/wiki/Load_(computing)
  # Returns (0,0,0) on Windows.
  #
  # @method loadavg(avg)
  # @param [Array<Float [:double, 3]>] avg
  # @return [nil]
  # @scope class
  #
  attach_function :loadavg, :uv_loadavg, [:pointer], :void

  # Convert string ip addresses to binary structures
  #
  # @method ip4_addr(ip, port)
  # @param [String] ip
  # @param [Integer] port
  # @return [unknown]
  # @scope class
  #
  attach_function :ip4_addr, :uv_ip4_addr, [:string, :int], :char

  # Convert binary addresses to strings
  #
  # @method ip4_name(src, dst, size)
  # @param [FFI::Pointer(*SockaddrIn)] src
  # @param [String] dst
  # @param [Integer] size
  # @return [Integer]
  # @scope class
  #
  attach_function :ip4_name, :uv_ip4_name, [:pointer, :string, :ulong], :int

  # the target of the `dst` pointer is unmodified.
  #
  # @method inet_ntop(af, src, dst, size)
  # @param [Integer] af
  # @param [FFI::Pointer(*Void)] src
  # @param [String] dst
  # @param [Integer] size
  # @return [Err]
  # @scope class
  #
  attach_function :inet_ntop, :uv_inet_ntop, [:int, :pointer, :string, :ulong], Err.by_value

  # Gets the executable path
  #
  # @method exepath(buffer, size)
  # @param [String] buffer
  # @param [FFI::Pointer(*Size)] size
  # @return [Integer]
  # @scope class
  #
  attach_function :exepath, :uv_exepath, [:string, :pointer], :int

  # Changes the current working directory
  #
  # @method chdir(dir)
  # @param [String] dir
  # @return [Err]
  # @scope class
  #
  attach_function :chdir, :uv_chdir, [:string], Err.by_value

  # Gets memory info in bytes
  #
  # @method get_total_memory()
  # @return [Integer]
  # @scope class
  #
  attach_function :get_total_memory, :uv_get_total_memory, [], :ulong_long

  # Disables inheritance for file descriptors / handles that this process
  # inherited from its parent. The effect is that child processes spawned by
  # this process don't accidentally inherit these handles.
  #
  # It is recommended to call this function as early in your program as possible,
  # before the inherited file descriptors can be closed or duplicated.
  #
  # Note that this function works on a best-effort basis: there is no guarantee
  # that libuv can discover all file descriptors that were inherited. In general
  # it does a better job on Windows than it does on unix.
  #
  # @method disable_stdio_inheritance()
  # @return [nil]
  # @scope class
  #
  attach_function :disable_stdio_inheritance, :uv_disable_stdio_inheritance, [], :void

  # Close the shared library.
  #
  # @method dlclose(lib)
  # @param [FFI::Pointer(*Lib)] lib
  # @return [nil]
  # @scope class
  #
  attach_function :dlclose, :uv_dlclose, [:pointer], :void

  # Returns the last uv_dlopen() or uv_dlsym() error message.
  #
  # @method dlerror(lib)
  # @param [FFI::Pointer(*Lib)] lib
  # @return [String]
  # @scope class
  #
  attach_function :dlerror, :uv_dlerror, [:pointer], :string

  # The mutex functions return 0 on success, -1 on error
  # (unless the return type is void, of course).
  #
  # @method mutex_destroy(handle)
  # @param [FFI::Pointer(*Mutex)] handle
  # @return [nil]
  # @scope class
  #
  attach_function :mutex_destroy, :uv_mutex_destroy, [:pointer], :void

  # (Not documented)
  #
  # @method mutex_trylock(handle)
  # @param [FFI::Pointer(*Mutex)] handle
  # @return [Integer]
  # @scope class
  #
  attach_function :mutex_trylock, :uv_mutex_trylock, [:pointer], :int

  # Same goes for the read/write lock functions.
  #
  # @method rwlock_init(rwlock)
  # @param [FFI::Pointer(*Rwlock)] rwlock
  # @return [Integer]
  # @scope class
  #
  attach_function :rwlock_init, :uv_rwlock_init, [:pointer], :int

  # (Not documented)
  #
  # @method rwlock_rdlock(rwlock)
  # @param [FFI::Pointer(*Rwlock)] rwlock
  # @return [nil]
  # @scope class
  #
  attach_function :rwlock_rdlock, :uv_rwlock_rdlock, [:pointer], :void

  # (Not documented)
  #
  # @method rwlock_rdunlock(rwlock)
  # @param [FFI::Pointer(*Rwlock)] rwlock
  # @return [nil]
  # @scope class
  #
  attach_function :rwlock_rdunlock, :uv_rwlock_rdunlock, [:pointer], :void

  # (Not documented)
  #
  # @method rwlock_trywrlock(rwlock)
  # @param [FFI::Pointer(*Rwlock)] rwlock
  # @return [Integer]
  # @scope class
  #
  attach_function :rwlock_trywrlock, :uv_rwlock_trywrlock, [:pointer], :int

  # Same goes for the semaphore functions.
  #
  # @method sem_init(sem, value)
  # @param [FFI::Pointer(*Sem)] sem
  # @param [Integer] value
  # @return [Integer]
  # @scope class
  #
  attach_function :sem_init, :uv_sem_init, [:pointer, :uint], :int

  # (Not documented)
  #
  # @method sem_post(sem)
  # @param [FFI::Pointer(*Sem)] sem
  # @return [nil]
  # @scope class
  #
  attach_function :sem_post, :uv_sem_post, [:pointer], :void

  # (Not documented)
  #
  # @method sem_trywait(sem)
  # @param [FFI::Pointer(*Sem)] sem
  # @return [Integer]
  # @scope class
  #
  attach_function :sem_trywait, :uv_sem_trywait, [:pointer], :int

  # Same goes for the condition variable functions.
  #
  # @method cond_destroy(cond)
  # @param [FFI::Pointer(*Cond)] cond
  # @return [nil]
  # @scope class
  #
  attach_function :cond_destroy, :uv_cond_destroy, [:pointer], :void

  # (Not documented)
  #
  # @method cond_broadcast(cond)
  # @param [FFI::Pointer(*Cond)] cond
  # @return [nil]
  # @scope class
  #
  attach_function :cond_broadcast, :uv_cond_broadcast, [:pointer], :void

  # Waits on a condition variable with a timeout in nano seconds.
  # Returns 0 for success or -1 on timeout, * aborts when other errors happen.
  #
  # Note:
  # 1. callers should be prepared to deal with spurious wakeups.
  # 2. the granularity of timeout on Windows is never less than one millisecond.
  # 3. uv_cond_timedwait takes a relative timeout, not an absolute time.
  #
  # @method cond_timedwait(cond, mutex, timeout)
  # @param [FFI::Pointer(*Cond)] cond
  # @param [FFI::Pointer(*Mutex)] mutex
  # @param [Integer] timeout
  # @return [Integer]
  # @scope class
  #
  attach_function :cond_timedwait, :uv_cond_timedwait, [:pointer, :pointer, :ulong_long], :int

  # (Not documented)
  #
  # @method barrier_destroy(barrier)
  # @param [FFI::Pointer(*Barrier)] barrier
  # @return [nil]
  # @scope class
  #
  attach_function :barrier_destroy, :uv_barrier_destroy, [:pointer], :void

  # Runs a function once and only once. Concurrent calls to uv_once() with the
  # same guard will block all callers except one (it's unspecified which one).
  # The guard should be initialized statically with the UV_ONCE_INIT macro.
  #
  # @method once(guard, callback)
  # @param [FFI::Pointer(*Once)] guard
  # @param [FFI::Pointer(*)] callback
  # @return [nil]
  # @scope class
  #
  attach_function :once, :uv_once, [:pointer, :pointer], :void

  # (Not documented)
  #
  # @method thread_self()
  # @return [Integer]
  # @scope class
  #
  attach_function :thread_self, :uv_thread_self, [], :ulong

  # (Not documented)
  #
  # @method version_string()
  # @return [String]
  # @scope class
  #
  attach_function :version_string, :uv_version_string, [], :string

  # This function runs the event loop. It will act differently depending on the
  # specified mode:
  #  - UV_RUN_DEFAULT: Runs the event loop until the reference count drops to
  #    zero. Always returns zero.
  #  - UV_RUN_ONCE: Poll for new events once. Note that this function blocks if
  #    there are no pending events. Returns zero when done (no active handles
  #    or requests left), or non-zero if more events are expected (meaning you
  #    should run the event loop again sometime in the future).
  #  - UV_RUN_NOWAIT: Poll for new events once but don't block if there are no
  #    pending events.
  #
  # @method run(loop, mode)
  # @param [Loop] loop
  # @param [Symbol from `enum_run_mode`] mode
  # @return [Integer]
  # @scope class
  #
  attach_function :run, :uv_run, [Loop, :run_mode], :int

  # Manually modify the event loop's reference count. Useful if the user wants
  # to have a handle or timeout that doesn't keep the loop alive.
  #
  # @method has_ref(handle)
  # @param [Handle] handle
  # @return [Integer]
  # @scope class
  #
  attach_function :has_ref, :uv_has_ref, [Handle], :int

  # Get the poll timeout. The return value is in milliseconds, or -1 for no
  # timeout.
  #
  # @method backend_timeout(loop)
  # @param [Loop] loop
  # @return [Integer]
  # @scope class
  #
  attach_function :backend_timeout, :uv_backend_timeout, [Loop], :int

  # Most functions return boolean: 0 for success and -1 for failure.
  # On error the user should then call uv_last_error() to determine
  # the error code.
  #
  # @method strerror(err)
  # @param [Err] err
  # @return [String]
  # @scope class
  #
  attach_function :strerror, :uv_strerror, [Err.by_value], :string

  # Returns size of request types, useful for dynamic lookup with FFI
  #
  # @method req_size(type)
  # @param [Symbol from `enum_req_type`] type
  # @return [Integer]
  # @scope class
  #
  attach_function :req_size, :uv_req_size, [:req_type], :ulong

  # Constructor for uv_buf_t.
  # Due to platform differences the user cannot rely on the ordering of the
  # base and len members of the uv_buf_t struct. The user is responsible for
  # freeing base after the uv_buf_t is done. Return struct passed by value.
  #
  # @method buf_init(base, len)
  # @param [String] base
  # @param [Integer] len
  # @return [unknown]
  # @scope class
  #
  attach_function :buf_init, :uv_buf_init, [:string, :uint], :char

  # This call is used in conjunction with uv_listen() to accept incoming
  # connections. Call uv_accept after receiving a uv_connection_cb to accept
  # the connection. Before calling uv_accept use uv_*_init() must be
  # called on the client. Non-zero return value indicates an error.
  #
  # When the uv_connection_cb is called it is guaranteed that uv_accept will
  # complete successfully the first time. If you attempt to use it more than
  # once, it may fail. It is suggested to only call uv_accept once per
  # uv_connection_cb call.
  #
  # @method accept(server, client)
  # @param [Stream] server
  # @param [Stream] client
  # @return [Integer]
  # @scope class
  #
  attach_function :accept, :uv_accept, [Stream, Stream], :int

  # Write data to stream. Buffers are written in order. Example:
  #
  #   uv_buf_t a() = {
  #     { .base = "1", .len = 1 },
  #     { .base = "2", .len = 1 }
  #   };
  #
  #   uv_buf_t b() = {
  #     { .base = "3", .len = 1 },
  #     { .base = "4", .len = 1 }
  #   };
  #
  #   uv_write_t req1;
  #   uv_write_t req2;
  #
  #   // writes "1234"
  #   uv_write(&req1, stream, a, 2);
  #   uv_write(&req2, stream, b, 2);
  #
  # @method write(req, handle, bufs, bufcnt, cb)
  # @param [Write] req
  # @param [Stream] handle
  # @param [unknown] bufs
  # @param [Integer] bufcnt
  # @param [FFI::Pointer(WriteCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :write, :uv_write, [Write, Stream, :char, :int, :pointer], :int

  # Used to determine whether a stream is closing or closed.
  #
  # N.B. is only valid between the initialization of the handle
  #      and the arrival of the close callback, and cannot be used
  #      to validate the handle.
  #
  # @method is_closing(handle)
  # @param [Handle] handle
  # @return [Integer]
  # @scope class
  #
  attach_function :is_closing, :uv_is_closing, [Handle], :int

  # Enable/disable TCP keep-alive.
  #
  # `delay` is the initial delay in seconds, ignored when `enable` is zero.
  #
  # @method tcp_keepalive(handle, enable, delay)
  # @param [Tcp] handle
  # @param [Integer] enable
  # @param [Integer] delay
  # @return [Integer]
  # @scope class
  #
  attach_function :tcp_keepalive, :uv_tcp_keepalive, [Tcp, :int, :uint], :int

  # Enable/disable simultaneous asynchronous accept requests that are
  # queued by the operating system when listening for new tcp connections.
  # This setting is used to tune a tcp server for the desired performance.
  # Having simultaneous accepts can significantly improve the rate of
  # accepting connections (which is why it is enabled by default) but
  # may lead to uneven load distribution in multi-process setups.
  #
  # @method tcp_getsockname(handle, name, namelen)
  # @param [Tcp] handle
  # @param [FFI::Pointer(*Sockaddr)] name
  # @param [FFI::Pointer(*Int)] namelen
  # @return [Integer]
  # @scope class
  #
  attach_function :tcp_getsockname, :uv_tcp_getsockname, [Tcp, :pointer, :pointer], :int

  # Opens an existing file descriptor or SOCKET as a udp handle.
  #
  # Unix only:
  #  The only requirement of the sock argument is that it follows the
  #  datagram contract (works in unconnected mode, supports sendmsg()/recvmsg(),
  #  etc.). In other words, other datagram-type sockets like raw sockets or
  #  netlink sockets can also be passed to this function.
  #
  # @method udp_open(handle, sock)
  # @param [Udp] handle
  # @param [Integer] sock
  # @return [Integer]
  # @scope class
  #
  attach_function :udp_open, :uv_udp_open, [Udp, :int], :int

  # Set membership for a multicast address
  #
  # Arguments:
  #  handle              UDP handle. Should have been initialized with
  #                      `uv_udp_init`.
  #  multicast_addr      multicast address to set membership for
  #  interface_addr      interface address
  #  membership          Should be UV_JOIN_GROUP or UV_LEAVE_GROUP
  #
  # Returns:
  #  0 on success, -1 on error.
  #
  # @method udp_set_membership(handle, multicast_addr, interface_addr, membership)
  # @param [Udp] handle
  # @param [String] multicast_addr
  # @param [String] interface_addr
  # @param [Symbol from `enum_membership`] membership
  # @return [Integer]
  # @scope class
  #
  attach_function :udp_set_membership, :uv_udp_set_membership, [Udp, :string, :string, :membership], :int

  # Set the time to live
  #
  # Arguments:
  #  handle              UDP handle. Should have been initialized with
  #                      `uv_udp_init`.
  #  ttl                 1 through 255
  #
  # Returns:
  #  0 on success, -1 on error.
  #
  # @method udp_set_ttl(handle, ttl)
  # @param [Udp] handle
  # @param [Integer] ttl
  # @return [Integer]
  # @scope class
  #
  attach_function :udp_set_ttl, :uv_udp_set_ttl, [Udp, :int], :int

  # Stop listening for incoming datagrams.
  #
  # Arguments:
  #  handle    UDP handle. Should have been initialized with `uv_udp_init`.
  #
  # Returns:
  #  0 on success, -1 on error.
  #
  # @method udp_recv_stop(handle)
  # @param [Udp] handle
  # @return [Integer]
  # @scope class
  #
  attach_function :udp_recv_stop, :uv_udp_recv_stop, [Udp], :int

  # Gets the current Window size. On success zero is returned.
  #
  # @method tty_get_winsize(tty, width, height)
  # @param [Tty] tty
  # @param [FFI::Pointer(*Int)] width
  # @param [FFI::Pointer(*Int)] height
  # @return [Integer]
  # @scope class
  #
  attach_function :tty_get_winsize, :uv_tty_get_winsize, [Tty, :pointer, :pointer], :int

  # Opens an existing file descriptor or HANDLE as a pipe.
  #
  # @method pipe_bind(handle, name)
  # @param [Pipe] handle
  # @param [String] name
  # @return [Integer]
  # @scope class
  #
  attach_function :pipe_bind, :uv_pipe_bind, [Pipe, :string], :int

  # identical to uv_poll_init. On windows it takes a SOCKET handle.
  #
  # @method poll_init_socket(loop, handle, socket)
  # @param [Loop] loop
  # @param [Poll] handle
  # @param [Integer] socket
  # @return [Integer]
  # @scope class
  #
  attach_function :poll_init_socket, :uv_poll_init_socket, [Loop, Poll, :int], :int

  # uv_prepare_t is a subclass of uv_handle_t.
  #
  # Every active prepare handle gets its callback called exactly once per loop
  # iteration, just before the system blocks to wait for completed i/o.
  #
  # @method prepare_start(prepare, cb)
  # @param [Prepare] prepare
  # @param [FFI::Pointer(PrepareCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :prepare_start, :uv_prepare_start, [Prepare, :pointer], :int

  # uv_check_t is a subclass of uv_handle_t.
  #
  # Every active check handle gets its callback called exactly once per loop
  # iteration, just after the system returns from blocking.
  #
  # @method check_stop(check)
  # @param [Check] check
  # @return [Integer]
  # @scope class
  #
  attach_function :check_stop, :uv_check_stop, [Check], :int

  # uv_async_t is a subclass of uv_handle_t.
  #
  # uv_async_send wakes up the event loop and calls the async handle's callback.
  # There is no guarantee that every uv_async_send call leads to exactly one
  # invocation of the callback; the only guarantee is that the callback function
  # is called at least once after the call to async_send. Unlike all other
  # libuv functions, uv_async_send can be called from another thread.
  #
  # @method async_init(loop, async, async_cb)
  # @param [Loop] loop
  # @param [Async] async
  # @param [FFI::Pointer(AsyncCb)] async_cb
  # @return [Integer]
  # @scope class
  #
  attach_function :async_init, :uv_async_init, [Loop, Async, :pointer], :int

  # Start the timer. `timeout` and `repeat` are in milliseconds.
  #
  # If timeout is zero, the callback fires on the next tick of the event loop.
  #
  # If repeat is non-zero, the callback fires first after timeout milliseconds
  # and then repeatedly after repeat milliseconds.
  #
  # @method timer_stop(handle)
  # @param [Timer] handle
  # @return [Integer]
  # @scope class
  #
  attach_function :timer_stop, :uv_timer_stop, [Timer], :int

  # Asynchronous getaddrinfo(3).
  #
  # Either node or service may be NULL but not both.
  #
  # hints is a pointer to a struct addrinfo with additional address type
  # constraints, or NULL. Consult `man -s 3 getaddrinfo` for details.
  #
  # Returns 0 on success, -1 on error. Call uv_last_error() to get the error.
  #
  # If successful, your callback gets called sometime in the future with the
  # lookup result, which is either:
  #
  #  a) status == 0, the res argument points to a valid struct addrinfo, or
  #  b) status == -1, the res argument is NULL.
  #
  # On NXDOMAIN, the status code is -1 and uv_last_error() returns UV_ENOENT.
  #
  # Call uv_freeaddrinfo() to free the addrinfo structure.
  #
  # @method getaddrinfo(loop, req, getaddrinfo_cb, node, service, hints)
  # @param [Loop] loop
  # @param [Getaddrinfo] req
  # @param [FFI::Pointer(GetaddrinfoCb)] getaddrinfo_cb
  # @param [String] node
  # @param [String] service
  # @param [FFI::Pointer(*Addrinfo)] hints
  # @return [Integer]
  # @scope class
  #
  attach_function :getaddrinfo, :uv_getaddrinfo, [Loop, Getaddrinfo, :pointer, :string, :string, :pointer], :int

  # Kills the process with the specified signal. The user must still
  # call uv_close on the process.
  #
  # @method process_kill(process, signum)
  # @param [Process] process
  # @param [Integer] signum
  # @return [Integer]
  # @scope class
  #
  attach_function :process_kill, :uv_process_kill, [Process, :int], :int

  # Cancel a pending request. Fails if the request is executing or has finished
  # executing.
  #
  # Returns 0 on success, -1 on error. The loop error code is not touched.
  #
  # Only cancellation of uv_fs_t, uv_getaddrinfo_t and uv_work_t requests is
  # currently supported.
  #
  # Cancelled requests have their callbacks invoked some time in the future.
  # It's _not_ safe to free the memory associated with the request until your
  # callback is called.
  #
  # Here is how cancellation is reported to your callback:
  #
  # - A uv_fs_t request has its req->errorno field set to UV_ECANCELED.
  #
  # - A uv_work_t or uv_getaddrinfo_t request has its callback invoked with
  #   status == -1 and uv_last_error(loop).code == UV_ECANCELED.
  #
  # This function is currently only implemented on UNIX platforms. On Windows,
  # it always returns -1.
  #
  # @method setup_args(argc, argv)
  # @param [Integer] argc
  # @param [FFI::Pointer(**CharS)] argv
  # @return [FFI::Pointer(**CharS)]
  # @scope class
  #
  attach_function :setup_args, :uv_setup_args, [:int, :pointer], :pointer

  # (Not documented)
  #
  # @method uptime(uptime)
  # @param [FFI::Pointer(*Double)] uptime
  # @return [Err]
  # @scope class
  #
  attach_function :uptime, :uv_uptime, [:pointer], Err.by_value

  # This allocates addresses array, and sets count.  The array
  # is freed using uv_free_interface_addresses().
  #
  # @method free_interface_addresses(addresses, count)
  # @param [InterfaceAddress] addresses
  # @param [Integer] count
  # @return [nil]
  # @scope class
  #
  attach_function :free_interface_addresses, :uv_free_interface_addresses, [InterfaceAddress, :int], :void

  # Stores the result of uv_fs_stat and uv_fs_fstat.
  #
  # @method fs_close(loop, req, file, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [Integer] file
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_close, :uv_fs_close, [Loop, Fs, :int, :pointer], :int

  # (Not documented)
  #
  # @method fs_write(loop, req, file, buf, length, offset, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [Integer] file
  # @param [FFI::Pointer(*Void)] buf
  # @param [Integer] length
  # @param [Integer] offset
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_write, :uv_fs_write, [Loop, Fs, :int, :pointer, :ulong, :long_long, :pointer], :int

  # (Not documented)
  #
  # @method fs_stat(loop, req, path, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [String] path
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_stat, :uv_fs_stat, [Loop, Fs, :string, :pointer], :int

  # (Not documented)
  #
  # @method fs_fdatasync(loop, req, file, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [Integer] file
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_fdatasync, :uv_fs_fdatasync, [Loop, Fs, :int, :pointer], :int

  # (Not documented)
  #
  # @method fs_utime(loop, req, path, atime, mtime, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [String] path
  # @param [Float] atime
  # @param [Float] mtime
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_utime, :uv_fs_utime, [Loop, Fs, :string, :double, :double, :pointer], :int

  # This flag can be used with uv_fs_symlink on Windows
  # to specify whether the symlink is to be created using junction points.
  #
  # @method fs_symlink(loop, req, path, new_path, flags, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [String] path
  # @param [String] new_path
  # @param [Integer] flags
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_symlink, :uv_fs_symlink, [Loop, Fs, :string, :string, :int, :pointer], :int

  # (Not documented)
  #
  # @method fs_fchown(loop, req, file, uid, gid, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [Integer] file
  # @param [Integer] uid
  # @param [Integer] gid
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_fchown, :uv_fs_fchown, [Loop, Fs, :int, :int, :int, :pointer], :int

  # UNIX signal handling on a per-event loop basis. The implementation is not
  # ultra efficient so don't go creating a million event loops with a million
  # signal watchers.
  #
  # Note to Linux users: SIGRT0 and SIGRT1 (signals 32 and 33) are used by the
  # NPTL pthreads library to manage threads. Installing watchers for those
  # signals will lead to unpredictable behavior and is strongly discouraged.
  # Future versions of libuv may simply reject them.
  #
  # Some signal support is available on Windows:
  #
  #   SIGINT is normally delivered when the user presses CTRL+C. However, like
  #   on Unix, it is not generated when terminal raw mode is enabled.
  #
  #   SIGBREAK is delivered when the user pressed CTRL+BREAK.
  #
  #   SIGHUP is generated when the user closes the console window. On SIGHUP the
  #   program is given approximately 10 seconds to perform cleanup. After that
  #   Windows will unconditionally terminate it.
  #
  #   SIGWINCH is raised whenever libuv detects that the console has been
  #   resized. SIGWINCH is emulated by libuv when the program uses an uv_tty_t
  #   handle to write to the console. SIGWINCH may not always be delivered in a
  #   timely manner; libuv will only detect size changes when the cursor is
  #   being moved. When a readable uv_tty_handle is used in raw mode, resizing
  #   the console buffer will also trigger a SIGWINCH signal.
  #
  # Watchers for other signals can be successfully created, but these signals
  # are never generated. These signals are: SIGILL, SIGABRT, SIGFPE, SIGSEGV,
  # SIGTERM and SIGKILL.
  #
  # Note that calls to raise() or abort() to programmatically raise a signal are
  # not detected by libuv; these will not trigger a signal watcher.
  #
  # @method signal_init(loop, handle)
  # @param [Loop] loop
  # @param [Signal] handle
  # @return [Integer]
  # @scope class
  #
  attach_function :signal_init, :uv_signal_init, [Loop, Signal], :int

  # By default, event watcher, when watching directory, is not registering
  # (is ignoring) changes in it's subdirectories.
  # This flag will override this behaviour on platforms that support it.
  #
  # @method fs_event_init(loop, handle, filename, cb, flags)
  # @param [Loop] loop
  # @param [FsEvent] handle
  # @param [String] filename
  # @param [FFI::Pointer(FsEventCb)] cb
  # @param [Integer] flags
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_event_init, :uv_fs_event_init, [Loop, FsEvent, :string, :pointer, :int], :int

  # Convert binary addresses to strings
  #
  # @method ip6_name(src, dst, size)
  # @param [FFI::Pointer(*SockaddrIn6)] src
  # @param [String] dst
  # @param [Integer] size
  # @return [Integer]
  # @scope class
  #
  attach_function :ip6_name, :uv_ip6_name, [:pointer, :string, :ulong], :int

  # Gets the current working directory
  #
  # @method cwd(buffer, size)
  # @param [String] buffer
  # @param [Integer] size
  # @return [Err]
  # @scope class
  #
  attach_function :cwd, :uv_cwd, [:string, :ulong], Err.by_value

  # Returns the current high-resolution real time. This is expressed in
  # nanoseconds. It is relative to an arbitrary time in the past. It is not
  # related to the time of day and therefore not subject to clock drift. The
  # primary use is for measuring performance between intervals.
  #
  # Note not every platform can support nanosecond resolution; however, this
  # value will always be in nanoseconds.
  #
  # @method hrtime()
  # @return [Integer]
  # @scope class
  #
  attach_function :hrtime, :uv_hrtime, [], :ulong_long

  # Retrieves a data pointer from a dynamic library. It is legal for a symbol to
  # map to NULL. Returns 0 on success and -1 if the symbol was not found.
  #
  # @method dlsym(lib, name, ptr)
  # @param [FFI::Pointer(*Lib)] lib
  # @param [String] name
  # @param [FFI::Pointer(**Void)] ptr
  # @return [Integer]
  # @scope class
  #
  attach_function :dlsym, :uv_dlsym, [:pointer, :string, :pointer], :int

  # The mutex functions return 0 on success, -1 on error
  # (unless the return type is void, of course).
  #
  # @method mutex_lock(handle)
  # @param [FFI::Pointer(*Mutex)] handle
  # @return [nil]
  # @scope class
  #
  attach_function :mutex_lock, :uv_mutex_lock, [:pointer], :void

  # Same goes for the read/write lock functions.
  #
  # @method rwlock_destroy(rwlock)
  # @param [FFI::Pointer(*Rwlock)] rwlock
  # @return [nil]
  # @scope class
  #
  attach_function :rwlock_destroy, :uv_rwlock_destroy, [:pointer], :void

  # (Not documented)
  #
  # @method rwlock_wrlock(rwlock)
  # @param [FFI::Pointer(*Rwlock)] rwlock
  # @return [nil]
  # @scope class
  #
  attach_function :rwlock_wrlock, :uv_rwlock_wrlock, [:pointer], :void

  # Same goes for the semaphore functions.
  #
  # @method sem_destroy(sem)
  # @param [FFI::Pointer(*Sem)] sem
  # @return [nil]
  # @scope class
  #
  attach_function :sem_destroy, :uv_sem_destroy, [:pointer], :void

  # Same goes for the condition variable functions.
  #
  # @method cond_init(cond)
  # @param [FFI::Pointer(*Cond)] cond
  # @return [Integer]
  # @scope class
  #
  attach_function :cond_init, :uv_cond_init, [:pointer], :int

  # Waits on a condition variable without a timeout.
  #
  # Note:
  # 1. callers should be prepared to deal with spurious wakeups.
  #
  # @method cond_wait(cond, mutex)
  # @param [FFI::Pointer(*Cond)] cond
  # @param [FFI::Pointer(*Mutex)] mutex
  # @return [nil]
  # @scope class
  #
  attach_function :cond_wait, :uv_cond_wait, [:pointer, :pointer], :void

  # Waits on a condition variable with a timeout in nano seconds.
  # Returns 0 for success or -1 on timeout, * aborts when other errors happen.
  #
  # Note:
  # 1. callers should be prepared to deal with spurious wakeups.
  # 2. the granularity of timeout on Windows is never less than one millisecond.
  # 3. uv_cond_timedwait takes a relative timeout, not an absolute time.
  #
  # @method barrier_wait(barrier)
  # @param [FFI::Pointer(*Barrier)] barrier
  # @return [nil]
  # @scope class
  #
  attach_function :barrier_wait, :uv_barrier_wait, [:pointer], :void

  # Runs a function once and only once. Concurrent calls to uv_once() with the
  # same guard will block all callers except one (it's unspecified which one).
  # The guard should be initialized statically with the UV_ONCE_INIT macro.
  #
  # @method thread_join(tid)
  # @param [FFI::Pointer(*Thread)] tid
  # @return [Integer]
  # @scope class
  #
  attach_function :thread_join, :uv_thread_join, [:pointer], :int

  # (Not documented)
  #
  # @method loop_delete(loop)
  # @param [Loop] loop
  # @return [nil]
  # @scope class
  #
  attach_function :loop_delete, :uv_loop_delete, [Loop], :void

  # Return the current timestamp in milliseconds. The timestamp is cached at
  # the start of the event loop tick, see |uv_update_time()| for details and
  # rationale.
  #
  # The timestamp increases monotonically from some arbitrary point in time.
  # Don't make assumptions about the starting point, you will only get
  # disappointed.
  #
  # Use uv_hrtime() if you need sub-milliseond granularity.
  #
  # @method now(loop)
  # @param [Loop] loop
  # @return [Integer]
  # @scope class
  #
  attach_function :now, :uv_now, [Loop], :ulong_long

  # uv_shutdown_t is a subclass of uv_req_t
  #
  # Shutdown the outgoing (write) side of a duplex stream. It waits for
  # pending write requests to complete. The handle should refer to a
  # initialized stream. req should be an uninitialized shutdown request
  # struct. The cb is called after shutdown is complete.
  #
  # @method shutdown(req, handle, cb)
  # @param [Shutdown] req
  # @param [Stream] handle
  # @param [FFI::Pointer(ShutdownCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :shutdown, :uv_shutdown, [Shutdown, Stream, :pointer], :int

  # Utility function. Appends `src` to `dst` and ensures that `dst` is
  # properly NUL terminated unless `size` is zero or `dst` does not
  # contain a NUL byte. `size` is the total length of `dst` so at most
  # `size - strlen(dst) - 1` characters will be copied from `src`.
  #
  # @method strlcat(dst, src, size)
  # @param [String] dst
  # @param [String] src
  # @param [Integer] size
  # @return [Integer]
  # @scope class
  #
  attach_function :strlcat, :uv_strlcat, [:string, :string, :ulong], :ulong

  # Used to determine whether a stream is readable or writable.
  #
  # @method is_readable(handle)
  # @param [Stream] handle
  # @return [Integer]
  # @scope class
  #
  attach_function :is_readable, :uv_is_readable, [Stream], :int

  # Enable/disable simultaneous asynchronous accept requests that are
  # queued by the operating system when listening for new tcp connections.
  # This setting is used to tune a tcp server for the desired performance.
  # Having simultaneous accepts can significantly improve the rate of
  # accepting connections (which is why it is enabled by default) but
  # may lead to uneven load distribution in multi-process setups.
  #
  # @method tcp_bind(handle, unknown)
  # @param [Tcp] handle
  # @param [unknown] unknown
  # @return [Integer]
  # @scope class
  #
  attach_function :tcp_bind, :uv_tcp_bind, [Tcp, :char], :int

  # Bind to a IPv6 address and port.
  #
  # Arguments:
  #  handle    UDP handle. Should have been initialized with `uv_udp_init`.
  #  addr      struct sockaddr_in with the address and port to bind to.
  #  flags     Should be 0 or UV_UDP_IPV6ONLY.
  #
  # Returns:
  #  0 on success, -1 on error.
  #
  # @method udp_bind6(handle, addr, flags)
  # @param [Udp] handle
  # @param [unknown] addr
  # @param [Integer] flags
  # @return [Integer]
  # @scope class
  #
  attach_function :udp_bind6, :uv_udp_bind6, [Udp, :char, :uint], :int

  # Send data. If the socket has not previously been bound with `uv_udp_bind6`,
  # it is bound to ::0 (the "all interfaces" address) and a random port number.
  #
  # Arguments:
  #  req       UDP request handle. Need not be initialized.
  #  handle    UDP handle. Should have been initialized with `uv_udp_init`.
  #  bufs      List of buffers to send.
  #  bufcnt    Number of buffers in `bufs`.
  #  addr      Address of the remote peer. See `uv_ip6_addr`.
  #  send_cb   Callback to invoke when the data has been sent out.
  #
  # Returns:
  #  0 on success, -1 on error.
  #
  # @method udp_send6(req, handle, bufs, bufcnt, addr, send_cb)
  # @param [UdpSend] req
  # @param [Udp] handle
  # @param [unknown] bufs
  # @param [Integer] bufcnt
  # @param [unknown] addr
  # @param [FFI::Pointer(UdpSendCb)] send_cb
  # @return [Integer]
  # @scope class
  #
  attach_function :udp_send6, :uv_udp_send6, [UdpSend, Udp, :char, :int, :char, :pointer], :int

  # Initialize a pipe. The last argument is a boolean to indicate if
  # this pipe will be used for handle passing between processes.
  #
  # @method pipe_init(loop, handle, ipc)
  # @param [Loop] loop
  # @param [Pipe] handle
  # @param [Integer] ipc
  # @return [Integer]
  # @scope class
  #
  attach_function :pipe_init, :uv_pipe_init, [Loop, Pipe, :int], :int

  # Stops polling the file descriptor.
  #
  # @method poll_stop(handle)
  # @param [Poll] handle
  # @return [Integer]
  # @scope class
  #
  attach_function :poll_stop, :uv_poll_stop, [Poll], :int

  # uv_idle_t is a subclass of uv_handle_t.
  #
  # Every active idle handle gets its callback called repeatedly until it is
  # stopped. This happens after all other types of callbacks are processed.
  # When there are multiple "idle" handles active, their callbacks are called
  # in turn.
  #
  # @method idle_start(idle, cb)
  # @param [Idle] idle
  # @param [FFI::Pointer(IdleCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :idle_start, :uv_idle_start, [Idle, :pointer], :int

  # Set the repeat value in milliseconds. Note that if the repeat value is set
  # from a timer callback it does not immediately take effect. If the timer was
  # non-repeating before, it will have been stopped. If it was repeating, then
  # the old repeat value will have been used to schedule the next timeout.
  #
  # @method timer_set_repeat(handle, repeat)
  # @param [Timer] handle
  # @param [Integer] repeat
  # @return [nil]
  # @scope class
  #
  attach_function :timer_set_repeat, :uv_timer_set_repeat, [Timer, :ulong_long], :void

  # Queues a work request to execute asynchronously on the thread pool.
  #
  # @method queue_work(loop, req, work_cb, after_work_cb)
  # @param [Loop] loop
  # @param [Work] req
  # @param [FFI::Pointer(WorkCb)] work_cb
  # @param [FFI::Pointer(AfterWorkCb)] after_work_cb
  # @return [Integer]
  # @scope class
  #
  attach_function :queue_work, :uv_queue_work, [Loop, Work, :pointer, :pointer], :int

  # This allocates cpu_infos array, and sets count.  The array
  # is freed using uv_free_cpu_info().
  #
  # @method free_cpu_info(cpu_infos, count)
  # @param [CpuInfo] cpu_infos
  # @param [Integer] count
  # @return [nil]
  # @scope class
  #
  attach_function :free_cpu_info, :uv_free_cpu_info, [CpuInfo, :int], :void

  # Stores the result of uv_fs_stat and uv_fs_fstat.
  #
  # @method fs_read(loop, req, file, buf, length, offset, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [Integer] file
  # @param [FFI::Pointer(*Void)] buf
  # @param [Integer] length
  # @param [Integer] offset
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_read, :uv_fs_read, [Loop, Fs, :int, :pointer, :ulong, :long_long, :pointer], :int

  # (Not documented)
  #
  # @method fs_rename(loop, req, path, new_path, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [String] path
  # @param [String] new_path
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_rename, :uv_fs_rename, [Loop, Fs, :string, :string, :pointer], :int

  # (Not documented)
  #
  # @method fs_lstat(loop, req, path, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [String] path
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_lstat, :uv_fs_lstat, [Loop, Fs, :string, :pointer], :int

  # Check the file at `path` for changes every `interval` milliseconds.
  #
  # Your callback i invoked with `status == -1` if `path` does not exist
  # or is inaccessible. The watcher is *not* stopped but your callback is
  # not called again until something changes (e.g. when the file is created
  # or the error reason changes).
  #
  # When `status == 0`, your callback receives pointers to the old and new
  # `uv_stat_t` structs. They are valid for the duration of the callback
  # only!
  #
  # For maximum portability, use multi-second intervals. Sub-second intervals
  # will not detect all changes on many file systems.
  #
  # @method fs_poll_start(handle, poll_cb, path, interval)
  # @param [FsPoll] handle
  # @param [FFI::Pointer(FsPollCb)] poll_cb
  # @param [String] path
  # @param [Integer] interval
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_poll_start, :uv_fs_poll_start, [FsPoll, :pointer, :string, :uint], :int

  # Convert string ip addresses to binary structures
  #
  # @method ip6_addr(ip, port)
  # @param [String] ip
  # @param [Integer] port
  # @return [unknown]
  # @scope class
  #
  attach_function :ip6_addr, :uv_ip6_addr, [:string, :int], :char

  # Gets memory info in bytes
  #
  # @method get_free_memory()
  # @return [Integer]
  # @scope class
  #
  attach_function :get_free_memory, :uv_get_free_memory, [], :ulong_long

  # The mutex functions return 0 on success, -1 on error
  # (unless the return type is void, of course).
  #
  # @method mutex_init(handle)
  # @param [FFI::Pointer(*Mutex)] handle
  # @return [Integer]
  # @scope class
  #
  attach_function :mutex_init, :uv_mutex_init, [:pointer], :int

  # Same goes for the read/write lock functions.
  #
  # @method rwlock_tryrdlock(rwlock)
  # @param [FFI::Pointer(*Rwlock)] rwlock
  # @return [Integer]
  # @scope class
  #
  attach_function :rwlock_tryrdlock, :uv_rwlock_tryrdlock, [:pointer], :int

  # Same goes for the semaphore functions.
  #
  # @method sem_wait(sem)
  # @param [FFI::Pointer(*Sem)] sem
  # @return [nil]
  # @scope class
  #
  attach_function :sem_wait, :uv_sem_wait, [:pointer], :void

  # Waits on a condition variable with a timeout in nano seconds.
  # Returns 0 for success or -1 on timeout, * aborts when other errors happen.
  #
  # Note:
  # 1. callers should be prepared to deal with spurious wakeups.
  # 2. the granularity of timeout on Windows is never less than one millisecond.
  # 3. uv_cond_timedwait takes a relative timeout, not an absolute time.
  #
  # @method barrier_init(barrier, count)
  # @param [FFI::Pointer(*Barrier)] barrier
  # @param [Integer] count
  # @return [Integer]
  # @scope class
  #
  attach_function :barrier_init, :uv_barrier_init, [:pointer, :uint], :int

  # (Not documented)
  #
  # @method ref(handle)
  # @param [Handle] handle
  # @return [nil]
  # @scope class
  #
  attach_function :ref, :uv_ref, [Handle], :void

  # Walk the list of open handles.
  #
  # @method walk(loop, walk_cb, arg)
  # @param [Loop] loop
  # @param [FFI::Pointer(WalkCb)] walk_cb
  # @param [FFI::Pointer(*Void)] arg
  # @return [nil]
  # @scope class
  #
  attach_function :walk, :uv_walk, [Loop, :pointer, :pointer], :void

  # Opens an existing file descriptor or SOCKET as a tcp handle.
  #
  # @method tcp_open(handle, sock)
  # @param [Tcp] handle
  # @param [Integer] sock
  # @return [Integer]
  # @scope class
  #
  attach_function :tcp_open, :uv_tcp_open, [Tcp, :int], :int

  # Set the multicast ttl
  #
  # Arguments:
  #  handle              UDP handle. Should have been initialized with
  #                      `uv_udp_init`.
  #  ttl                 1 through 255
  #
  # Returns:
  #  0 on success, -1 on error.
  #
  # @method udp_set_multicast_ttl(handle, ttl)
  # @param [Udp] handle
  # @param [Integer] ttl
  # @return [Integer]
  # @scope class
  #
  attach_function :udp_set_multicast_ttl, :uv_udp_set_multicast_ttl, [Udp, :int], :int

  # This setting applies to Windows only.
  # Set the number of pending pipe instance handles when the pipe server
  # is waiting for connections.
  #
  # @method pipe_pending_instances(handle, count)
  # @param [Pipe] handle
  # @param [Integer] count
  # @return [nil]
  # @scope class
  #
  attach_function :pipe_pending_instances, :uv_pipe_pending_instances, [Pipe, :int], :void

  # uv_timer_t is a subclass of uv_handle_t.
  #
  # Used to get woken up at a specified time in the future.
  #
  # @method timer_init(loop, handle)
  # @param [Loop] loop
  # @param [Timer] handle
  # @return [Integer]
  # @scope class
  #
  attach_function :timer_init, :uv_timer_init, [Loop, Timer], :int

  # Cancel a pending request. Fails if the request is executing or has finished
  # executing.
  #
  # Returns 0 on success, -1 on error. The loop error code is not touched.
  #
  # Only cancellation of uv_fs_t, uv_getaddrinfo_t and uv_work_t requests is
  # currently supported.
  #
  # Cancelled requests have their callbacks invoked some time in the future.
  # It's _not_ safe to free the memory associated with the request until your
  # callback is called.
  #
  # Here is how cancellation is reported to your callback:
  #
  # - A uv_fs_t request has its req->errorno field set to UV_ECANCELED.
  #
  # - A uv_work_t or uv_getaddrinfo_t request has its callback invoked with
  #   status == -1 and uv_last_error(loop).code == UV_ECANCELED.
  #
  # This function is currently only implemented on UNIX platforms. On Windows,
  # it always returns -1.
  #
  # @method set_process_title(title)
  # @param [String] title
  # @return [Err]
  # @scope class
  #
  attach_function :set_process_title, :uv_set_process_title, [:string], Err.by_value

  # Stores the result of uv_fs_stat and uv_fs_fstat.
  #
  # @method fs_rmdir(loop, req, path, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [String] path
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_rmdir, :uv_fs_rmdir, [Loop, Fs, :string, :pointer], :int

  # This flag can be used with uv_fs_symlink on Windows
  # to specify whether the symlink is to be created using junction points.
  #
  # @method fs_fchmod(loop, req, file, mode, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [Integer] file
  # @param [Integer] mode
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_fchmod, :uv_fs_fchmod, [Loop, Fs, :int, :int, :pointer], :int

  # the target of the `dst` pointer is unmodified.
  #
  # @method inet_pton(af, src, dst)
  # @param [Integer] af
  # @param [String] src
  # @param [FFI::Pointer(*Void)] dst
  # @return [Err]
  # @scope class
  #
  attach_function :inet_pton, :uv_inet_pton, [:int, :string, :pointer], Err.by_value

  # The mutex functions return 0 on success, -1 on error
  # (unless the return type is void, of course).
  #
  # @method mutex_unlock(handle)
  # @param [FFI::Pointer(*Mutex)] handle
  # @return [nil]
  # @scope class
  #
  attach_function :mutex_unlock, :uv_mutex_unlock, [:pointer], :void

  # Same goes for the condition variable functions.
  #
  # @method cond_signal(cond)
  # @param [FFI::Pointer(*Cond)] cond
  # @return [nil]
  # @scope class
  #
  attach_function :cond_signal, :uv_cond_signal, [:pointer], :void

  # (Not documented)
  #
  # @method read_stop(stream)
  # @param [Stream] stream
  # @return [Integer]
  # @scope class
  #
  attach_function :read_stop, :uv_read_stop, [Stream], :int

  # Set mode. 0 for normal, 1 for raw.
  #
  # @method tty_set_mode(tty, mode)
  # @param [Tty] tty
  # @param [Integer] mode
  # @return [Integer]
  # @scope class
  #
  attach_function :tty_set_mode, :uv_tty_set_mode, [Tty, :int], :int

  # Stores the result of uv_fs_stat and uv_fs_fstat.
  #
  # @method fs_sendfile(loop, req, out_fd, in_fd, in_offset, length, cb)
  # @param [Loop] loop
  # @param [Fs] req
  # @param [Integer] out_fd
  # @param [Integer] in_fd
  # @param [Integer] in_offset
  # @param [Integer] length
  # @param [FFI::Pointer(FsCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :fs_sendfile, :uv_fs_sendfile, [Loop, Fs, :int, :int, :long_long, :ulong, :pointer], :int

  # Opens a shared library. The filename is in utf-8. Returns 0 on success and
  # -1 on error. Call `uv_dlerror(uv_lib_t*)` to get the error message.
  #
  # @method dlopen(filename, lib)
  # @param [String] filename
  # @param [FFI::Pointer(*Lib)] lib
  # @return [Integer]
  # @scope class
  #
  attach_function :dlopen, :uv_dlopen, [:string, :pointer], :int

  # Runs a function once and only once. Concurrent calls to uv_once() with the
  # same guard will block all callers except one (it's unspecified which one).
  # The guard should be initialized statically with the UV_ONCE_INIT macro.
  #
  # @method thread_create(tid, entry, arg)
  # @param [FFI::Pointer(*Thread)] tid
  # @param [FFI::Pointer(*)] entry
  # @param [FFI::Pointer(*Void)] arg
  # @return [Integer]
  # @scope class
  #
  attach_function :thread_create, :uv_thread_create, [:pointer, :pointer, :pointer], :int

  # (Not documented)
  #
  # @method tcp_connect(req, handle, address, cb)
  # @param [Connect] req
  # @param [Tcp] handle
  # @param [unknown] address
  # @param [FFI::Pointer(ConnectCb)] cb
  # @return [Integer]
  # @scope class
  #
  attach_function :tcp_connect, :uv_tcp_connect, [Connect, Tcp, :char, :pointer], :int

  # uv_check_t is a subclass of uv_handle_t.
  #
  # Every active check handle gets its callback called exactly once per loop
  # iteration, just after the system returns from blocking.
  #
  # @method check_init(loop, check)
  # @param [Loop] loop
  # @param [Check] check
  # @return [Integer]
  # @scope class
  #
  attach_function :check_init, :uv_check_init, [Loop, Check], :int

  # UNIX signal handling on a per-event loop basis. The implementation is not
  # ultra efficient so don't go creating a million event loops with a million
  # signal watchers.
  #
  # Note to Linux users: SIGRT0 and SIGRT1 (signals 32 and 33) are used by the
  # NPTL pthreads library to manage threads. Installing watchers for those
  # signals will lead to unpredictable behavior and is strongly discouraged.
  # Future versions of libuv may simply reject them.
  #
  # Some signal support is available on Windows:
  #
  #   SIGINT is normally delivered when the user presses CTRL+C. However, like
  #   on Unix, it is not generated when terminal raw mode is enabled.
  #
  #   SIGBREAK is delivered when the user pressed CTRL+BREAK.
  #
  #   SIGHUP is generated when the user closes the console window. On SIGHUP the
  #   program is given approximately 10 seconds to perform cleanup. After that
  #   Windows will unconditionally terminate it.
  #
  #   SIGWINCH is raised whenever libuv detects that the console has been
  #   resized. SIGWINCH is emulated by libuv when the program uses an uv_tty_t
  #   handle to write to the console. SIGWINCH may not always be delivered in a
  #   timely manner; libuv will only detect size changes when the cursor is
  #   being moved. When a readable uv_tty_handle is used in raw mode, resizing
  #   the console buffer will also trigger a SIGWINCH signal.
  #
  # Watchers for other signals can be successfully created, but these signals
  # are never generated. These signals are: SIGILL, SIGABRT, SIGFPE, SIGSEGV,
  # SIGTERM and SIGKILL.
  #
  # Note that calls to raise() or abort() to programmatically raise a signal are
  # not detected by libuv; these will not trigger a signal watcher.
  #
  # @method signal_stop(handle)
  # @param [Signal] handle
  # @return [Integer]
  # @scope class
  #
  attach_function :signal_stop, :uv_signal_stop, [Signal], :int

  # Same goes for the read/write lock functions.
  #
  # @method rwlock_wrunlock(rwlock)
  # @param [FFI::Pointer(*Rwlock)] rwlock
  # @return [nil]
  # @scope class
  #
  attach_function :rwlock_wrunlock, :uv_rwlock_wrunlock, [:pointer], :void

end
