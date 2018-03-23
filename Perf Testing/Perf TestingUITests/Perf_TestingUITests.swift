
import XCTest

class Perf_TestingUITests: XCTestCase {
    
    override func setUp()
    {
        super.setUp()
        
        continueAfterFailure = false
    }
    
    override func tearDown()
    {
        super.tearDown()
    }
    
    
    func testPerformance ()
    {
        self.measure
            {
                
                // launch to close
                XCUIApplication().launch()
                XCUIApplication().buttons["justDoItId"].tap()
        }
    }
    
    
    
    
    
    
    
    
    func testPerformance_two ()
    {
        self.measureMetrics([XCTPerformanceMetric.wallClockTime], automaticallyStartMeasuring: false)
        {
            XCUIApplication().launch()
            
            
            startMeasuring()
            
            XCUIApplication().buttons["justDoItId"].tap()
            // waiting for idle
            stopMeasuring()
        }
    }
    
}
