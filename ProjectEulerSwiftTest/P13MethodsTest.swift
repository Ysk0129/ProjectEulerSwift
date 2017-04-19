import XCTest
@testable import ProjectEulerSwift

class P13Test: XCTestCase {
    
    func testSumOfArrayWith(){
        
        let arr1 = ["1234", "9876", "6666", "8"]
        XCTAssertEqual(P13.sumOfArrayWith(numArr: arr1) ,"17784")
        
        let arr2 = ["01234", "9876", "0006666", "08"]
        XCTAssertEqual(P13.sumOfArrayWith(numArr: arr2) ,"17784")
        
        let arr3 = ["0"]
        XCTAssertEqual(P13.sumOfArrayWith(numArr: arr3) ,"0")
    }
}
