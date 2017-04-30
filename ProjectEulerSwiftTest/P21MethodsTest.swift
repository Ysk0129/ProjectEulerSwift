import XCTest
@testable import ProjectEulerSwift

class P21Test: XCTestCase {
    
    func testGetAllDivisors(){
        
        XCTAssertEqual(P21.getAllDivisors(n: 30).sorted{$0 < $1}, [1, 2, 3, 5, 6, 10, 15, 30])
        XCTAssertEqual(P21.getAllDivisors(n: 1), [1])
        XCTAssertEqual(P21.getAllDivisors(n: 0), [0])
    }

    func testGetAmicableNumbers(){
        
        XCTAssertEqual(P21.getAmicableNumbers(lessThan: 300).sorted{$0 < $1}, [220, 284])
        XCTAssertEqual(P21.getAmicableNumbers(lessThan: 219), [])
    }
}
