import InsiderMobileAdvancedNotification
import XCTest

public final class InsiderMobileAdvancedNotificationTests: XCTestCase {

    public func testModuleIsLoaded() {
        XCTAssertEqual(Bundle(for: InsiderPushNotification.self).bundleURL.lastPathComponent, "InsiderMobileAdvancedNotification.framework")
    }
}
