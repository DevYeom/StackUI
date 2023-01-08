// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StackUI",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_11),
        .tvOS(.v11),
    ],
    products: [
        .library(name: "StackUI", targets: ["StackUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.0")),
    ],
    targets: [
        .target(
            name: "StackUI",
            dependencies: [
                .product(name: "SnapKit", package: "SnapKit"),
            ]
        ),
        .testTarget(
            name: "StackUITests",
            dependencies: ["StackUI"]
        ),
    ]
)
