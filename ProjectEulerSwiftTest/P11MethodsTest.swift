import XCTest
@testable import ProjectEulerSwift

class P11Test: XCTestCase {
    
    func testProdConsecutive(){
        
        let arr1 = [
                    [2,3,4,5],
                    [4,3,2,1],
                    [5,4,0,2],
                    [1,2,3,4]
                             ]
        XCTAssertEqual(P11.prodConsecutive(numArrays: arr1) ,120)
        
        let arr2 = [[2,3,4],[3,2,1,3],[1,1,1,1],[0,0,0,0]]
        XCTAssertEqual(P11.prodConsecutive(numArrays: arr2) ,0)
        
        let arr3 = [[2,3,4,5],[3,5,6,7],[1,2,4,5]]
        XCTAssertEqual(P11.prodConsecutive(numArrays: arr3) ,0)
    }
}
