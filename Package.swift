// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftAnthropic",
    platforms: [
         .iOS(.v15),
         .macOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftAnthropic",
            targets: ["SwiftAnthropic"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-log.git",
            .upToNextMajor(from: Version(1, 0, 0))
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftAnthropic",
            dependencies: [
                .product(name: "Logging", package: "swift-log"),
            ]
        ),
        .testTarget(
            name: "SwiftAnthropicTests",
            dependencies: ["SwiftAnthropic"]
        ),
    ]
)
