import XCTest


class UITestingTablesUITests: XCTestCase {
    
    // this is the proxy
    var app: XCUIApplication!
    
    
    
    // view did load
    override func setUp()
    {
        super.setUp()
        
        continueAfterFailure = false
        
        
        app = XCUIApplication()
        app.launch()
        
        
    }
    // release
    override func tearDown()
    {
        super.tearDown()
    }
    
    
    func testExample()
    {
        app.swipeDown()
        sleep(1);
        
        
        
        
        let viewIdElement: XCUIElement!
        viewIdElement = XCUIApplication().otherElements["viewId"]
        
        
        viewIdElement.swipeDown()
        viewIdElement.tap();
        
        sleep(10);
        
        
        // proxy to XCUIApplication
        let thisElem : XCUIElement = app.staticTexts["labelAccessIdentifier"];
        
        XCTAssert(thisElem.label == "Let's Begin", "That's what we expect");
        
        
        sleep(5);
        
        
        
        
        
        
        
        XCTAssertEqual(app.tables.count, 1)
        let table: XCUIElement = app.tables.element(boundBy: 0)
        XCTAssertNotEqual(table.cells.count, 0)
        
        
        let myCell : XCUIElement = table.cells.element(boundBy: 4);
        
        myCell.tap();
        

        
        sleep(5)
 
    }
    
    
    func testFifthElement ()
    {
    
        
        let app = XCUIApplication()
        app.otherElements["viewId"].tap()
        app.alerts["Brazil"].buttons["Ok"].tap()
        
    }
    
    
    
}


