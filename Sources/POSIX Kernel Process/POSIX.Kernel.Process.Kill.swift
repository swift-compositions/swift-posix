public import ISO_9945_Kernel_Process

extension POSIX.Kernel.Process {

    public enum Kill: Sendable {}
}

extension POSIX.Kernel.Process.Kill {

    @inlinable
    public static func kill(
        _ process: ISO.`9945`.Kernel.Process.ID,
        _ signal: ISO.`9945`.Kernel.Signal.Number
    ) throws(ISO.`9945`.Kernel.Process.Error) {
        try ISO.`9945`.Kernel.Process.Kill.kill(process, signal)
    }
}
