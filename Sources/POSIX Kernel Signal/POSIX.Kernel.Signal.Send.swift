public import ISO_9945_Kernel_Signal

extension POSIX.Kernel.Signal {

    public enum Send: Sendable {}
}

extension POSIX.Kernel.Signal.Send {

    @inlinable
    public static func toProcess(
        _ signal: ISO.`9945`.Kernel.Signal.Number,
        pid: ISO.`9945`.Kernel.Process.ID
    ) throws(ISO.`9945`.Kernel.Signal.Error) {
        try ISO.`9945`.Kernel.Signal.Send.toProcess(signal, pid: pid)
    }

    @inlinable
    public static func toSelf(
        _ signal: ISO.`9945`.Kernel.Signal.Number
    ) throws(ISO.`9945`.Kernel.Signal.Error) {
        try ISO.`9945`.Kernel.Signal.Send.toSelf(signal)
    }

    @inlinable
    public static func toGroup(
        _ signal: ISO.`9945`.Kernel.Signal.Number,
        pgid: ISO.`9945`.Kernel.Process.Group.ID
    ) throws(ISO.`9945`.Kernel.Signal.Error) {
        try ISO.`9945`.Kernel.Signal.Send.toGroup(signal, pgid: pgid)
    }
}
