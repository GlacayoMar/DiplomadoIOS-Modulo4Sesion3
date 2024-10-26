//
//  tarea4UITests.swift
//  tarea4UITests
//
//  Created by LABORATORIO MAC UAM on 26/10/24.
//

import XCTest

final class tarea4UITests: XCTestCase {
    
    let app = XCUIApplication()

    override func setUpWithError() throws {

        continueAfterFailure = false
        app.launch()

    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testLoginLabel() {
        let loginLabel = app.staticTexts["loginLabel"]
        XCTAssertTrue(loginLabel.exists, "El elemento existe")
        XCTAssertEqual(loginLabel.label, "Login", "El texto es 'Login'")
    }
    
    func testUserTextField() {
        let userTextField = app.textFields["userTextField"]
        XCTAssertTrue(userTextField.exists, "El campo de usuario existe")
        
        userTextField.tap()
        userTextField.typeText("log(n)")
        XCTAssertEqual(userTextField.value as! String, "log(n)", "El campo de usuario debe contener el texto 'log(n)'")
    }
    
    func testPasswordTextField() {
        let passwordTextField = app.secureTextFields["passwordTextField"]
        XCTAssertTrue(passwordTextField.exists, "El campo de contraseña existe")
        
        passwordTextField.tap()
        passwordTextField.typeText("Password123")
        XCTAssertNotEqual(passwordTextField.value as! String, "Password123", "La contraseña debe estar oculta")
    }
    
    func testLoginButton() {
        let loginButton = app.buttons["loginButton"]
        XCTAssertTrue(loginButton.exists, "El botón de login existe")
    }
    
    func testRegisterButton() {
        let registerButton = app.buttons["registerButton"]
        XCTAssertTrue(registerButton.exists, "El botón de registro existe")
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



