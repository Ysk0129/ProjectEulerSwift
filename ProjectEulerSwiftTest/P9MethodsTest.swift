import XCTest
@testable import ProjectEulerSwift

class P9Test: XCTestCase {
    
    func testGetPythagoreanABCWithSum(){
        let pythagoreanABC1 = P9.getPythagoreanABCWithSum(sum: 12)
        XCTAssertEqual(pythagoreanABC1?[0]["a"], 3)
        XCTAssertEqual(pythagoreanABC1?[0]["b"], 4)
        XCTAssertEqual(pythagoreanABC1?[0]["c"], 5)
        XCTAssertEqual(pythagoreanABC1?[0].values.reduce(0){$0 + $1}, 12)
        
        let pythagoreanABC2 = P9.getPythagoreanABCWithSum(sum: 1000)
        XCTAssertEqual(pythagoreanABC2?[0]["a"], 200)
        XCTAssertEqual(pythagoreanABC2?[0]["b"], 375)
        XCTAssertEqual(pythagoreanABC2?[0]["c"], 425)
        XCTAssertEqual(pythagoreanABC2?[0].values.reduce(0){$0 + $1}, 1000)
        
        
        let pythagoreanABC3 = P9.getPythagoreanABCWithSum(sum: 100)
        XCTAssertNil(pythagoreanABC3)
        
        
        
        
    }
}
