import XCTest
@testable import ProjectEulerSwift

class P16Test: XCTestCase {
    
    func testGetLongestCollatzStart(){
        
        XCTAssertEqual(P16.bigPow(base: 3, exponent: 123), "48519278097689642681155855396759336072749841943521979872827")
        XCTAssertEqual(P16.bigPow(base: 0, exponent: 0), "0")
        XCTAssertEqual(P16.bigPow(base: 4, exponent: 0), "1")
        
    }
}
