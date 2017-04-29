import XCTest
@testable import ProjectEulerSwift

class P19Test: XCTestCase {
    
    func testDayOf(){
        
        XCTAssertEqual(P19.dayOf(weekDay: 2, between: 2017, to: 2017).count, 52)
        
        var daysCount = 0
        for i in 1...7{
            daysCount += P19.dayOf(weekDay: i, between: 2015, to: 2016).count
        }
        XCTAssertEqual(daysCount, 365 * 2 + 1)
        
        XCTAssertEqual(P19.dayOf(weekDay: 7, between: 2014, to: 2014).first?.day, 4)
    }
}
