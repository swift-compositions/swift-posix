public import ISO_9945_Kernel_Identity

extension POSIX.Kernel {

    public enum User: Sendable {}
}

extension POSIX.Kernel.User {

    public typealias ID = ISO.`9945`.Kernel.User.ID
}
