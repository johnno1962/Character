# Character

Integer conversions and operators for Swift Characters. 
The product of [a failed swift-evolution](https://forums.swift.org/t/single-quoted-character-literals-why-yes-again/61898) to introduce single
quoted `Character` literals to the Swift language. Then I
reliased you could just define a few operators for people
to import - D'oh. For details, have a look at the tests.

```Swift
let a: UInt8 = "c"
let b: [UInt8] = ["a", "b", "c"]
let c = [UInt8](unicode: "abc")
XCTAssertEqual(a, "c")
XCTAssertFalse(a != "c")
XCTAssert(b[1] == c[1])
XCTAssert(c == ["a", "b", "c"])
XCTAssertEqual(a - "a", 2)
switch a {
case "c":
    break
default:
    XCTFail()
}
```
