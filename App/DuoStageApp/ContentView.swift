import SwiftUI

struct ContentView: View {
    @State private var promptIndex = 0
    @State private var phase: StagePhase = .setup
    @State private var hingeAngle = 90.0
    @State private var revealProgress = 0.0

    private let prompts = StagePrompt.launchSamples
    private let timeline = RevealTimeline()

    private var prompt: StagePrompt { prompts[promptIndex] }

    var body: some View {
        ZStack {
            LinearGradient(colors: [.black, Color(white: 0.12)], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()

            VStack(spacing: 24) {
                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("DUOSTAGE")
                            .font(.caption.weight(.bold))
                            .tracking(2)
                        Text(prompt.title)
                            .font(.title2.bold())
                    }
                    Spacer()
                    Text(phase.rawValue.uppercased())
                        .font(.caption.monospaced().weight(.semibold))
                        .padding(.horizontal, 10)
                        .padding(.vertical, 6)
                        .background(.white.opacity(0.12), in: Capsule())
                }

                HStack(spacing: 2) {
                    panel(label: "A", text: prompt.sideA)
                    panel(label: "B", text: prompt.sideB)
                }
                .background(.black)
                .clipShape(RoundedRectangle(cornerRadius: 28, style: .continuous))
                .overlay {
                    Rectangle()
                        .fill(.white.opacity(0.16))
                        .frame(width: 2)
                        .overlay {
                            Text("FOLD")
                                .font(.caption2.bold())
                                .rotationEffect(.degrees(-90))
                                .padding(6)
                                .background(.black, in: Capsule())
                        }
                }
                .aspectRatio(9.0 / 12.0, contentMode: .fit)

                controls
            }
            .padding()
        }
        .preferredColorScheme(.dark)
    }

    private func panel(label: String, text: String) -> some View {
        ZStack {
            LinearGradient(
                colors: [.white.opacity(0.11), .white.opacity(0.03)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )

            VStack(spacing: 18) {
                Text(label)
                    .font(.caption.bold())
                    .padding(8)
                    .background(.white.opacity(0.12), in: Circle())

                Text(text)
                    .font(.title3.bold())
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .blur(radius: phase == .revealed ? 0 : max(0, 12 * (1 - revealProgress)))
                    .opacity(phase == .revealed ? 1 : max(0.12, revealProgress))
            }
        }
    }

    @ViewBuilder
    private var controls: some View {
        switch phase {
        case .setup:
            Button("Start stage") {
                phase = .secret
                hingeAngle = 90
                revealProgress = 0
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)

        case .secret:
            VStack(spacing: 12) {
                Text("Put the phone between both players. Keep each side secret.")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
                Button("3 · 2 · 1") {
                    phase = .recording
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
            }

        case .countdown:
            Text("GET READY").font(.title.bold())

        case .recording, .revealing:
            VStack(spacing: 8) {
                HStack {
                    Text("HINGE").font(.caption.bold())
                    Spacer()
                    Text("\(Int(hingeAngle))°").font(.caption.monospacedDigit())
                }
                Slider(
                    value: Binding(
                        get: { hingeAngle },
                        set: { newValue in
                            hingeAngle = newValue
                            revealProgress = timeline.curtainProgress(for: newValue)
                            if phase == .recording, revealProgress > 0.01 { phase = .revealing }
                            if timeline.shouldReveal(for: newValue) {
                                phase = .revealed
                                revealProgress = 1
                            }
                        }
                    ),
                    in: 90...180,
                    step: 1
                )
                Text("Simulator fallback — replace with live Duo hinge angle.")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

        case .revealed:
            VStack(spacing: 10) {
                if let label = prompt.revealLabel {
                    Text(label.uppercased()).font(.headline)
                }
                Text("100%").font(.system(size: 34, weight: .black, design: .rounded))
                HStack {
                    Button("Again") { phase = .setup }
                        .buttonStyle(.bordered)
                    Button("Export 9:16") { phase = .export }
                        .buttonStyle(.borderedProminent)
                }
            }

        case .export:
            VStack(spacing: 10) {
                ProgressView("Export compositor is the next P0 implementation.")
                Button("Back") { phase = .revealed }
            }
        }
    }
}
