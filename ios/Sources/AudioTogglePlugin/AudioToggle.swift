import AVFoundation
import Foundation

enum AudioToggleError: Error, LocalizedError {
    case unsupportedMode

    public var errorDescription: String? {
        switch self {
        case .unsupportedMode:
            return "Unsupported audio mode"
        }
    }
}

@objc public class AudioToggle: NSObject {
    @objc public func setAudioMode(mode: String) throws {
        let session = AVAudioSession.sharedInstance()

        switch mode {
        case "speaker":
            try session.setCategory(.playback, mode: .default)
        case "earpiece":
            try session.setCategory(.playAndRecord, mode: .voiceChat)
        case "normal":
            try session.setCategory(.ambient, mode: .default)
        default:
            throw AudioToggleError.unsupportedMode
        }

        try session.setActive(true)
    }
}
