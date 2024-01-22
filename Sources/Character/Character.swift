// The Swift Programming Language
// https://docs.swift.org/swift-book

extension Array where Element: FixedWidthInteger {
    /// Initialise an Integer array of "characters"
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

extension FixedWidthInteger {
    /// Basic equality operators
    @_transparent
    public static func == (i: Self, s: Unicode.Scalar) -> Bool {
        return i == s.value
    }
    @_transparent
    public static func != (i: Self, s: Unicode.Scalar) -> Bool {
        return i != s.value
    }
    /// Used in switch statements
    @_transparent
    public static func ~= (s: Unicode.Scalar, i: Self) -> Bool {
        return i == s.value
    }
    /// Maybe useful now and then
    @_transparent
    public static func - (i: Self, s: Unicode.Scalar) -> Self {
        return i - Self(s.value)
    }
}

extension UInt8: ExpressibleByUnicodeScalarLiteral {
    /// Make UInt8 expressible by "c" (probably not worth it)
    @_transparent
    public init(unicodeScalarLiteral value: UnicodeScalar) {
        self.init(value.value)
    }
}
