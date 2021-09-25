// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "CommonCell",
    platforms: [.iOS(.v12), .macOS(.v10_13)],
    products: [
        .library(
            name: "CommonCell",
            targets: ["CommonCell"])
    ],
    dependencies: [
        /*.package(url: "https://github.com/eonist/ReusableCell.git", .branch("master"))*/
    ],
    targets: [
        .target(
            name: "CommonCell",
            dependencies: [/*"ReusableCell"*/])
    ]
)
