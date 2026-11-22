public import ISO_9945_Kernel_File

extension POSIX.Kernel {

    public enum Link {}
}

extension POSIX.Kernel.Link {

    public typealias Error = ISO.`9945`.Kernel.Link.Error
}

extension POSIX.Kernel.Link {

    @inlinable
    public static func create(
        at linkPath: borrowing Path.Borrowed,
        to existingPath: borrowing Path.Borrowed
    ) throws(ISO.`9945`.Kernel.Link.Error) {
        try ISO.`9945`.Kernel.Link.create(at: linkPath, to: existingPath)
    }
}

extension POSIX.Kernel.Link {

    public typealias Count = ISO.`9945`.Kernel.Link.Count
}
