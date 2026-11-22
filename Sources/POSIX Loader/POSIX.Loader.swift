#if Loader
    public import ISO_9945_Loader

    extension POSIX {

        public enum Loader: Sendable {}
    }

    extension POSIX.Loader {

        public typealias Error = ISO.`9945`.Loader.Error
    }
#endif
