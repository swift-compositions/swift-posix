import ISO_9945_Kernel_Process

extension POSIX.Kernel {

    public enum Process: Sendable {}
}

extension POSIX.Kernel.Process {

    public typealias Error = ISO.`9945`.Kernel.Process.Error
}

extension POSIX.Kernel.Process {

    public typealias ID = ISO.`9945`.Kernel.Process.ID
}

extension POSIX.Kernel.Process {

    public typealias Status = ISO.`9945`.Kernel.Process.Status
}
