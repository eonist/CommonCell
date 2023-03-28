// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "CommonCell",
    platforms: [.iOS(.v15), .macOS(.v12)],
    products: [
        .library(
            name: "CommonCell",
            targets: ["CommonCell"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CommonCell",
            dependencies: [])
    ]
)
