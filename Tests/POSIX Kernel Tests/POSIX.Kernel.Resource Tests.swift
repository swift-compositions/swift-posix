#if !os(Windows)

    import Testing

    @testable import POSIX_Kernel

    extension POSIX.Kernel.Resource {
        enum Test {
            @Suite struct Unit {}
        }
    }

    extension POSIX.Kernel.Resource.Test.Unit {
        @Test
        func `the descriptor limit is reachable through the POSIX kernel`() throws {
            let limit = try POSIX.Kernel.Resource.Limit.get(.descriptors)
            #expect(limit.current <= limit.maximum)
        }
    }

#endif
