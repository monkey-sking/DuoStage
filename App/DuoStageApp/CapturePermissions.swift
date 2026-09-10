import AVFoundation
import SwiftUI
import UIKit

@MainActor
final class CapturePermissions: ObservableObject {
    @Published private(set) var cameraStatus: AVAuthorizationStatus
    @Published private(set) var microphoneStatus: AVAuthorizationStatus

    init() {
        cameraStatus = AVCaptureDevice.authorizationStatus(for: .video)
        microphoneStatus = AVCaptureDevice.authorizationStatus(for: .audio)
    }

    var isReady: Bool {
        cameraStatus == .authorized && microphoneStatus == .authorized
    }

    var isDenied: Bool {
        cameraStatus == .denied || cameraStatus == .restricted ||
        microphoneStatus == .denied || microphoneStatus == .restricted
    }

    func refresh() {
        cameraStatus = AVCaptureDevice.authorizationStatus(for: .video)
        microphoneStatus = AVCaptureDevice.authorizationStatus(for: .audio)
    }

    @discardableResult
    func requestRequiredAccess() async -> Bool {
        if cameraStatus == .notDetermined {
            _ = await AVCaptureDevice.requestAccess(for: .video)
        }
        if microphoneStatus == .notDetermined {
            _ = await AVCaptureDevice.requestAccess(for: .audio)
        }
        refresh()
        return isReady
    }

    func openSettings() {
        guard let url = URL(string: UIApplication.openSettingsURLString) else { return }
        UIApplication.shared.open(url)
    }
}
