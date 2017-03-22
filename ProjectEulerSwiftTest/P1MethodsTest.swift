import XCTest
@testable import ProjectEulerSwift

class P1Test: XCTestCase {
    
    func testsumMultiples(){
        XCTAssertEqual(P1.sumMultiples(smallValue: 3, largeValue: 5, maxValue: 1000),233168)
        XCTAssertEqual(P1.sumMultiples(smallValue: 0, largeValue: 5, maxValue: 1000),0)
        XCTAssertEqual(P1.sumMultiples(smallValue: 3, largeValue: 0, maxValue: 1000),0)
        XCTAssertEqual(P1.sumMultiples(smallValue: 3, largeValue: 5, maxValue: 0),0)
        XCTAssertEqual(P1.sumMultiples(smallValue: 4, largeValue: 6, maxValue: 12),18)
        
        

        
    }
}
