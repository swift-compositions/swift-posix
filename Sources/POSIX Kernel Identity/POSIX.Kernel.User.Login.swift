public import ISO_9945_Kernel_Identity

extension POSIX.Kernel.User {

    public enum Login: Sendable {}
}

extension POSIX.Kernel.User.Login {

    @inlinable
    public static func name() throws(ISO.`9945`.Kernel.User.Login.Error) -> String? {
        try ISO.`9945`.Kernel.User.Login.name()
    }
}
