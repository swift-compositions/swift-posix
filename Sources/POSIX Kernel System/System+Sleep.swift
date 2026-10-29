public import ISO_9945_Kernel_System

extension System {

    /// Sleeps for the full duration, resuming after each signal interruption.
    public static func sleep(_ duration: Duration) {
        var remaining = duration
        while let unslept = System.nanosleep(remaining) {
            remaining = unslept
        }
    }
}
