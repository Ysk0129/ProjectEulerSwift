//
//  ProjectEulerSwiftTest.swift
//  ProjectEulerSwiftTest
//
//  Created by Yoshida Yusuke on 2017/03/21.
//  Copyright © 2017年 Yoshida Yusuke. All rights reserved.
//

import XCTest
@testable import ProjectEulerSwift

class ProjectEulerSwiftTest: XCTestCase {

    func testAnswer(){
        XCTAssertEqual(P1.answer(), 233168)
        XCTAssertEqual(P2.answer(), 4613732)
        XCTAssertEqual(P3.answer(), 6857)
        XCTAssertEqual(P4.answer(), 906609)
        XCTAssertEqual(P5.answer(), 232792560)
        XCTAssertEqual(P6.answer(), 25164150)
        XCTAssertEqual(P7.answer(), 104743)
        XCTAssertEqual(P8.answer(), 23514624000)
        XCTAssertEqual(P9.answer(), 31875000)
        XCTAssertEqual(P10.answer(), 142913828922)
        XCTAssertEqual(P11.answer(), 70600674)
        XCTAssertEqual(P12.answer(), 76576500)
        XCTAssertEqual(P13.answer(), 5537376230)
        XCTAssertEqual(P14.answer(), 837799)
        XCTAssertEqual(P15.answer(), "137846528820")
        XCTAssertEqual(P16.answer(), 1366)
        XCTAssertEqual(P17.answer(), 21124)
        XCTAssertEqual(P18.answer(), 1074)
        XCTAssertEqual(P19.answer(), 171)
        XCTAssertEqual(P20.answer(), 648)
        XCTAssertEqual(P21.answer(), 31626)
        XCTAssertEqual(P22.answer(sorted: P22.answer()), 871198282)
        XCTAssertEqual(P23.answer(), 4179871)
        XCTAssertEqual(P24.answer(), 2783915460)
        XCTAssertEqual(P25.answer(), 4782)
    }
}
