// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "DuoStage",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [.library(name: "DuoStageCore", targets: ["DuoStageCore"])],
    targets: [
        .target(name: "DuoStageCore"),
        .testTarget(name: "DuoStageCoreTests", dependencies: ["DuoStageCore"])
    ]
)
