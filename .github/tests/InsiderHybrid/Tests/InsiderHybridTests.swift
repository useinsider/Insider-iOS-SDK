import InsiderHybrid
import XCTest

public final class InsiderHybridTests: XCTestCase {

    public func testModuleIsLoaded() {
        XCTAssertEqual(Bundle(for: InsiderHybrid.self).bundleURL.lastPathComponent, "InsiderHybrid.framework")
    }
}
