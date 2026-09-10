# DuoStage

A social camera prototype built for the iPhone Duo launch window.

**Core loop:** Secret → Commit → Reaction → Unfold → Reveal → Export

Two people stand on opposite sides of a partially folded iPhone Duo. Each side receives a different secret prompt. The physical unfolding motion drives the reveal and the app exports a short 9:16 reaction video.

## Status

- **Verified now:** pure Swift session state machine, hinge-to-reveal mapping, prompt model, tests.
- **Prepared:** SwiftUI prototype shell, simulated hinge flow, launch/content/store assets.
- **Not yet device-verified:** native `onHingeChange`, `CameraCaptureAccessory`, and simultaneous inner+outer front-camera capture.

## Run core tests

```bash
swift test
```

## Generate the iOS project

`App/project.yml` is an XcodeGen spec.

```bash
cd App
xcodegen generate
open DuoStage.xcodeproj
```

Until the Duo SDK is available, the app intentionally uses a simulated hinge input.

## Structure

- `Sources/DuoStageCore` — hardware-independent product logic
- `Tests/DuoStageCoreTests` — repeatable tests
- `App/DuoStageApp` — SwiftUI prototype
- `docs/` — launch plan, kill tests, product contract, scope, content
- `web/` — prelaunch landing-page seed

`DuoStage` is a working codename; final App Store naming should be revisited before submission.
