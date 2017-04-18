import XCTest
@testable import ProjectEulerSwift

class P12Test: XCTestCase {
    
    func testGetTriangularNumber(){
        
        XCTAssertEqual(P12.getTriangularNumber(nth: 7) ,28)
        XCTAssertEqual(P12.getTriangularNumber(nth: 0) ,0)
    }
    
    func testGetTriangularWith(){
        
        XCTAssertEqual(P12.getTriangularWith(divCount: 5) ,28)
        XCTAssertEqual(P12.getTriangularWith(divCount: 0) ,0)
    }
}
