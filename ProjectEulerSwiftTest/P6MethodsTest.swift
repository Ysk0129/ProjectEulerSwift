import XCTest
@testable import ProjectEulerSwift

class P6Test: XCTestCase {
    
    func testDiffSumSquares(){
        XCTAssertEqual(P6.diffSumSquares(number: 10) ,2640)
        XCTAssertEqual(P6.diffSumSquares(number: 1) ,0)
        XCTAssertEqual(P6.diffSumSquares(number: 0) ,0)
        XCTAssertEqual(P6.diffSumSquares(number: -1) ,0)
    }
}
