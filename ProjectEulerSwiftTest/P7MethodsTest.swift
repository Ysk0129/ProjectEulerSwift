import XCTest
@testable import ProjectEulerSwift

class P7Test: XCTestCase {
    
    func testGetPrimeNumberOf(){
        XCTAssertEqual(P7.getPrimeNumberOf(nth: 6) ,13)
        XCTAssertEqual(P7.getPrimeNumberOf(nth: 1) ,2)
        XCTAssertEqual(P7.getPrimeNumberOf(nth: 0) ,0)
        XCTAssertEqual(P7.getPrimeNumberOf(nth: -1) ,0)
    }
}
