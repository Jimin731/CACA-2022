//
//  ClonetTests.swift
//  ClonetTests
//
//  Created by Jimin on 2022/02/14.
//

import XCTest
@testable import Clonet

class ClonetTests: XCTestCase {
    var loginViewModel: Login_ViewModel!
    var loginModel: Login_Model!
    
    override func setUp() {
        loginViewModel = .init()
        loginModel = .init()
    }
    
    func testLoginResult(){
        let userTest = loginModel.
        loginViewModel.login(id: "user1", passwd: "passwd")
        
//        XCTAssertTrue(loginViewModel.successPresented)
    }
    
    
//    // 메소드 실행 전 모든 상태 reset
//    override func setUpWithError() throws {
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    // 테스트 끝난 후 모든 상태 clean
//    override func tearDownWithError() throws {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//    }
//
//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//        // Any test you write for XCTest can be annotated as throws and async.
//        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
//        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
//    }
//
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
