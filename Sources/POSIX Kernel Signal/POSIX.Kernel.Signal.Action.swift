public import ISO_9945_Kernel_Signal

extension POSIX.Kernel.Signal {

    public enum Action: Sendable {}
}

extension POSIX.Kernel.Signal.Action {

    public typealias Configuration = ISO.`9945`.Kernel.Signal.Action.Configuration

    public typealias Handler = ISO.`9945`.Kernel.Signal.Action.Handler

    public typealias Options = ISO.`9945`.Kernel.Signal.Action.Options
}

extension POSIX.Kernel.Signal.Action {

    @discardableResult
    @unsafe
    @inlinable
    public static func set(
        signal: ISO.`9945`.Kernel.Signal.Number,
        _ configuration: ISO.`9945`.Kernel.Signal.Action.Configuration
    ) throws(ISO.`9945`.Kernel.Signal.Error) -> ISO.`9945`.Kernel.Signal.Action.Configuration {
        try unsafe ISO.`9945`.Kernel.Signal.Action.set(signal: signal, configuration)
    }

    @unsafe
    @inlinable
    public static func get(
        signal: ISO.`9945`.Kernel.Signal.Number
    ) throws(ISO.`9945`.Kernel.Signal.Error) -> ISO.`9945`.Kernel.Signal.Action.Configuration {
        try unsafe ISO.`9945`.Kernel.Signal.Action.get(signal: signal)
    }
}
