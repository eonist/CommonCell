// swift-tools-version:5.6
import PackageDescription // Import the PackageDescription module

let package = Package( // Define a new package
    name: "CommonCell", // Set the name of the package
    platforms: [.iOS(.v15), .macOS(.v12)], // Set the supported platforms for the package
    products: [ // Define the products that the package provides
        .library( // Define a library product
            name: "CommonCell", // Set the name of the library product
            targets: ["CommonCell"]) // Set the targets that the library product includes
    ],
    dependencies: [], // Define the dependencies of the package
    targets: [ // Define the targets of the package
        .target( // Define a target
            name: "CommonCell", // Set the name of the target
            dependencies: []) // Set the dependencies of the target
    ]
)