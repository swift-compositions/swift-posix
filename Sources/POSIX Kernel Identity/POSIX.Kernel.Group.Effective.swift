public import ISO_9945_Kernel_Identity

extension POSIX.Kernel.Group {

    public enum Effective: Sendable {}
}

extension POSIX.Kernel.Group.Effective {

    @inlinable
    public static func id() -> ISO.`9945`.Kernel.Group.ID {
        ISO.`9945`.Kernel.Group.Effective.id()
    }

    @inlinable
    public static func set(_ gid: ISO.`9945`.Kernel.Group.ID) throws(Error::Error) {
        try ISO.`9945`.Kernel.Group.Effective.set(gid)
    }
}
