//
//  AutoLayoutDemoUITests.swift
//  AutoLayoutDemoUITests
//
//  Created by 董知樾 on 2017/3/27.
//  Copyright © 2017年 董知樾. All rights reserved.
//

import XCTest

class AutoLayoutDemoUITests: XCTestCase {
    
    let application = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        snapKitLayout(index: 6)
    }
    
    func snapKitLayout(index : Int) {
        if index == 6 {
            let buttonQuery = application.descendants(matching: .button)
            let snapKitButton = buttonQuery.element(matching: .button, identifier: "snapKitLayoutButton")
            snapKitButton.tap()
        } else {
            let backButton = application.navigationBars.buttons["Back"]
            XCTAssertTrue(backButton.exists, "exists\(6-index)")
            
            backButton.tap()
        }
        
        let tableView = application.tables
        let cell = tableView.cells.element(boundBy: UInt(6 - index))
        cell.tap()
        
        if index-1 < 0 {return}
        snapKitLayout(index: index - 1)
        
    }
}
