//
//  LoginTest.swift
//  LoginTest
//
//  Created by Hye Min Choi on 2022/06/01.
//

import XCTest

class LoginTest: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        // .accessibilityIdentifier("PASSWORD")
        
        // id 입력
        let IDTextField = app.textFields["ID"]
        IDTextField.tap()
        IDTextField.typeText("user1\n") // 입력 후 키보드 내림

        // passwd 입력
        let PWTextField = app.textFields["PASSWORD"]
        PWTextField.tap()
        PWTextField.typeText("passwd\n") // 입력 후 키보드 내림
        
        // loginButton Click
        let LoginButton = app.buttons["LoginButton"]
        LoginButton.click()
        
        // 페이지 넘어갈 때까지 잠깐 기다리기
        app.waitForExistence(timeout: 1)
        
        // clonet_logo_white를 인식하면 로그인 성공!
        var clonetImage = app.images["clonet_logo_white"]
    

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
