/*
 An playground by Cenny Davidsson inspired by Joe Masilotti
 http://masilotti.com/xctest-helpers/
*/
import XCTest

class test: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        app.launch()
    }
    
    func testWaitForButton() {
        let button = app.buttons["Button"]
        waitForElement(button, predicate: .Exsits)
    }
}

extension XCTestCase {
    
    enum Predicate: String {
        case Exsits = "exists == true"
        case Enabled = "enabled == true"
    }
    
    func waitForElement(element: XCUIElement, predicate: Predicate, timeout: NSTimeInterval = 5) {
        let existsPredicate = NSPredicate(format: predicate.rawValue)
        expectationForPredicate(existsPredicate, evaluatedWithObject: element, handler: .None)
        waitForExpectationsWithTimeout(timeout, handler: .None)
    }
}
