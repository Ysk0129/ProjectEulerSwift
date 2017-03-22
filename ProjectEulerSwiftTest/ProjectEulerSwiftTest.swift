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
    }
}
