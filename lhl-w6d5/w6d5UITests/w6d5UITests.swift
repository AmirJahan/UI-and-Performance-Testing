

import XCTest

class w6d5UITests: XCTestCase {
        
    override func setUp()
    {
        super.setUp()
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown()
    {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    

    func testExample()
    {
        let app = XCUIApplication()
        
        // Then -- onboarding screen 1 should be displayed
        XCTAssert(app.staticTexts["onboardingScreen1"].label == "Onboarding Screen 1",
                  "Expected to be displaying Onboarding Screen 1")
        sleep(5);
        
        // When -- swipe left from Onboarding Screen 1
        app.swipeLeft()
        
        // Then -- onboarding screen 2 should be displayed
        XCTAssert(app.staticTexts["onboardingScreen2"].label == "Onboarding Screen 2", "Expected to be displaying Onboarding Screen 2")
        
        // When -- swipe left from Onboarding Screen 2
        app.swipeLeft()
        
        // Then -- onboarding screen 3 should be displayed
        XCTAssert(app.staticTexts["onboardingScreen3"].label == "Onboarding Screen 3", "Expected to be displaying Onboarding Screen 3")
        
        // When -- swipe left from Onboarding Screen 3
        app.swipeLeft()
        
        // Then -- no more pages, onboarding screen 3 should still be displayed
        XCTAssert(app.staticTexts["onboardingScreen3"].label == "Onboarding Screen 3", "Expected to be displaying Onboarding Screen 3")
        
        // When -- swipe right from Onboarding Screen 3
        app.swipeRight()
        
        // Then -- onboarding screen 2 should be displayed
        XCTAssert(app.staticTexts["onboardingScreen2"].label == "Onboarding Screen 2", "Expected to be displaying Onboarding Screen 2")
        
        // When -- swipe right from Onboarding Screen 2
        app.swipeRight()
        
        // Then -- onboarding screen 1 should be displayed
        XCTAssert(app.staticTexts["onboardingScreen1"].label == "Onboarding Screen 1", "Expected to be displaying Onboarding Screen 1")
        
        // When -- swipe right from Onboarding Screen 1
        app.swipeRight()
        
        // Then -- no more pages, onboarding screen 1 should still be displayed
        XCTAssert(app.staticTexts["onboardingScreen1"].label == "Onboarding Screen 1", "Expected to be displaying Onboarding Screen 1")
        
        // When -- swipe right until we get to last onboarding screen
        app.swipeLeft()
        app.swipeLeft()
        
        // Then/When -- dismiss button should be displayed, tap it
        validateDismissButtonExistsAndTapIt(app)
        
        // Then -- main screen should be displayed
        XCTAssert(app.staticTexts["mainScreen"].label == "Main Screen", "Expected Main Screen to be displayed")
        
        
        sleep(2)
    }
    
    func validateDismissButtonExistsAndTapIt(_ app: XCUIApplication)
    {
        // Then -- dismiss button should be displayed
        XCTAssert(app.buttons["dismissButton"].exists, "Expected dismiss button to be displayed")
        
        // When -- tap on dismisss button on Onboarding Screen 3
        app.buttons["dismissButton"].tap()
    }
}
