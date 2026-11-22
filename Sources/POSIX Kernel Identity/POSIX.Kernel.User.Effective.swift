public import ISO_9945_Kernel_Identity

extension POSIX.Kernel.User {

    public enum Effective: Sendable {}
}

extension POSIX.Kernel.User.Effective {

    @inlinable
    public static func id() -> ISO.`9945`.Kernel.User.ID {
        ISO.`9945`.Kernel.User.Effective.id()
    }

    @inlinable
    public static func set(_ uid: ISO.`9945`.Kernel.User.ID) throws(Error::Error) {
        try ISO.`9945`.Kernel.User.Effective.set(uid)
    }
}
