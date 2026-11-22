public import ISO_9945_Kernel_Process

extension POSIX.Kernel.Process {

    public enum Fork: Sendable {}
}

extension POSIX.Kernel.Process.Fork {

    public typealias Result = ISO.`9945`.Kernel.Process.Fork.Result
}

extension POSIX.Kernel.Process.Fork {

    @inlinable
    public static func fork() throws(ISO.`9945`.Kernel.Process.Error)
        -> ISO.`9945`.Kernel.Process.Fork.Result
    {
        try ISO.`9945`.Kernel.Process.Fork.fork()
    }
}
