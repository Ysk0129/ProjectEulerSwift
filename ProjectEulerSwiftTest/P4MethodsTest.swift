import XCTest
@testable import ProjectEulerSwift

class P4Test: XCTestCase {
    
    func testGetMaxPalindromicNumber(){
        XCTAssertEqual(P4.getMaxPalindromicNumber(prodDigit: 3),906609)
        XCTAssertEqual(P4.getMaxPalindromicNumber(prodDigit: 2),9009)
        XCTAssertEqual(P4.getMaxPalindromicNumber(prodDigit: 0),0)
    }
    
    func testIsPalindromicNumber(){
        XCTAssertTrue(P4.isPalindromicNumber(value: 111111))
        XCTAssertTrue(P4.isPalindromicNumber(value: 8))
        XCTAssertTrue(P4.isPalindromicNumber(value: 202))
        XCTAssertTrue(P4.isPalindromicNumber(value: 123456654321))
        XCTAssertTrue(P4.isPalindromicNumber(value: 0))
        
        XCTAssertFalse(P4.isPalindromicNumber(value: 11121))
        XCTAssertFalse(P4.isPalindromicNumber(value: 21))
        XCTAssertFalse(P4.isPalindromicNumber(value: -666))
        XCTAssertFalse(P4.isPalindromicNumber(value: 654321))
        
    }
    
}
