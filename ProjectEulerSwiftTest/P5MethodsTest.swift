import XCTest
@testable import ProjectEulerSwift

class P5Test: XCTestCase {
    
    func testGetDivisibleByAll(){
        XCTAssertEqual(P5.getDivisibleByAll(values: [1,2,3,4,5,6,7,8,9,10]) ,2520)
        XCTAssertEqual(P5.getDivisibleByAll(values: [3,4,6]) ,12)
        XCTAssertEqual(P5.getDivisibleByAll(values: []) ,0)
        XCTAssertEqual(P5.getDivisibleByAll(values: [0]) ,0)
        XCTAssertEqual(P5.getDivisibleByAll(values: [-1]) ,0)
        XCTAssertEqual(P5.getDivisibleByAll(values: [1,2,-1,0]) ,0)
    }
}
