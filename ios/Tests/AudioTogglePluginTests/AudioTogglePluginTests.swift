import XCTest
@testable import AudioTogglePlugin

class AudioToggleTests: XCTestCase {
    func testUnsupportedModeThrows() {
        let implementation = AudioToggle()
        XCTAssertThrowsError(try implementation.setAudioMode(mode: "unknown"))
    }
}
