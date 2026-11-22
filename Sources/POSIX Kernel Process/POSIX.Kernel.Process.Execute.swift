public import ISO_9945_Kernel_Process

extension POSIX.Kernel.Process {

    public enum Execute: Sendable {}
}

extension POSIX.Kernel.Process.Execute {

    @unsafe
    @inlinable
    public static func execve(
        path: UnsafePointer<CChar>,
        argv: UnsafePointer<UnsafePointer<CChar>?>,
        envp: UnsafePointer<UnsafePointer<CChar>?>
    ) throws(ISO.`9945`.Kernel.Process.Error) {
        try unsafe ISO.`9945`.Kernel.Process.Execute.execve(path: path, argv: argv, envp: envp)
    }
}
