import XCTest
@testable import ProjectEulerSwift

class P25Test: XCTestCase {
    
    func testGetAllDivisors(){
        
        XCTAssertEqual(P25.getFirstOfFibonacci(nDigit: 3).value, "144")
        XCTAssertEqual(P25.getFirstOfFibonacci(nDigit: 2).nth, 7)
        XCTAssertEqual(P25.getFirstOfFibonacci(nDigit: 1).value, "1")
        XCTAssertEqual(P25.getFirstOfFibonacci(nDigit: 0).nth, 0)
    }
}
