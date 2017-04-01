import XCTest
@testable import ProjectEulerSwift

class P3Test: XCTestCase {

    func testGetPrimeFactor(){
        XCTAssertEqual(P3.getPrimeFactors(value: 13195),[5, 7, 13, 29])
        XCTAssertEqual(P3.getPrimeFactors(value: 9),[3,3])
        XCTAssertEqual(P3.getPrimeFactors(value: 8),[2,2,2])
        XCTAssertEqual(P3.getPrimeFactors(value: 0),[0])
        XCTAssertEqual(P3.getPrimeFactors(value: 1),[0])
        XCTAssertEqual(P3.getPrimeFactors(value: 2),[2])
    }

}
