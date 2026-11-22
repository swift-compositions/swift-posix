public import ISO_9945_Kernel_Identity

extension POSIX.Kernel.User {

    public enum Database: Sendable {}
}

extension POSIX.Kernel.User.Database {

    public typealias Entry = ISO.`9945`.Kernel.User.Database.Entry
}

extension POSIX.Kernel.User.Database {

    @inlinable
    public static func find(
        name: String
    ) throws(ISO.`9945`.Kernel.User.Database.Error) -> ISO.`9945`.Kernel.User.Database.Entry? {
        try ISO.`9945`.Kernel.User.Database.find(name: name)
    }

    @inlinable
    public static func find(
        uid: ISO.`9945`.Kernel.User.ID
    ) throws(ISO.`9945`.Kernel.User.Database.Error) -> ISO.`9945`.Kernel.User.Database.Entry? {
        try ISO.`9945`.Kernel.User.Database.find(uid: uid)
    }
}
