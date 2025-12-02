import Foundation
import Capacitor
import AVFoundation

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(AudioTogglePlugin)
public class AudioTogglePlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "AudioTogglePlugin"
    public let jsName = "AudioToggle"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "setAudioMode", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = AudioToggle()

    @objc func setAudioMode(_ call: CAPPluginCall) {
        guard let mode = call.getString("mode") else {
            call.reject("mode is required")
            return
        }

        do {
            try implementation.setAudioMode(mode: mode)
            call.resolve()
        } catch let error {
            call.reject("Failed to set audio mode: \(error.localizedDescription)")
        }
    }
}
