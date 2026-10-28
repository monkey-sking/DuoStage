# Hardware adapter validation

The current prototype uses simulated inputs. No device-specific adapter is
validated by this repository.

Earlier drafts called API examples "published" without retaining a verified
source. Those examples have been removed. Names appearing in older planning
documents are assumptions, not confirmed SDK contracts.

Before adding a native adapter:

1. Retain the official API reference, SDK version and availability annotations.
2. Translate confirmed input data into the core `HingeSnapshot` model.
3. Test device availability and lifecycle changes.
4. Verify concurrent camera inputs/outputs, audio, dropped frames and pressure on
   actual hardware before claiming simultaneous capture.
5. Verify a real exported file before claiming video export.

Unit tests of simulated input do not establish hardware or SDK support.
