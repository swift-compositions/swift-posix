public import ISO_9945_Kernel_Identity

extension POSIX.Kernel.Group {

    public enum Real: Sendable {}
}

extension POSIX.Kernel.Group.Real {

    @inlinable
    public static func id() -> ISO.`9945`.Kernel.Group.ID {
        ISO.`9945`.Kernel.Group.Real.id()
    }

    @inlinable
    public static func set(_ gid: ISO.`9945`.Kernel.Group.ID) throws(Error::Error) {
        try ISO.`9945`.Kernel.Group.Real.set(gid)
    }
}
