# swift-posix

Use this package when you make POSIX system calls from Swift and want calls that a signal interrupts to be finished for you. Start from `POSIX.Kernel`, through the `POSIX Kernel` product or one of its per-area products such as `POSIX Kernel File` or `POSIX Kernel Socket`. For dynamic library loading, start from `POSIX.Loader.Library`. If you want every call made exactly once, with `EINTR` handed back to you, use the `ISO_9945.Kernel` types from swift-iso-9945 directly.

## Laws

- Opening files and directories, reading, writing, creating pipes, moving, truncating and flushing files, waiting for a child process, accepting, sending and receiving on sockets, and `POSIX.Kernel.Memory.Map.sync(addr:length:flags:)` retry on `EINTR` until they succeed or fail with another error. Everything else, including closing a descriptor and taking a lock, makes the call once.
- `POSIX.Kernel.Poll.poll(_:timeout:)` with a positive timeout retries on `EINTR` with only the time that is left. Once the whole timeout has passed it returns 0, so a stream of signals can't stretch the wait. A zero or negative timeout is retried unchanged.
- `POSIX.Kernel.Thread.sleep(_:)` sleeps the whole duration, resuming after each interruption with the time that is left.
- `POSIX.Kernel.Socket.Connect.connect(_:address:length:)` never reissues an interrupted `connect`. It waits with no timeout until the socket is writable, then throws the socket's pending error if there is one. `POSIX.Kernel.Socket.Connect.start(_:address:length:)` reports `pending` both when the connection is still in progress and when the call was interrupted, and `POSIX.Kernel.Socket.Connect.finish(_:)` throws the socket's pending error.
- `POSIX.Kernel.IO.Write.writeAll(_:from:)` keeps writing until the whole buffer is written. A write that accepts 0 bytes fails with `EIO`.
- `POSIX.Kernel.IO.Read.readAll(_:into:)` stops at end of file and returns how many bytes it read, which can be fewer than the buffer holds.
- `ISO_9945.Kernel.File.Handle.writeAll(from:)` does not retry. An interrupted write throws the interrupt on the right of the `Either`, and the bytes written before it stay written.
- `POSIX.Kernel.File.Flush.directory(path:)` opens the directory read only with close on exec and flushes it. Any path error from opening it is reported as `ENOENT`.
- `Glob.match(pattern:in:options:)` yields paths that start with the given directory, joined with a single `/`. An empty pattern yields the directory itself.
- Glob results come in directory order unless the ordering option is `deterministic`, which sorts them. With include and exclude patterns, the result is every path any include pattern matches, without duplicates, minus every path any exclude pattern matches.
- Under the `explicit` dotfiles policy, a wildcard segment matches a name that starts with a period only if the segment itself starts with one, and `**` never enters or yields such names. Under `never` they are hidden even from `.*`. Under `always` they match like any other name. A literal segment is checked by looking the path up, so it matches a dotfile under every policy.
- `**` matches zero or more directories. Each directory it descends into counts one level toward `maxDepth`.
- With the `skip` error policy, a directory that can't be opened counts as empty, and one that fails partway through counts as what was read so far. Otherwise the first such directory throws, naming its path.
