// The Swift Programming Language
// https://docs.swift.org/swift-book

extension Array where Element: FixedWidthInteger {
    /// Initialise array of "characters"
    @inline(__always)
    public init(unicode: String, default: UInt32 = 0) {
        self.init(unicode.map {
            let scalars = $0.unicodeScalars
            if scalars.count == 1,
                let v = scalars.first?.value,
                v <= Element.max {
                return Element(v)
            }
            return Element(`default`)
        })
    }
}

extension UInt8: ExpressibleByUnicodeScalarLiteral {
    /// UInt8 expressible by "c"
    @_transparent
    public init(unicodeScalarLiteral value: UnicodeScalar) {
        self.init(value.value)
    }
}

extension FixedWidthInteger {
    /// Basic comparison operator
    @_transparent
    public static func == (i: Self, s: Unicode.Scalar) -> Bool {
        return i == s.value
    }
    /// Used in switch statements
    @_transparent
    public static func ~= (s: Unicode.Scalar, i: Self) -> Bool {
        return i == s
    }
    /// Maybe useful now and then
    @_transparent
    public static func - (i: Self, s: Unicode.Scalar) -> Self {
        return i - Self(s.value)
    }
}
