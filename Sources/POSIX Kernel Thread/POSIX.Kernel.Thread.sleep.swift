public import ISO_9945_Kernel_Thread

extension POSIX.Kernel.Thread {

    /// Suspends the calling thread for the full duration, resuming after each signal interruption.
    public static func sleep(_ duration: Duration) {
        var remaining = duration
        while let unslept = ISO_9945.Kernel.Thread.sleep(remaining) {
            remaining = unslept
        }
    }
}
