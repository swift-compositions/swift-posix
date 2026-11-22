public import ISO_9945_Kernel_Process

extension POSIX.Kernel.Process {

    public enum Group: Sendable {}
}

extension POSIX.Kernel.Process.Group {

    public typealias ID = ISO.`9945`.Kernel.Process.Group.ID

    public typealias Process = ISO.`9945`.Kernel.Process.Group.Process

    public typealias Target = ISO.`9945`.Kernel.Process.Group.Target
}

extension POSIX.Kernel.Process.Group {

    @inlinable
    public static func set(
        _ process: ISO.`9945`.Kernel.Process.Group.Process,
        to target: ISO.`9945`.Kernel.Process.Group.Target
    ) throws(ISO.`9945`.Kernel.Process.Error) {
        try ISO.`9945`.Kernel.Process.Group.set(process, to: target)
    }

    @inlinable
    public static func id(
        of pid: ISO.`9945`.Kernel.Process.ID
    ) throws(ISO.`9945`.Kernel.Process.Error) -> ISO.`9945`.Kernel.Process.Group.ID {
        try ISO.`9945`.Kernel.Process.Group.id(of: pid)
    }
}
