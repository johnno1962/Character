// The Swift Programming Language
// https://docs.swift.org/swift-book

extension Array where Element: FixedWidthInteger {
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

extension Int8 {
    @inline(__always)
    public static func ~= (s: Unicode.Scalar, i: Self) -> Bool {
        return i == s.value
    }
    @inline(__always)
    public static func == (i: Self, s: Unicode.Scalar) -> Bool {
        return i == s.value
    }
    @inline(__always)
    public static func != (i: Self, s: Unicode.Scalar) -> Bool {
        return i != s.value
    }
    @inline(__always)
    public static func - (i: Self, s: Unicode.Scalar) -> Self {
        return i - Self(s.value)
    }
}

extension UInt8: ExpressibleByUnicodeScalarLiteral {
    @inline(__always)
    public init(unicodeScalarLiteral value: UnicodeScalar) {
        self.init(value.value)
    }
    @inline(__always)
    public static func ~= (s: Unicode.Scalar, i: Self) -> Bool {
        return i == s.value
    }
    @inline(__always)
    public static func == (i: Self, s: Unicode.Scalar) -> Bool {
        return i == s.value
    }
    @inline(__always)
    public static func != (i: Self, s: Unicode.Scalar) -> Bool {
        return i != s.value
    }
    @inline(__always)
    public static func - (i: Self, s: Unicode.Scalar) -> Self {
        return i - Self(s.value)
    }
}

extension Int16 {
    @inline(__always)
    public static func ~= (s: Unicode.Scalar, i: Self) -> Bool {
        return i == s.value
    }
    @inline(__always)
    public static func == (i: Self, s: Unicode.Scalar) -> Bool {
        return i == s.value
    }
    @inline(__always)
    public static func != (i: Self, s: Unicode.Scalar) -> Bool {
        return i != s.value
    }
    @inline(__always)
    public static func - (i: Self, s: Unicode.Scalar) -> Self {
        return i - Self(s.value)
    }
}

extension UInt16 {
    @inline(__always)
    public static func ~= (s: Unicode.Scalar, i: Self) -> Bool {
        return i == s.value
    }
    @inline(__always)
    public static func == (i: Self, s: Unicode.Scalar) -> Bool {
        return i == s.value
    }
    @inline(__always)
    public static func != (i: Self, s: Unicode.Scalar) -> Bool {
        return i != s.value
    }
    @inline(__always)
    public static func - (i: Self, s: Unicode.Scalar) -> Self {
        return i - Self(s.value)
    }
}

extension Int32 {
    @inline(__always)
    public static func ~= (s: Unicode.Scalar, i: Self) -> Bool {
        return i == s.value
    }
    @inline(__always)
    public static func == (i: Self, s: Unicode.Scalar) -> Bool {
        return i == s.value
    }
    @inline(__always)
    public static func != (i: Self, s: Unicode.Scalar) -> Bool {
        return i != s.value
    }
    @inline(__always)
    public static func - (i: Self, s: Unicode.Scalar) -> Self {
        return i - Self(s.value)
    }
}

extension UInt32 {
    @inline(__always)
    public static func ~= (s: Unicode.Scalar, i: Self) -> Bool {
        return i == s.value
    }
    @inline(__always)
    public static func == (i: Self, s: Unicode.Scalar) -> Bool {
        return i == s.value
    }
    @inline(__always)
    public static func != (i: Self, s: Unicode.Scalar) -> Bool {
        return i != s.value
    }
    @inline(__always)
    public static func - (i: Self, s: Unicode.Scalar) -> Self {
        return i - Self(s.value)
    }
}

extension Int64 {
    @inline(__always)
    public static func ~= (s: Unicode.Scalar, i: Self) -> Bool {
        return i == s.value
    }
    @inline(__always)
    public static func == (i: Self, s: Unicode.Scalar) -> Bool {
        return i == s.value
    }
    @inline(__always)
    public static func != (i: Self, s: Unicode.Scalar) -> Bool {
        return i != s.value
    }
    @inline(__always)
    public static func - (i: Self, s: Unicode.Scalar) -> Self {
        return i - Self(s.value)
    }
}

extension UInt64 {
    @inline(__always)
    public static func ~= (s: Unicode.Scalar, i: Self) -> Bool {
        return i == s.value
    }
    @inline(__always)
    public static func == (i: Self, s: Unicode.Scalar) -> Bool {
        return i == s.value
    }
    @inline(__always)
    public static func != (i: Self, s: Unicode.Scalar) -> Bool {
        return i != s.value
    }
    @inline(__always)
    public static func - (i: Self, s: Unicode.Scalar) -> Self {
        return i - Self(s.value)
    }
}

extension Int {
    @inline(__always)
    public static func ~= (s: Unicode.Scalar, i: Self) -> Bool {
        return i == s.value
    }
    @inline(__always)
    public static func == (i: Self, s: Unicode.Scalar) -> Bool {
        return i == s.value
    }
    @inline(__always)
    public static func != (i: Self, s: Unicode.Scalar) -> Bool {
        return i != s.value
    }
    @inline(__always)
    public static func - (i: Self, s: Unicode.Scalar) -> Self {
        return i - Self(s.value)
    }
}

extension UInt {
    @inline(__always)
    public static func ~= (s: Unicode.Scalar, i: Self) -> Bool {
        return i == s.value
    }
    @inline(__always)
    public static func == (i: Self, s: Unicode.Scalar) -> Bool {
        return i == s.value
    }
    @inline(__always)
    public static func != (i: Self, s: Unicode.Scalar) -> Bool {
        return i != s.value
    }
    @inline(__always)
    public static func - (i: Self, s: Unicode.Scalar) -> Self {
        return i - Self(s.value)
    }
}
