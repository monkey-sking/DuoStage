import Foundation
import Testing
@testable import DuoStageCore

struct DuoStageCoreTests {
    @Test func revealTimelineClampsAndMaps() {
        let timeline = RevealTimeline(startAngle: 90, endAngle: 180)
        #expect(timeline.linearProgress(for: 60) == 0)
        #expect(timeline.linearProgress(for: 90) == 0)
        #expect(timeline.linearProgress(for: 135) == 0.5)
        #expect(timeline.curtainProgress(for: 135) == 0.5)
        #expect(timeline.linearProgress(for: 180) == 1)
        #expect(timeline.linearProgress(for: 220) == 1)
    }

    @Test func happyPath() throws {
        let prompt = StagePrompt(category: "Test", title: "Sync", sideA: "A", sideB: "B")
        var session = StageSession(prompt: prompt)

        try session.transition(to: .secret)
        try session.transition(to: .countdown)
        try session.transition(to: .recording)

        session.ingestHinge(.init(angleDegrees: 120, status: .partiallyOpen))
        #expect(session.phase == .revealing)
        #expect(session.revealProgress > 0)

        session.ingestHinge(.init(angleDegrees: 180, status: .fullyOpen))
        #expect(session.phase == .revealed)
        #expect(session.revealProgress == 1)

        try session.transition(to: .export)
    }

    @Test func cannotSkipRecordingSetup() {
        let prompt = StagePrompt(category: "Test", title: "Sync", sideA: "A", sideB: "B")
        var session = StageSession(prompt: prompt)

        #expect(throws: StageSessionError.self) {
            try session.transition(to: .recording)
        }
    }
}
