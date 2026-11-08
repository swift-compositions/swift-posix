import ISO_9945_Kernel_Process

extension POSIX.Kernel {

    public enum Process: Sendable {}
}

extension POSIX.Kernel.Process {

    public typealias Error = ISO_9945.Kernel.Process.Error
}

extension POSIX.Kernel.Process {

    public typealias ID = ISO_9945.Kernel.Process.ID
}

extension POSIX.Kernel.Process {

    public typealias Status = ISO_9945.Kernel.Process.Status
}
