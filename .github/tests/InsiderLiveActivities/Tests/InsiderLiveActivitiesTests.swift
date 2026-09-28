import InsiderLiveActivities
import XCTest

public final class InsiderLiveActivitiesTests: XCTestCase {

    public func testModuleIsLoaded() throws {
        guard #available(iOS 16.1, *) else {
            throw XCTSkip("InsiderLiveActivities requires iOS 16.1")
        }
        XCTAssertEqual(String(reflecting: InsiderLiveActivityIdentifier.self), "InsiderLiveActivities.InsiderLiveActivityIdentifier")
    }
}
