import XCTest
@testable import Character

final class CharacterTests: XCTestCase {
    func testExample() throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
        
        let a: UInt8 = "a"
        let b: [UInt8] = ["a", "b", "c"]
        XCTAssertEqual(a, "a")
        let c = [Int8](unicode: "abc")
        XCTAssertFalse(a != "a")
        XCTAssert(b[1] == c[1])
        XCTAssert(b == ["a", "b", "c"])
        XCTAssertEqual(c[2] - "a", 2)
        XCTAssert(c[2] == "c")
        switch c[1] {
        case "a":
            break
        default:
            XCTFail()
        }
    }
}
