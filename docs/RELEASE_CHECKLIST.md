# DuoStage launch-readiness checklist

Target: be usable by the first retail iPhone Duo wave, not “feature complete.”

## Build / SDK
- [ ] Xcode 27.1+ Duo toolchain installed and pinned
- [ ] Duo Device Hub / simulator configuration documented
- [ ] bundle ID and signing team confirmed
- [ ] Release configuration archives cleanly
- [ ] minimum OS/device availability guards reviewed
- [ ] core CI green on `main`

## Hardware kill tests
- [ ] KT-01 inner + outer front MultiCam result recorded
- [ ] supported dual-camera formats documented
- [ ] hinge update behavior measured while recording
- [ ] CameraCaptureAccessory lifecycle verified
- [ ] 15-minute thermal/system-pressure capture test passed or fallback locked
- [ ] physical unfold timestamp aligns with rendered reveal

## Capture reliability
- [ ] camera permission granted/denied paths verified
- [ ] microphone permission granted/denied paths verified
- [ ] app backgrounding during recording handled
- [ ] interruptions never produce a silently corrupt “success” clip
- [ ] low-storage/export failure has a recoverable message

## Product loop
- [x] 30 curated launch prompts in app
- [x] category selection in prototype
- [x] 3-second countdown in prototype
- [ ] one 9:16 export template complete
- [ ] system share sheet complete
- [ ] stage completion / export / share events measurable

## App Store
- [ ] final name cleared; DuoStage codename revisited
- [ ] subtitle and description finalized
- [ ] keywords finalized
- [ ] privacy labels match actual collection/storage
- [ ] review notes explain Duo-specific behavior
- [ ] outer-display screenshots exported at current required size
- [ ] inner-display screenshots exported at current required size
- [ ] screenshot requirements rechecked in App Store Connect on submission day
- [ ] TestFlight external/internal path decided

## Launch media
- [ ] 15-second real-device hero clip
- [ ] couple clip
- [ ] friends clip
- [ ] creator/street clip
- [ ] press-ready screenshots
- [ ] one-line pitch frozen
- [ ] launch landing page published
- [ ] creator/media outreach list prepared

## Go / no-go rule
Ship the smallest reliable version if the core loop works. Do not delay launch for feed, accounts, AI prompts, cloud sync, subscriptions, a full editor or ordinary-iPhone parity.
