#if !os(Windows)

    import Testing

    import POSIX_Test_Support
    @testable import POSIX_Kernel

    #if canImport(Darwin)
        import Darwin
    #elseif canImport(Glibc)
        import Glibc
    #endif

    extension POSIX.Kernel.File.Flush {
        enum Test {
            @Suite struct `Edge Case` {}
        }
    }

    extension POSIX.Kernel.File.Flush.Test.`Edge Case` {
        @Test
        func `directory flush below a regular file reports ENOTDIR instead of ENOENT`() throws {
            var templateBytes = Array("/tmp/flush-test-XXXXXX".utf8CString)
            let fd = mkstemp(&templateBytes)
            try #require(fd >= 0)
            close(fd)
            let file = Swift.String(cString: templateBytes)
            defer { unlink(file) }

            let path = makePath(file + "/child")
            let error = #expect(throws: POSIX.Kernel.File.Flush.Error.self) {
                try POSIX.Kernel.File.Flush.directory(path: path.view)
            }
            #expect(error?.code == .ENOTDIR)
        }

        @Test
        func `directory flush of a missing path reports ENOENT`() throws {
            let path = makePath("/tmp/flush-test-missing-\(getpid())/child")
            let error = #expect(throws: POSIX.Kernel.File.Flush.Error.self) {
                try POSIX.Kernel.File.Flush.directory(path: path.view)
            }
            #expect(error?.code == .ENOENT)
        }
    }

#endif
