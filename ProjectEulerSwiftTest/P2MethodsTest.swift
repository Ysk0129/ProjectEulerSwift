import XCTest
@testable import ProjectEulerSwift

class P2Test: XCTestCase {
    
    func testSumEvNumOfFibonacci(){
        XCTAssertEqual(P2.sumEvNumOfFibonacci(maxValue: 4000000),4613732)
        XCTAssertEqual(P2.sumEvNumOfFibonacci(maxValue: 89),44)
        XCTAssertEqual(P2.sumEvNumOfFibonacci(maxValue: -1),0)
        XCTAssertEqual(P2.sumEvNumOfFibonacci(maxValue: 0),0)
    }
}
