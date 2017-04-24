import XCTest
@testable import ProjectEulerSwift

class P15Test: XCTestCase {
    
    func testNCr(){
        
        XCTAssertEqual(P15.nCr(n: 5, r: 3), "10")
        XCTAssertEqual(P15.nCr(n: 5, r: -1), "0")
        XCTAssertEqual(P15.nCr(n: 0, r: 5), "0")
        
    }
}
