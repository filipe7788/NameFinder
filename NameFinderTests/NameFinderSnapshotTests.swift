import XCTest
import SnapshotTesting
import ScannerFlow

@testable import NameFinder

final class NameFinderSnapshotTests: XCTestCase {

    var viewController: ScannerResultViewController!

    override func setUpWithError() throws {
        viewController = ScannerResultViewController(customView: ScannerResultView.make(), text: ["Filipe"])
    }

    func testScannerResultView_whenInitializedWithName_shouldMatchSnapshot() {
        assertSnapshot(
            matching: viewController,
            as: .image,
            file: #file,
            testName: #function,
            line: #line
        )
    }
}
