# Apple Duo developer Q&A checklist

Use these questions at the earliest available iPhone Duo developer lab / camera Q&A. Record exact API names, availability annotations and device constraints in this file afterwards.

## Camera — launch blocker

1. Can `AVCaptureMultiCamSession` simultaneously capture `.builtInInnerUltraWideCamera` and `.builtInOuterUltraWideCamera` on iPhone Duo?
2. Which simultaneous `AVCaptureDevice.Format` combinations are supported for those two cameras?
3. Is 1080p30 + 1080p30 + microphone audio a supported sustained configuration?
4. Are MultiCam hardware cost / system pressure limits different while Duo is partially open?
5. Can both front cameras remain active while `CameraCaptureAccessory` presents supplementary camera UI on the other display?
6. Are there transition interruptions when moving between partially-open and fully-open states during capture?

## Hinge

7. What update cadence and latency should apps expect from `onHingeChange` / `UIHingeInteraction`?
8. Is hinge angle delivered continuously while an `AVCaptureSession` is recording?
9. What exact status/angle behavior occurs near fully-open and closed thresholds?
10. Is there guidance for synchronizing hinge samples with media timestamps?

## Scene accessories / dual display

11. Is `CameraCaptureAccessory` content interactive on Duo? If yes, what interaction classes are supported?
12. Under what conditions does accessory availability change during a live camera session?
13. Can the inner and outer presentations intentionally show different secret content without mirroring/accessibility leakage?
14. What is the recommended privacy/accessibility behavior for content that must remain hidden from the opposite participant?

## App Store

15. Are Duo-specific screenshots required or optional for a Duo-enhanced app?
16. Can screenshots show both inner and outer display experiences in one composed marketing image?
17. Are there review-note requirements for Duo-only or Duo-enhanced functionality?
18. Is there any App Store merchandising path for apps built specifically around new Duo capabilities?
