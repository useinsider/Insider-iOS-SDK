import InsiderGeofence
import XCTest

public final class InsiderGeofenceTests: XCTestCase {

    public func testModuleIsLoaded() {
        XCTAssertEqual(Bundle(for: InsiderGeofence.self).bundleURL.lastPathComponent, "InsiderGeofence.framework")
    }
}
