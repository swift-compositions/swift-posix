import ISO_9945_Kernel_Signal

extension POSIX.Kernel {

    public enum Signal: Sendable {}
}

extension POSIX.Kernel.Signal {

    public typealias Error = ISO_9945.Kernel.Signal.Error
}

extension POSIX.Kernel.Signal {

    public typealias Information = ISO_9945.Kernel.Signal.Information
}

extension POSIX.Kernel.Signal {

    public typealias Number = ISO_9945.Kernel.Signal.Number
}

extension POSIX.Kernel.Signal {

    public typealias Set = ISO_9945.Kernel.Signal.Set
}
