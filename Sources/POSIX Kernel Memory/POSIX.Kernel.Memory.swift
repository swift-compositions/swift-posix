import ISO_9945_Kernel_Memory

extension POSIX.Kernel {

    public enum Memory: Sendable {}
}

extension POSIX.Kernel.Memory {

    public typealias Address = Memory.Address
}

extension POSIX.Kernel.Memory {

    public typealias Allocation = Memory.Allocation
}
