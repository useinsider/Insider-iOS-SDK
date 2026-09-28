import InsiderMobile
import XCTest

public final class InsiderMobileTests: XCTestCase {

    public func testModuleIsLoaded() {
        XCTAssertEqual(Bundle(for: Insider.self).bundleURL.lastPathComponent, "InsiderMobile.framework")
    }
}
