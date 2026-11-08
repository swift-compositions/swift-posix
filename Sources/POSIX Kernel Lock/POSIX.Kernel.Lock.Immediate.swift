@_spi(Syscall) public import ISO_9945_Kernel_Lock
@_spi(Syscall) public import POSIX_Kernel_Descriptor

extension POSIX.Kernel.Lock {
    public enum Immediate: Sendable {}
}
