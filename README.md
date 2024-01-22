# Character

Integer conversions and operators for Swift Characters. 
The product of [a failed swift-evolution](https://forums.swift.org/t/single-quoted-character-literals-why-yes-again/61898) to introduce single
quoted `Character` literals to the Swift language. Then, I
reliased you could just define a few operators for people
to import - D'oh. For details, have a look at the tests.

```Swift
let a: UInt8 = "a"
let b: [UInt8] = ["a", "b", "c"]
let c = [Int8](unicode: "abc")
XCTAssertEqual(a, "a")
XCTAssertFalse(a != "a")
XCTAssert(b[1] == c[1])
XCTAssert(b == ["a", "b", "c"])
XCTAssertEqual(c[2] - "a", 2)
XCTAssert(c[2] == "c")
switch a {
case "a":
    break
default:
    XCTFail()
}
```
