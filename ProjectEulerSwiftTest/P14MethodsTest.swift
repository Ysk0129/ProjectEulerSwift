import XCTest
@testable import ProjectEulerSwift

class P14Test: XCTestCase {
    
    func testGetLongestCollatzStart(){
        
        XCTAssertEqual(P14.getLongestCollatzStart(max: 20) ,18)
        XCTAssertEqual(P14.getLongestCollatzStart(max: 0) ,0)
        
    }
}
