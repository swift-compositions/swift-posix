import ISO_9945_Kernel_Thread

extension POSIX.Kernel {

    public enum Thread: Sendable {}
}

extension POSIX.Kernel.Thread {

    public typealias Condition = ISO_9945.Kernel.Thread.Condition
}

extension POSIX.Kernel.Thread {

    public typealias Error = ISO_9945.Kernel.Thread.Error
}

extension POSIX.Kernel.Thread {

    public typealias Handle = ISO_9945.Kernel.Thread.Handle
}

extension POSIX.Kernel.Thread {

    public typealias Key = ISO_9945.Kernel.Thread.Key
}

extension POSIX.Kernel.Thread {

    public typealias Mutex = ISO_9945.Kernel.Thread.Mutex
}

extension POSIX.Kernel.Thread {

    @inlinable
    public static func create(
        _ body: @escaping @Sendable () -> Void
    ) throws(ISO_9945.Kernel.Thread.Error) -> ISO_9945.Kernel.Thread.Handle {
        try ISO_9945.Kernel.Thread.create(body)
    }
}

extension POSIX.Kernel.Thread {

    /// Suspends the calling thread for the full duration, resuming after each signal interruption.
    public static func sleep(_ duration: Duration) {
        var remaining = duration
        while let unslept = ISO_9945.Kernel.Thread.sleep(remaining) {
            remaining = unslept
        }
    }
}

extension POSIX.Kernel.Thread {

    @inlinable
    public static func yield() {
        ISO_9945.Kernel.Thread.yield()
    }
}
