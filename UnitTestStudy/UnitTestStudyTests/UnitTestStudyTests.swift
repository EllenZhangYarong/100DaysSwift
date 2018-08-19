//
//  UnitTestStudyTests.swift
//  UnitTestStudyTests
//
//  Created by 张亚荣 on 2018/8/18.
//  Copyright © 2018年 EllenAndAngel. All rights reserved.
//

import XCTest
@testable import UnitTestStudy

class UnitTestStudyTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testIsNumberEven(){
        let viewController = ViewController()
        let odd = 9
        let even = 7
        
        XCTAssertTrue(viewController.isNumberEven(num: 8))
        XCTAssertFalse(viewController.isNumberEven(num: even))
        XCTAssertFalse(viewController.isNumberEven(num: odd))
    }
}
