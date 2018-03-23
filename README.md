# UI-and-Performance-Testingecho 
Hello everyone, 

######  This morning we covered a lot of grounds in UI testing, Performance testing and a brief app pitching :). Here are some notes from class

- You can test prefix to introduce new test functions.
- XCTestCase uses a proxy to the application to interact with the app under test
- XCUIApplication is the proxy of the app
- UI elements in the app have corresponding XCUIElement objects in proxy
- XCUIElement objects allow your test script to interact with these objects. Interactions include calling methods such as:
    tap()
    doubleTap()
    twoFingerTap()
    swipeDown()….
        
App proxy object itself is a subclass of XCUIElement!

XCUIElement conforms to the protocol XCUIElementAttributes. This protocol has a number of properties:

    identifier - The element's accessibility identifier
    elementType - The element's type
    value - The raw value associated with the element
    placeholderValue - The value that is displayed when the element has no value
    title - The title attribute of the element
    label - The label attribute of the element
    hasFocus - Whether or not the element has UI focus
    isEnabled - Whether or not the element is enabled
    isSelected - Whether or not the element is selected etc.

XCUIElement also conforms to the XCUIElementTypeQueryProvider. This allows your test script to query descendants of the XCUIElement that match certain criteria. XCUIElementTypeQueryProvider takes a string and returns a descendant element whose identifier attribute matches the supplied string

Link to our today's apps are in:
