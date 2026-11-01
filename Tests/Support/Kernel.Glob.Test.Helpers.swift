#if !os(Windows)

    public import Path
    public import Glob

    public func makePath(_ string: Swift.String) -> Path {
        Path(Array(string.utf8).span)
    }

    extension Glob {

        public static func match(
            pattern: Pattern,
            in directory: Swift.String,
            options: Options = .init()
        ) throws(Error) -> [Swift.String] {
            let path = makePath(directory)
            return try match(pattern: pattern, in: path.view, options: options)
        }

        public static func match(
            include: [Pattern],
            excluding: [Pattern] = [],
            in directory: Swift.String,
            options: Options = .init()
        ) throws(Error) -> [Swift.String] {
            let path = makePath(directory)
            return try match(
                include: include,
                excluding: excluding,
                in: path.view,
                options: options
            )
        }

        public static func match(
            pattern: Pattern,
            in directory: Swift.String,
            options: Options = .init(),
            body: (Swift.String) -> Void
        ) throws(Error) {
            let path = makePath(directory)
            try match(pattern: pattern, in: path.view, options: options, body: body)
        }
    }

#endif
