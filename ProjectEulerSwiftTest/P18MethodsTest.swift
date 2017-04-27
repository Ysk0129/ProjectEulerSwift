import XCTest
@testable import ProjectEulerSwift

class P18Test: XCTestCase {
    
    func testMax(){
        
        XCTAssertEqual(P18.max(n: 10, m: 1), 10)
        XCTAssertEqual(P18.max(n: -10, m: 100), 100)
    }
    
    func testSumOfMaximumPath(){
        
        let triangleArr1 = [[3],
                           [7, 4],
                           [2, 4, 6],
                           [8, 5, 9, 3]]
        XCTAssertEqual(P18.sumOfMaximumPath(withPyramid: triangleArr1), 23)
        XCTAssertEqual(P18.sumOfMaximumPath(withPyramid: [[2, 4, 1]]), 4)
        XCTAssertEqual(P18.sumOfMaximumPath(withPyramid: [[]]), 0)
    }
}
