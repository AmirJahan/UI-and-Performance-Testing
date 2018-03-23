
import XCTest

class UI_Test_AppUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        continueAfterFailure = false

    }
    
    override func tearDown()
    {
        super.tearDown()
    }
    
    
    func testAnything ()
    {
        let app = XCUIApplication()
        let emailidTextField = app.textFields["emailId"]
        emailidTextField.tap()
        emailidTextField.typeText("amir.jahan@gmail.com")
        
        let passidTextField = app.textFields["passId"]
        passidTextField.tap()
        passidTextField.tap()
        passidTextField.typeText("myPassword")
        app.buttons["Log me In"].tap()
        
        
        
        let that : XCUIElement = app.staticTexts["authResLabelId"];
        
        XCTAssert(that.exists, "It does exis");
        XCTAssertEqual(that.label, "success")
        
        
    }
    
    

    
    
}
