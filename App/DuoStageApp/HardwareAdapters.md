# Duo hardware adapters

The app currently compiles around simulated behavior. Add native adapters as thin bridges after the Duo SDK is available.

## Hinge adapter

Apple's published SwiftUI pattern:

```swift
.onHingeChange { _, context in
    if let hinge = context.hinge, hinge.status == .partiallyOpen {
        let angle = hinge.angle
    }
}
```

Translate native hinge data into the core `HingeSnapshot` model. Do not use hinge angle to make layout decisions; use layout/region APIs for layout.

## Camera capture accessory

Published shape:

```swift
CameraView(model: model)
    .sceneAccessory {
        CameraCaptureAccessory(isEnabled: $model.isEnabled) {
            SecretPromptView(model: model)
        }
        .onAvailabilityChange { newValue in
            model.isAvailable = newValue
        }
    }
```

The outer-side presentation must never be the source of truth. The system controls availability.

## MultiCam probe

The first real-device kill test must:

1. discover Duo-specific inner and outer front cameras;
2. configure both as inputs to one `AVCaptureMultiCamSession`;
3. verify `canAddInput`/`canAddOutput`;
4. sustain at least 1080p30 + audio;
5. log dropped frames, session cost and system pressure.

Discovering both cameras separately does **not** prove they can run together.
