// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "ATmega2560",
    products: [
        .library(
            name: "ATmega2560",
            targets: ["ATmega2560"]),
    ],
    dependencies: [
    .package(url: "https://github.com/microswift-packages/hal-baseline", from: "2.0.0")
    ],
    targets: [
        .target(
            name: "ATmega2560",
            dependencies: [],
            path: ".",
            sources: ["main.swift"]),
    ]
)
