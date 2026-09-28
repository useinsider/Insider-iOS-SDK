import InsiderMobile
import InsiderWebView
import XCTest

public final class InsiderWebViewTests: XCTestCase {

    public func testModuleIsLoaded() {
        XCTAssertTrue(Insider.responds(to: NSSelectorFromString("setupWebViewSDKOn:")))
    }
}
