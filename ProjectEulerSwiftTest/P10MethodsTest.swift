import XCTest
@testable import ProjectEulerSwift

class P10Test: XCTestCase {
    
    func testGetPrimeNumbers(){
        XCTAssertEqual(P10.getPrimeNumbers(maxValue: 2)! ,[2])
        XCTAssertEqual(P10.getPrimeNumbers(maxValue: 3)! ,[2, 3])
        XCTAssertEqual(P10.getPrimeNumbers(maxValue: 20)! ,[2, 3, 5, 7, 11, 13, 17, 19])
        XCTAssertNil(P10.getPrimeNumbers(maxValue: 1))
    }
}
