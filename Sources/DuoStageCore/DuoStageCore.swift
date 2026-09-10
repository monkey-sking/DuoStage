import Foundation

public struct StagePrompt: Identifiable, Codable, Equatable, Sendable {
    public let id: UUID
    public var category: String
    public var title: String
    public var sideA: String
    public var sideB: String
    public var revealLabel: String?

    public init(
        id: UUID = UUID(),
        category: String,
        title: String,
        sideA: String,
        sideB: String,
        revealLabel: String? = nil
    ) {
        self.id = id
        self.category = category
        self.title = title
        self.sideA = sideA
        self.sideB = sideB
        self.revealLabel = revealLabel
    }

    public static let launchSamples: [StagePrompt] = [
        .init(
            category: "Couple",
            title: "First impression",
            sideA: "What color was B wearing when you first met?",
            sideB: "What color was A wearing when you first met?",
            revealLabel: "Same memory?"
        ),
        .init(
            category: "Friends",
            title: "Late-night danger",
            sideA: "Who is most likely to text an ex at 2 AM?",
            sideB: "Who is most likely to text an ex at 2 AM?",
            revealLabel: "Expose them"
        ),
        .init(
            category: "Family",
            title: "Favorite food",
            sideA: "What is Mom's favorite food?",
            sideB: "What does your child think your favorite food is?",
            revealLabel: "Family sync"
        )
    ]
}

public enum StagePhase: String, Codable, Equatable, Sendable {
    case setup, secret, countdown, recording, revealing, revealed, export
}

public enum HingeStatus: String, Codable, Equatable, Sendable {
    case closed, partiallyOpen, fullyOpen, unavailable
}

public struct HingeSnapshot: Codable, Equatable, Sendable {
    public var angleDegrees: Double?
    public var status: HingeStatus

    public init(angleDegrees: Double?, status: HingeStatus) {
        self.angleDegrees = angleDegrees
        self.status = status
    }

    public static let unavailable = HingeSnapshot(angleDegrees: nil, status: .unavailable)
}

public struct RevealTimeline: Equatable, Sendable {
    public var startAngle: Double
    public var endAngle: Double

    public init(startAngle: Double = 90, endAngle: Double = 180) {
        precondition(endAngle > startAngle)
        self.startAngle = startAngle
        self.endAngle = endAngle
    }

    public func linearProgress(for angle: Double?) -> Double {
        guard let angle else { return 0 }
        return min(max((angle - startAngle) / (endAngle - startAngle), 0), 1)
    }

    public func curtainProgress(for angle: Double?) -> Double {
        let p = linearProgress(for: angle)
        return p * p * (3 - 2 * p)
    }

    public func shouldReveal(for angle: Double?, threshold: Double = 0.96) -> Bool {
        linearProgress(for: angle) >= threshold
    }
}

public enum StageSessionError: Error, Equatable {
    case invalidTransition(from: StagePhase, to: StagePhase)
}

public struct StageSession: Equatable, Sendable {
    public var prompt: StagePrompt
    public private(set) var phase: StagePhase
    public private(set) var revealProgress: Double
    public private(set) var startedAt: Date?
    public private(set) var revealedAt: Date?

    private let timeline: RevealTimeline

    public init(
        prompt: StagePrompt,
        phase: StagePhase = .setup,
        timeline: RevealTimeline = .init()
    ) {
        self.prompt = prompt
        self.phase = phase
        self.revealProgress = 0
        self.startedAt = nil
        self.revealedAt = nil
        self.timeline = timeline
    }

    public mutating func transition(to next: StagePhase, now: Date = .now) throws {
        let allowed: [StagePhase: Set<StagePhase>] = [
            .setup: [.secret],
            .secret: [.countdown],
            .countdown: [.recording],
            .recording: [.revealing],
            .revealing: [.revealed],
            .revealed: [.export, .setup],
            .export: [.setup]
        ]

        guard allowed[phase, default: []].contains(next) else {
            throw StageSessionError.invalidTransition(from: phase, to: next)
        }

        phase = next

        if next == .recording { startedAt = now }
        if next == .revealed {
            revealProgress = 1
            revealedAt = now
        }
        if next == .setup {
            revealProgress = 0
            startedAt = nil
            revealedAt = nil
        }
    }

    public mutating func ingestHinge(_ hinge: HingeSnapshot, now: Date = .now) {
        guard phase == .recording || phase == .revealing else { return }

        revealProgress = timeline.curtainProgress(for: hinge.angleDegrees)

        if phase == .recording, revealProgress > 0.01 {
            phase = .revealing
        }
        if phase == .revealing, timeline.shouldReveal(for: hinge.angleDegrees) {
            phase = .revealed
            revealProgress = 1
            revealedAt = now
        }
    }
}
