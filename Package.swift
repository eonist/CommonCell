// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "CommonCell",
    platforms: [.iOS(.v12), .macOS(.v10_13)], // update to ios15 and update swift v to 5.6?
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
