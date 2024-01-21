import XCTest
@testable import Character

final class CharacterTests: XCTestCase {
    func testExample() throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
        
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
    }
}
