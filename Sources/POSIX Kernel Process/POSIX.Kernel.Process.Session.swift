public import ISO_9945_Kernel_Process

extension POSIX.Kernel.Process {

    public enum Session: Sendable {}
}

extension POSIX.Kernel.Process.Session {

    public typealias ID = ISO.`9945`.Kernel.Process.Session.ID
}

extension POSIX.Kernel.Process.Session {

    @inlinable
    public static func create() throws(ISO.`9945`.Kernel.Process.Error)
        -> ISO.`9945`.Kernel.Process.Session.ID
    {
        try ISO.`9945`.Kernel.Process.Session.create()
    }

    @inlinable
    public static func id(
        of pid: ISO.`9945`.Kernel.Process.ID
    ) throws(ISO.`9945`.Kernel.Process.Error) -> ISO.`9945`.Kernel.Process.Session.ID {
        try ISO.`9945`.Kernel.Process.Session.id(of: pid)
    }
}
