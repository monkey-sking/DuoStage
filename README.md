# DuoStage

<!-- badges:start -->
[![Stars](https://img.shields.io/github/stars/monkey-sking/DuoStage?style=flat-square)](https://github.com/monkey-sking/DuoStage/stargazers) [![Forks](https://img.shields.io/github/forks/monkey-sking/DuoStage?style=flat-square)](https://github.com/monkey-sking/DuoStage/network/members) [![Last commit](https://img.shields.io/github/last-commit/monkey-sking/DuoStage?style=flat-square)](https://github.com/monkey-sking/DuoStage/commits/main) [![License](https://img.shields.io/github/license/monkey-sking/DuoStage?style=flat-square)](https://github.com/monkey-sking/DuoStage/blob/main/LICENSE) [![Language](https://img.shields.io/github/languages/top/monkey-sking/DuoStage?style=flat-square)](https://github.com/monkey-sking/DuoStage/search?l=) [![Tests](https://github.com/monkey-sking/DuoStage/actions/workflows/core-ci.yml/badge.svg?branch=main)](https://github.com/monkey-sking/DuoStage/actions/workflows/core-ci.yml)
<!-- badges:end -->

A simulated two-person reveal interaction prototype in Swift.

This is a concept, not a released app. It does not establish the existence or
availability of any device, SDK or hardware API. Older planning documents use
"iPhone Duo" as a target assumption; those hardware details remain unverified.

**Core loop:** Secret → Commit → Reaction → Unfold → Reveal → Export

The intended interaction gives two people different secret prompts and uses a
simulated opening gesture to drive the reveal. Camera capture, hardware input
and actual video export remain separate integration and validation work.

## Status

- **Implemented:** pure Swift session state machine, simulated hinge-to-reveal mapping, prompt model, tests.
- **Prepared:** SwiftUI prototype shell and draft content/product documents.
- **Unverified:** hardware API availability, native camera integration, simultaneous camera capture and video export on a real device.

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

The app uses simulated hinge input. Native adapters require independently verified
SDK documentation and device evidence before implementation.

## Structure

- `Sources/DuoStageCore` — hardware-independent product logic
- `Tests/DuoStageCoreTests` — repeatable tests
- `App/DuoStageApp` — SwiftUI prototype
- `docs/` — planning drafts and validation proposals, not release evidence
- `web/` — concept-page seed

`DuoStage` is a working codename; final App Store naming should be revisited before submission.
