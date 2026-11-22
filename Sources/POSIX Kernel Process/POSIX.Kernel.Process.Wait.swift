public import ISO_9945_Kernel_Process

extension POSIX.Kernel.Process {

    public enum Wait: Sendable {}
}

extension POSIX.Kernel.Process.Wait {

    public typealias Kind = ISO.`9945`.Kernel.Process.Wait.Kind

    public typealias Options = ISO.`9945`.Kernel.Process.Wait.Options

    public typealias Result = ISO.`9945`.Kernel.Process.Wait.Result

    public typealias Selector = ISO.`9945`.Kernel.Process.Wait.Selector
}

extension POSIX.Kernel.Process.Wait {

    @inlinable
    public static func wait(
        _ selector: ISO.`9945`.Kernel.Process.Wait.Selector,
        options: ISO.`9945`.Kernel.Process.Wait.Options = []
    ) throws(ISO.`9945`.Kernel.Process.Error) -> ISO.`9945`.Kernel.Process.Wait.Result? {
        while true {
            do throws(ISO.`9945`.Kernel.Process.Error) {
                return try ISO.`9945`.Kernel.Process.Wait.wait(selector, options: options)
            } catch  where error.code.isInterrupted {
                continue
            }
        }
    }
}
