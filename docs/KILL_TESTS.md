# Hardware / SDK Kill Tests

## KT-01 — inner + outer front simultaneous capture

**Pass target:**

- both cameras run simultaneously
- 1080p30 minimum for both feeds
- microphone audio
- 15+ minutes sustained capture
- acceptable thermal/system-pressure behavior
- deterministic timestamps

**Test:**

1. discover Duo-specific inner and outer front camera devices;
2. create `AVCaptureMultiCamSession`;
3. add both inputs and independent outputs;
4. commit configuration and record 15 minutes;
5. log dropped frames, hardware cost and system pressure;
6. repeat half-open and fully-open poses.

**Fallback order if failed:** lower one feed to 720p30 → one primary video plus lower-rate secondary reaction capture → reaction snapshots as last resort.

Never claim dual-video support until verified on real hardware.

## KT-02 — hinge quality

Measure update frequency, jitter, latency and state transitions while recording. Feed angle samples into `RevealTimeline`.

## KT-03 — CameraCaptureAccessory lifecycle

Validate availability, close/open transitions, interruptions, content persistence and whether interaction is possible. P0 assumes **no required complex interaction** on the accessory.

## KT-04 — export synchronization

Persist camera timestamps and hinge timestamps together. Ensure the rendered curtain aligns with the physical unfold.

## KT-05 — App Store submission

Confirm Duo-specific screenshot acceptance, privacy strings, metadata behavior and review notes before RC.
