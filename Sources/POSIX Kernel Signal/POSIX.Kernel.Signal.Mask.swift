public import ISO_9945_Kernel_Signal

extension POSIX.Kernel.Signal {

    public enum Mask: Sendable {}
}

extension POSIX.Kernel.Signal.Mask {

    public typealias How = ISO.`9945`.Kernel.Signal.Mask.How
}

extension POSIX.Kernel.Signal.Mask {

    @inlinable
    public static func change(
        _ how: ISO.`9945`.Kernel.Signal.Mask.How,
        signals: ISO.`9945`.Kernel.Signal.Set
    ) throws(ISO.`9945`.Kernel.Signal.Error) -> ISO.`9945`.Kernel.Signal.Set {
        try ISO.`9945`.Kernel.Signal.Mask.change(how, signals: signals)
    }

    @inlinable
    public static func pending() throws(ISO.`9945`.Kernel.Signal.Error) -> ISO.`9945`.Kernel.Signal.Set {
        try ISO.`9945`.Kernel.Signal.Mask.pending()
    }
}
